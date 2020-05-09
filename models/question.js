const Sequelize = require('sequelize');
const sequelize = require('../util/db');
const Category = require('./category');

const Question = sequelize.define('question', {
    id: {
        type: Sequelize.INTEGER,
        autoIncrement: true,
        allowNull: false,
        primaryKey: true,
        unique: true
    },
    question: {
        type: Sequelize.STRING,
        allowNull: false,
        unique: true
    },
    complexity: {
        type: Sequelize.INTEGER,
        allowNull: false
    },
    answer1: {
        type: Sequelize.STRING,
        allowNull: false
    },
    answer2: {
        type: Sequelize.STRING,
        allowNull: false
    },
    answer3: {
        type: Sequelize.STRING,
        allowNull: false
    },
    answer4: {
        type: Sequelize.STRING,
        allowNull: false
    },

});

Question.belongsTo(Category, {
    constraints: true,
    foreignKey: 'categoryId',
    onDelete: 'SET NULL'
});

module.exports = Question;