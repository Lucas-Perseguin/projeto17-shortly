import { Router } from 'express';
import {
  accesShortenedUrl,
  deleteUrl,
  getUrlById,
  postUrl,
} from '../controllers/urls.controller.js';
import checkShortenedUrlExistence from '../middlewares/checkShortenedUrlExistence.middleware.js';
import jwtValidation from '../middlewares/jwtValidation.middleware.js';
import validateShortenedUrl from '../middlewares/validateShortenedUrl.middlware.js';
import validateUrlToDeleteBelonging from '../middlewares/validateUrlToDeleteBelonging.middleware.js';

const router = Router();

router.post('/urls/shorten', jwtValidation, postUrl);
router.get('/urls/:id', checkShortenedUrlExistence, getUrlById);
router.get('/urls/open/:shortUrl', validateShortenedUrl, accesShortenedUrl);
router.delete(
  '/urls/:id',
  jwtValidation,
  checkShortenedUrlExistence,
  validateUrlToDeleteBelonging,
  deleteUrl
);

export default router;
