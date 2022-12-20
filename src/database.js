import pkg from 'pg';
import dotenv from 'dotenv';

dotenv.config();

const { Pool } = pkg;

const connection = new Pool({
  host: 'localhost',
  port: 5432,
  user: process.env.USER,
  password: process.env.PASSWORD,
  database: 'shortly',
});

export default connection;
