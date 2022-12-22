import connection from '../database.js';

export async function getRanking(req, res) {
  try {
    const ranking = await connection.query(
      'SELECT array_to_json(array_agg(u)) FROM (SELECT users.id, users.name, COUNT(urls.id) AS "linksCount", COALESCE(SUM(urls."visitsCount"), 0) AS "visitsCount" FROM users LEFT JOIN urls ON urls."userId" = users.id GROUP BY users.id ORDER BY "visitsCount" DESC LIMIT 10) u;'
    );
    res.send(ranking.rows[0].array_to_json);
  } catch (err) {
    res.sendStatus(500);
  }
}
