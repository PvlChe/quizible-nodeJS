const Quiz = require('../models/quiz');
const Quizcode = require('../models/quizcode');
const Question = require('../models/question');
const sequelize = require('../util/db');


exports.postQuiz = (req, res, next) => {
    console.log(req.body);
    const playerAge = req.body.playerAge;
    const playerPlz = req.body.playerPlz;
    const code = req.body.code;
    const complexities = req.body.complexities;
    const categories = req.body.categories;
    let tempQuiz;
    sequelize.transaction(createQuiz => {
        return Quiz.create({
            playerAge: playerAge,
            playerPlz: playerPlz
        }, {transaction: createQuiz})
        .then(quiz => {
            tempQuiz = quiz;
            return Quizcode.findOne({
                where: {code: code}
            }, {transaction: createQuiz});
        })
        .then(quizcode => {
            quizcode.played = true;
            return quizcode.save({transaction: createQuiz});
        })
        .then(result => {
            tempQuiz.setQuizcode(result);
            tempQuiz.userId = result.userId;
            return tempQuiz.save({transaction: createQuiz});
        })
        .then(quiz => {
            return Question.findAll({
                where: {
                    complexity: complexities,
                    categoryId: categories
                }
            }, {transaction: createQuiz});
        })
        .then( questions => {
            const questionList = [];
            for (let i = 0; i < 5; i++) {
                questionList.push(questions.splice(Math.random()*(questions.length - 1), 1)[0].dataValues);
            }
            res.status(201).json({quizId: tempQuiz.id, questions: questionList});
            return questions;
        })
    }).catch(err => {
        console.log(err);
        res.end();
        next();
    })
};

exports.getQuizByQuizcode = (req, res, next) => {
    const quizcode = req.body.quizcode;

    Quizcode.findOne({
        where: {
            code: quizcode
        }
    })
    .then(quizcode => {
        return Quiz.findOne({
            where: {
                quizcodeId: quizcode.id
            }
        });
    })
    .then( quiz => {
        res.send(quiz);
        res.status(200);
        next();
    })
    .catch(err => {
        console.log(err);
        res.end();
        next();
    });
};

exports.getQuizById = (req, res, next) => {
    const quizId = req.params.id;
    console.log(quizId);
    Quiz.findByPk(quizId).then(
        quiz => {
            console.log('get quiz result', quiz);
            res.status(201);
            res.json(quiz.dataValues);
        }
    ).catch(err => {
        console.log(err);
        res.end();
        next();
    })
};
