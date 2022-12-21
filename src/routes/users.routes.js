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
  '/signup',
  userModelValidation,
  userSignUpEmailValidation,
  postUserSignUp
);

router.post('/signin', signInModelValidation, signInValidation, postUserSignIn);

export default router;
