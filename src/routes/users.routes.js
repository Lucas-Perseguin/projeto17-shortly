import { Router } from 'express';

import {
  postUserSignUp,
  postUserSignIn,
  getIsToken,
  getUserById,
} from '../controllers/users.controller.js';
import userModelValidation from '../middlewares/userModelValidation.middleware.js';
import userSignUpEmailValidation from '../middlewares/userSignUpEmailValidation.middleware.js';
import signInModelValidation from '../middlewares/signInModelValidation.middleware.js';
import signInValidation from '../middlewares/signInValidation.middleware.js';
import jwtValidation from '../middlewares/jwtValidation.middleware.js';

const router = Router();

router.post(
  '/sign-up',
  userModelValidation,
  userSignUpEmailValidation,
  postUserSignUp
);

router.post(
  '/sign-in',
  signInModelValidation,
  signInValidation,
  postUserSignIn
);

router.get('/user', jwtValidation, getUserById);

router.get('/token', jwtValidation, getIsToken);

export default router;