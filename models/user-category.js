const Sequelize = require('sequelize');
const sequelize = require('../util/db');

const UserCategory = sequelize.define('user_category', {
    id: {
        type: Sequelize.INTEGER,
        autoIncrement: true,
        allowNull: false,
        primaryKey: true,
        unique: true
    }
});

module.exports = UserCategory;