import connection from '../database.js';

export default async function checkShortenedUrlExistence(req, res, next) {
  const { id } = req.params;
  if (!id) return res.sendStatus(422);
  try {
    const urlFound = await connection.query(
      'SELECT * FROM urls WHERE id = $1;',
      [id]
    );
    if (!urlFound.rowCount) return res.sendStatus(404);
    res.locals.url = urlFound.rows[0];
    next();
  } catch (err) {
    res.sendStatus(500);
  }
}
