const Sequelize = require('sequelize');

const db = 'quizible';
const username = 'root';
const password = 'cafebryttoo';

const sequelize = new Sequelize(db, username, password, {
    host: 'localhost',
    dialect: 'mysql'
});

module.exports = sequelize;