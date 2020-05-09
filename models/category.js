const Sequelize = require('sequelize');
const sequelize = require('../util/db');

const Category = sequelize.define('category', {
    id: {
        type: Sequelize.INTEGER,
        autoIncrement: true,
        allowNull: false,
        primaryKey: true,
        unique: true
    },
    name: {
        type: Sequelize.STRING,
        allowNull: false,
        defaultValue: '',
        unique: true
    }
});


module.exports = Category;