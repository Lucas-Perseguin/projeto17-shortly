import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';
import dotenv from 'dotenv';
import connection from '../database.js';

dotenv.config();

export async function postUserSignUp(req, res) {
  const { email, name, password, confirmPassword } = req.body;
  if (password !== confirmPassword) {
    return res.sendStatus(400);
  }
  try {
    const hashPassword = bcrypt.hashSync(password, 12);
    await connection.query(
      'INSERT INTO users (name, email, password) VALUES ($1, $2, $3);',
      [name, email, hashPassword]
    );
    res.sendStatus(201);
  } catch (err) {
    res.sendStatus(500);
  }
}

export async function postUserSignIn(req, res) {
  const { id } = res.locals.user;
  try {
    const token = jwt.sign({ id: id }, process.env.SECRET_JWT, {
      expiresIn: 86400,
    });
    res.status(200).send({ token });
  } catch (err) {
    res.sendStatus(500);
  }
}

export async function getUserById(req, res) {
  const { userId } = res.locals;
  try {
    const userData = await connection.query(
      'SELECT users.id, users.name, SUM(urls."visitsCount") AS "visistsCount", (SELECT array_to_json(array_agg(u)) FROM (SELECT * FROM urls) u ) AS "shortenedUrls" FROM users JOIN urls ON users.id = urls."userId" WHERE users.id = $1 GROUP BY users.id;',
      [userId]
    );
    res.send(userData.rows[0]);
  } catch (err) {
    res.sendStatus(500);
  }
}
