const Sequelize = require('sequelize');
const QuestionAnswer = require('./question-answer');
const Quizcode = require('./quizcode');
const User = require('./user');
const sequelize = require('../util/db');

const Quiz = sequelize.define('quiz', {
    id: {
        type: Sequelize.INTEGER,
        autoIncrement: true,
        allowNull: false,
        primaryKey: true,
        unique: true
    },
    playerAge: {
        type: Sequelize.INTEGER,
        allowNull: false
    },
    playerPlz: {
        type: Sequelize.INTEGER,
        allowNull: false
    }
});

Quiz.hasMany(QuestionAnswer);
Quiz.belongsTo(Quizcode, {
    //constraint: true,
    //foreignKey: {unique: true},
});
Quiz.belongsTo(User);
module.exports = Quiz;