const Category = require('../models/category');

exports.postCategory = (req, res, next) => {
    const name = req.body.name;

    Category.create({
        name: name,
    }).then(category => {
        res.send(category);
    }).catch(err => {
        console.log(err);
        res.end();
        next();
    })
};

exports.getCategoryById = (req, res, next) => {
    const categoryId = req.params.id;
    Category.findByPk(categoryId)
        .then(category => {
            res.send(category);
        })
};

exports.updateCategory = (req, res, next) => {
    const name = req.body.name;

    Category.findOne({
        where: {code: code}
    }).then(category => {
        category.name = name;
        return category.save();
    }).then(category => {
        res.send(category);
    }).catch(err => console.log(err));
};