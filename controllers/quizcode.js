const Quizcode = require('../models/quizcode');

exports.postQuizcode = (req, res, next) => {
    const code = req.body.code;
    const played = req.body.played;

    Quizcode.create({
        code: code,
        played: played
    }).then(quizcode => {
        res.send(quizcode);
    }).catch(err => {
        console.log(err);
        res.end();
        next();
    })
};

exports.updateQuizcodeAsPlayed = (req, res, next) => {
    const code = req.body.code;
    const playerAge = req.body.playerAge;
    const playerPlz = req.body.playerPlz;
    Quizcode.findOne({code: code})
        .then(quizcode => {
            quizcode.played = true;
        });
};

