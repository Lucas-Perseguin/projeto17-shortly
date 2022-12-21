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
    res.status(201).send({ token });
  } catch (err) {
    res.sendStatus(500);
  }
}
