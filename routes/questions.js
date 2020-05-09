const express = require('express');
const router = express.Router();
const questionController = require('../controllers/question');

router.post('/', questionController.postQuestion);
router.get('/', questionController.getFiveQuestionsByCategoryAndComplexity);

module.exports = router;
