const Sequelize = require('sequelize');
const sequelize = require('../util/db');

const Quizcode = sequelize.define('quizcode', {
    id: {
        type: Sequelize.INTEGER,
        autoIncrement: true,
        allowNull: false,
        primaryKey: true,
        unique: true
    },
    code: {
        type: Sequelize.STRING,
        allowNull: false,
        unique: true
    },
    played: {
        type: Sequelize.BOOLEAN,
        allowNull: false
    }
});

module.exports = Quizcode;