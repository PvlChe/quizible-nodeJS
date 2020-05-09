const QuestionAnswer = require('../models/question-answer');
const Question = require('../models/question');

exports.postQuestionAnswer = (req, res, next) => {
    const quizId = req.body.quizId;
    const questionId = req.body.questionId;
    const answer = req.body.answer;
    const right = req.body.right;
    let tempQuestion;
    Question.findByPk(questionId)
        .then(question => {
            if (!question) {
                console.log('no question founded!');
            }
            tempQuestion = question;
            return  QuestionAnswer.create({
                quizId: quizId,
                answer: answer,
                right: right,
                questionId: tempQuestion.id
            })
        }).then(questionAnswer => {
            console.log('questionAnswer created', questionAnswer);
            questionAnswer.setQuestion(tempQuestion);
            res.send(questionAnswer);
            res.status(201);
            next();
        }).catch(err => {
            console.log(err);
            res.end();
            next();
        });
};

exports.getQuestionAnswersByQuizId = (req, res, next) => {
    const quizId = req.params.quizId;
    QuestionAnswer.findAll({
        where: {
            quizId: quizId
        },
        include: [
            {
                model: Question
            }
        ]
    }).then(result => {
        console.log('QuestionAnswers for quizId: ', quizId, result);
        res.send(result);
        res.status(200);
        next();
    }).catch(err => {
        console.log(err);
        res.end();
        next();
    });
};