const Sequelize = require('sequelize');
const Quiz = require('./quiz');
const Question = require('./question');
const sequelize = require('../util/db');

const QuestionAnswer = sequelize.define('question_answer', {
    id: {
        type: Sequelize.INTEGER,
        autoIncrement: true,
        allowNull: false,
        primaryKey: true,
        unique: true
    },
    answer: {
        type: Sequelize.STRING,
        allowNull: false
    },
    right: {
        type: Sequelize.BOOLEAN,
        allowNull: false
    }
});

QuestionAnswer.belongsTo(Question, {
    constraint: true,
    foreignKey: {allowNull: false},
    onDelete: 'CASCADE',
});

module.exports = QuestionAnswer;