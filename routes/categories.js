const express = require('express');
const router = express.Router();
const categoriesController = require('../controllers/category');

router.post('/', categoriesController.postCategory);
router.get('/:id', categoriesController.getCategoryById);

module.exports = router;
