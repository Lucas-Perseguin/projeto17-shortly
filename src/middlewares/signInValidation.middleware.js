import bcrypt from 'bcrypt';
import connection from '../database.js';

export default async function signInValidation(req, res, next) {
  const { email, password } = req.body;

  try {
    const userFound = await connection.query(
      'SELECT * FROM users WHERE email = $1;',
      [email]
    );

    if (
      !userFound.rowCount ||
      !bcrypt.compareSync(password, userFound.rows[0].password)
    ) {
      return res.sendStatus(401);
    }

    res.locals.user = userFound.rows;

    next();
  } catch (error) {
    console.log(error);
    return res.sendStatus(500);
  }
}
