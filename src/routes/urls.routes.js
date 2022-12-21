import { Router } from 'express';
import {
  accesShortenedUrl,
  getUrlById,
  postUrl,
} from '../controllers/urls.controller.js';
import checkShortenedUrlExistence from '../middlewares/checkShortenedUrlExistence.middleware.js';
import jwtValidation from '../middlewares/jwtValidation.middleware.js';
import validateShortenedUrl from '../middlewares/validateShortenedUrl.middlware.js';

const router = Router();

router.post('/urls/shorten', jwtValidation, postUrl);
router.get('/urls/:id', checkShortenedUrlExistence, getUrlById);
router.get('/urls/open/:shortUrl', validateShortenedUrl, accesShortenedUrl);

export default router;
