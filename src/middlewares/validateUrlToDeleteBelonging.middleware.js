import connection from '../database.js';

export default async function validateUrlToDeleteBelonging(req, res, next) {
  const { url, userId } = res.locals;
  try {
    if (url.userId !== userId) return res.sendStatus(401);
    next();
  } catch (err) {
    res.sendStatus(500);
  }
}
