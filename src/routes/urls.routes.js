import { Router } from 'express';
import jwtValidation from '../middlewares/jwtValidation.middleware.js';

const router = Router();

router.post('urls/shorten', jwtValidation);

export default router;
