import connection from '../database.js';

export default async function userSignUpEmailValidation(req, res, next) {
  const { email } = req.body;
  try {
    const userFound = await connection.query(
      'SELECT email FROM users WHERE email = $1;',
      [email]
    );

    if (userFound.rowCount) {
      return res.sendStatus(409);
    }

    next();
  } catch (error) {
    return res.sendStatus(500);
  }
}
