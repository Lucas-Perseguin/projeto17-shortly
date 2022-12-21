import { Router } from 'express';
import { postUrl } from '../controllers/urls.controller.js';
import jwtValidation from '../middlewares/jwtValidation.middleware.js';

const router = Router();

router.post('urls/shorten', jwtValidation, postUrl);

export default router;
