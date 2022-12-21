import { nanoid } from 'nanoid';
import connection from '../database';

export async function postUrl(req, res) {
  const { url } = req.body;
  const { userId } = res.locals;
  if (!url) return res.sendStatus(422);
  const shortUrl = nanoid();
  try {
    await connection.query(
      'INSERT INTO urls ("userId", url, "shortUrl") VALUES ($1, $2, $3);',
      [userId, url, shortUrl]
    );
    res.status(201).send({ shortUrl });
  } catch (err) {
    res.sendStatus(500);
  }
}

export async function getUrlById(req, res) {
  return res.status(200).send(res.locals);
}

export async function accesShortenedUrl(req, res) {
  const { urlObj } = res.locals;
  try {
    await connection.query(
      'UPDATE urls SET "visitsCount" = "visitsCount" + 1 WHERE id = $1;',
      [urlObj.id]
    );
    return res.redirect(`${urlObj.url}`);
  } catch (err) {
    res.sendStatus(500);
  }
}

export async function deleteUrl(req, res) {
  const { url } = res.locals;
  try {
    await connection.query('DELETE FROM urls WHERE id = $1', [url.id]);
    res.sendStatus(204);
  } catch (err) {
    res.sendStatus(500);
  }
}
