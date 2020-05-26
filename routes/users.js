const express = require('express');
const router = express.Router();
const userController = require('../controllers/user');

router.post('/', userController.postUser);
//router.get('/', userController.getAllUsers);
router.get('/:id', userController.getUserById);
router.put('/:id', userController.updateUserById);

module.exports = router;
