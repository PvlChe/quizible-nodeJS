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
    let canceled = false;
    let tempQuiz;
    let tempQuizcode;
    sequelize.transaction(createQuiz => {
        return Quizcode.findOne({
            where: {code: code}
        }, {transaction: createQuiz})
        .then(quizcode => {
            if (quizcode.played) {
                // redirect if quizcode was already played
/*                Quiz.findOne({
                    where: {quizcodeId: quizcode.id}
                }).then( quiz => {
                    res.status(200).json({played: true, quizId: quiz.id});
                });*/
            res.status(202).json({played: true});
            canceled = true;
            } else if (quizcode.code === 'test-code') {
                return quizcode.save({transaction: createQuiz});
            } else {
                quizcode.played = true;
                return quizcode.save({transaction: createQuiz});
            }
        })
        .then(quizcode => {
            if (canceled) return;
            tempQuizcode = quizcode;
            return Quiz.create({
                playerAge: playerAge,
                playerPlz: playerPlz
            }, {transaction: createQuiz})
        })
        .then(quiz => {
            if (canceled) return;

            tempQuiz = quiz;
            tempQuiz.setQuizcode(tempQuizcode);
            tempQuiz.userId = tempQuizcode.userId;
            return tempQuiz.save({transaction: createQuiz});
        })
        .then(result => {
            if (canceled) return;

            return Question.findAll({
                where: {
                    complexity: complexities,
                    categoryId: categories
                }
            }, {transaction: createQuiz});
        })
        .then( questions => {
            if (canceled) return;

            const questionList = [];
            for (let i = 0; i < 5; i++) {
                questionList.push(questions.splice(Math.random()*(questions.length - 1), 1)[0].dataValues);
            }
            res.status(201).json({quizId: tempQuiz.id, questions: questionList});
            return questions;
        })
    }).catch(err => {
        console.log(err);
        res.status(404);
        res.send(err);
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
