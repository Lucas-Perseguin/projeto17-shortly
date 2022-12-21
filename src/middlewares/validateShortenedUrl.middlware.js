import connection from '../database.js';

export default async function validateShortenedUrl(req, res, next) {
  const { shortUrl } = req.params;
  try {
    const urlFound = await connection.query(
      'SELECT * FROM urls WHERE "shortUtl" = $1;',
      [shortUrl]
    );
    if (!urlFound.rowCount) return res.sendStatus(404);
    res.locals.urlObj = urlFound.rows;
    next();
  } catch (err) {
    res.sendStatus(500);
  }
}
