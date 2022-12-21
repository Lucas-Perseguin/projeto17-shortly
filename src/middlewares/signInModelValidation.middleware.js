import { signInModel } from '../models/signIn.model.js';

export default function signInModelValidation(req, res, next) {
  const { error } = signInModel.validate(req.body, { abortEarly: false });

  if (error) {
    const errors = error.details.map((detail) => detail.message);
    return res.status(422).send(errors);
  }

  next();
}
