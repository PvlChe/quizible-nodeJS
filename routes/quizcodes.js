const express = require('express');
const router = express.Router();
const quizcodeController = require('../controllers/quizcode');

router.post('/', quizcodeController.postQuizcode);
//router.get('/', quizcodeController.getQuizcode);

module.exports = router;
