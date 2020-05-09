const express = require('express');
const router = express.Router();
const questionAnswerController = require('../controllers/question-answer');

router.post('/', questionAnswerController.postQuestionAnswer);
router.get('/:quizId', questionAnswerController.getQuestionAnswersByQuizId);

module.exports = router;
