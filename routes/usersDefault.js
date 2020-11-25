var express = require('express');
var router = express.Router();

const nodemailer = require('nodemailer');


/* GET users listing. */
router.post('/', function(req, res, next) {

  const transporter = nodemailer.createTransport({
    service: 'Gmail',
    auth: {
      user: 'quizible.testing@gmail.com',
      pass: 'quizible2020testing'
    }
  });

  console.log('there');
  const mailOptions = {
    from: 'quizible.testing@gmail.com',
    to: 'quizible.project@gmail.com',
    html: '<b>' + req.body.mail + '</b>'
  };

  transporter.sendMail(mailOptions, function(error, info){
    if (error) {
      console.log(error);
      res.send('nicht gesendet').sendStatus(500);
    } else {
      res.send('gesendet').sendStatus(200);
      console.log('Email sent: ' + info.response);
    }
  });
});

module.exports = router;
