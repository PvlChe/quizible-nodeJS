const Sequelize = require('sequelize');
const Category = require('./category');
const UserCategory = require('./user-category');
const Quizcode = require('./quizcode');
const sequelize = require('../util/db');

const User = sequelize.define('user', {
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
        unique: 'uniqueUser'
    },
    city: {
        type: Sequelize.STRING,
        allowNull: false,
        unique: 'uniqueUser'
    },
    street: {
        type: Sequelize.STRING,
        allowNull: false,
        unique: 'uniqueUser'
    },
    plz: {
        type: Sequelize.INTEGER,
        allowNull: false,
        unique: 'uniqueUser'
    },
    house: {
        type: Sequelize.INTEGER,
        allowNull: false,
        unique: 'uniqueUser'
    },
    mail: {
        type: Sequelize.STRING,
        unique: true,
        allowNull: false
    },
    password: {
        type: Sequelize.STRING,
        allowNull: false
    }
});

User.belongsToMany(Category, {through: UserCategory});
User.hasMany(Quizcode, {
    constraint: true,
    foreignKey: {allowNull: false},
    onDelete: 'CASCADE',
});
module.exports = User;