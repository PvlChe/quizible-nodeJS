const express = require('express');
const router = express.Router();
const quizController = require('../controllers/quiz');

router.post('/', quizController.postQuiz);
router.get('/', quizController.getQuizByQuizcode);
router.get('/:id', quizController.getQuizById);

module.exports = router;
