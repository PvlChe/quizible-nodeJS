const createError = require('http-errors');
const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const sassMiddleware = require('node-sass-middleware');
const bodyParser = require('body-parser');
const cors = require('cors');

const indexRouter = require('./routes/index');
const usersDefRouter = require('./routes/usersDefault');
const questionsRouter = require('./routes/questions');
const quizRouter = require('./routes/quizzes');
const questionAnswerRouter = require('./routes/question-answers');
const quizcodeRouter = require('./routes/quizcodes');
const categoriesRouter = require('./routes/categories');
const usersRouter = require('./routes/users');
const app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
// bodyparser
app.use(bodyParser.json());

/*app.use((req,res,next)=>{
    res.setHeader('Access-Control-Allow-Origin', 'http://localhost/4200');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
    next();
});*/

app.use(cors());

app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(sassMiddleware({
  src: path.join(__dirname, 'public'),
  dest: path.join(__dirname, 'public'),
  indentedSyntax: false, // true = .sass and false = .scss
  sourceMap: true
}));
app.use(express.static(path.join(__dirname, 'public/client-app')));

app.use('/', indexRouter);
app.use('/api/usersDef', usersDefRouter);
app.use('/api/questions', questionsRouter);
app.use('/api/quizzes', quizRouter);
app.use('/api/answers', questionAnswerRouter);
app.use('/api/quizcodes', quizcodeRouter);
app.use('/api/categories', categoriesRouter);
app.use('/api/users', usersRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
