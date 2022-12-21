import connection from '../database.js';

export async function getRanking(req, res) {
  try {
    const ranking = await connection.query(
      'SELECT array_to_json(array_agg(u)) FROM (SELECT users.id, users.name, COUNT(urls.id) AS "linksCount", SUM(urls."visitsCount") AS "visitsCount" FROM users JOIN urls ON urls."userId" = users.id GROUP BY users.id ORDER BY "visitsCount" DESC LIMIT 10) u;'
    );
    res.send(ranking);
  } catch (err) {
    res.sendStatus(500);
  }
}
