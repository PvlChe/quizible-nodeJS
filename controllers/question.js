const Question = require('../models/question');

exports.postQuestion = (req, res, next) => {
    const question = req.body.question;
    const category = req.body.category;
    const complexity = req.body.complexity;
    const answer1 = req.body.answer1;
    const answer2 = req.body.answer2;
    const answer3 = req.body.answer3;
    const answer4 = req.body.answer4;
    const link = req.body.link;
    Question.create({
        question: question,
        category: category,
        complexity: complexity,
        answer1: answer1,
        answer2: answer2,
        answer3: answer3,
        answer4: answer4,
        link: link
    }).then(result => {
        console.log('question created', result);
        res.send(result);
        res.status(201);
        next();
    }).catch(err => {
        console.log(err);
        res.end();
        next();
    });
};

exports.getFiveQuestionsByCategoryAndComplexity = (req, res, next) => {
    const complexities = req.body.complexities;
    const categories = req.body.categories;
    Question.findAll({
        where: {
            complexity: complexities,
            category: categories
        }
    }).then(result => {
        res.send(result.slice(-5));
        res.status(200);
        next();
    }).catch(err => {
        console.log(err);
        res.end();
        next();
    });
};