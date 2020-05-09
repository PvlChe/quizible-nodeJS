const User = require('../models/user');
const Category = require('../models/category');

exports.postUser = (req, res, next) => {
    const name = req.body.name;
    const city = req.body.city;
    const street = req.body.street;
    const categories = req.body.categories;
    const plz = req.body.plz;
    const house = req.body.house;
    const mail = req.body.mail;
    const password = req.body.password;
    let tempUser;
    User.create({
        name: name,
        city: city,
        street: street,
        plz: plz,
        house: house,
        mail: mail,
        password: password
    }).then(user => {
        tempUser = user;
        return Category.findAll({
            where: {
                name: categories
            }
        });
    }).then(categories => {
        return tempUser.setCategories(categories);
    }).then(result => {
        res.status(201);
        res.send(tempUser);
    }).catch(err => {
        console.log(err);
        res.end();
        next();
    })
};
