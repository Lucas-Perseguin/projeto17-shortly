import connection from '../database.js';

export default async function validateShortenedUrl(req, res, next) {
  const { shortUrl } = req.params;
  try {
    const urlFound = await connection.query(
      'SELECT * FROM urls WHERE "shortUrl" = $1;',
      [shortUrl]
    );
    if (!urlFound.rowCount) return res.sendStatus(404);
    res.locals.urlObj = urlFound.rows[0];
    next();
  } catch (err) {
    console.log(err);
    res.sendStatus(500);
  }
}
