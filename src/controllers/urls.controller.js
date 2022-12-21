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
  const { id } = res.locals.url;
  try {
    await connection.query(
      'UPDATE urls SET "visitsCount" = "visitsCount" + 1 WHERE id = $1;',
      [id]
    );
    return res.status(200).send(res.locals);
  } catch (err) {
    res.sendStatus(500);
  }
}
