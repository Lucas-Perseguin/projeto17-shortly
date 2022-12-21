import express from 'express';
import cors from 'cors';
import dotenv from 'dotenv';

import usersRouter from './routes/users.routes.js';
import urlsRouter from './routes/urls.routes.js';
import rankingRouter from './routes/ranking.route.js';

dotenv.config();
const app = express();
app.use(express.json());
app.use(cors());

app.use(usersRouter);
app.use(urlsRouter);
app.use(rankingRouter);

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
  console.log(`Server runnig in port ${PORT}`);
});
