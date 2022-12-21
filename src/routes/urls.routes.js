import { Router } from 'express';
import { getUrlById, postUrl } from '../controllers/urls.controller.js';
import checkShortenedUrlExistence from '../middlewares/checkShortenedUrlExistence.middleware.js';
import jwtValidation from '../middlewares/jwtValidation.middleware.js';

const router = Router();

router.post('/urls/shorten', jwtValidation, postUrl);
router.get('/urls/:id', checkShortenedUrlExistence, getUrlById);

export default router;
