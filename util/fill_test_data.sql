--------------------------------------
-- Fill categories table
--
INSERT INTO `quizible`.`categories` (`name`, `createdAt`, `updatedAt`) VALUES ('Animals', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`categories` (`name`, `createdAt`, `updatedAt`) VALUES ('Nature', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`categories` (`name`, `createdAt`, `updatedAt`) VALUES ('History', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`categories` (`name`, `createdAt`, `updatedAt`) VALUES ('Geography', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`categories` (`name`, `createdAt`, `updatedAt`) VALUES ('Cities', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

--------------------------------------
-- Fill questions table
--

-- Category animals

INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('What is the most important cat´s name?', '2', 'Tiger', 'Boris', 'Vaska', 'Murzik', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '1');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('What is the most important gog´s name?', '2', 'Wolf', 'Tuzik', 'Zuzik', 'Reks', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '1');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('What is the most important bird´s name?', '2', 'Lastochka', 'Skvorec', 'Snigir', 'Sokol', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '1');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('What is the most important fish´s name?', '2', 'Losos', 'Forel', 'Kit', 'Akula', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '1');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('What is the most important snake´s name?', '2', 'Piton', 'Kobra', 'Uzh', 'Anakonda', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '1');

-- Category nature

INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('How many trees there are?', '1', '1 M', '2 B', '2 M', '100 K', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '2');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('How many rivers there are?', '3', '5', '100', '200', '300', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '2');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('How many mountains there are?', '2', '100', '20', '2000', '10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '2');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('How many different arts of apples there are?', '4', '156', '222', '2000', '100', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '2');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('How many different arts of cherrys there are?', '5', '105', '29', '223', '100', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '2');

-- Category history

INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('How many years exist homosapiens?', '1', '1 M', '2020', '3012', '100 K', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '3');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('How is name of first russian Zar?', '2', 'Petr', 'Anton', 'Dima', 'Nikolai', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '3');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('Who started second world war?', '3', 'Hitler', 'Elcin', 'Stalin', 'Lenin', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '3');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('How many years ago lived Dinosaurs?', '4', '1 M', '2 B', '2 M', '100 K', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '3');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('In wich year was Corona virus activ?', '5', '2020', '1202', '2002', '200', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '3');

-- Category geography

INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('How many countries there are?', '1', '49', '202', '301', '100', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '4');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('Which country is the biggest?', '2', 'russia', 'belarus', 'luxemburg', 'germany', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '4');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('Belongs Krym to russia?', '3', 'yes', 'no', 'maybe yes', 'maybe no', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '4');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('The smallest county of EU?', '4', 'Germany', 'Luxemburg', 'Poland', 'France', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '4');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('In Which continent is Mexico?', '5', 'North america', 'South america', 'Africa', 'Eurasia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '4');

-- Category Cities

INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('How many cities there are in germany?', '1', '49', '202', '27', '1002', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '5');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('How many cities there are in belarus?', '2', '149', '502', '45', '3100', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '5');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('How many cities there are in russia?', '3', '490', '63', '74', '5100', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '5');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('How many cities there are in france?', '4', '749', '51', '301', '35100', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '5');
INSERT INTO `quizible`.`questions` (`question`, `complexity`, `answer1`, `answer2`, `answer3`, `answer4`, `createdAt`, `updatedAt`, `categoryId`) VALUES ('How many cities there are in japan?', '5', '4909', '26', '35', '10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '5');

--------------------------------------
-- Fill users table
--

INSERT INTO `quizible`.`users` (`name`, `city`, `street`, `plz`, `house`, `mail`, `password`, `strategy`, `createdAt`, `updatedAt`) VALUES ('adidas', 'berlin', 'lynarstreet', '13353', '5', 'adida@gmail.com', 'adidas', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`users` (`name`, `city`, `street`, `plz`, `house`, `mail`, `password`, `strategy`, `createdAt`, `updatedAt`) VALUES ('nike', 'minsk', 'minskstreet', '13553', '5', 'nike@gmail.com', 'nike', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`users` (`name`, `city`, `street`, `plz`, `house`, `mail`, `password`, `strategy`, `createdAt`, `updatedAt`) VALUES ('puma', 'hamburg', 'pumastreet', '23353', '5', 'puma@gmail.com', 'puma', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`users` (`name`, `city`, `street`, `plz`, `house`, `mail`, `password`, `strategy`, `createdAt`, `updatedAt`) VALUES ('reebok', 'munchen', 'reebokstreet', '53353', '5', 'reebok@gmail.com', 'reebok', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`users` (`name`, `city`, `street`, `plz`, `house`, `mail`, `password`, `strategy`, `createdAt`, `updatedAt`) VALUES ('umbro', 'berlin', 'umbrostreet', '13353', '5', 'umbro@gmail.com', 'umbro', '', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

--------------------------------------
-- Fill user-category table
--

INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('1', '1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('1', '2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('1', '3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('1', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('1', '5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('2', '1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('2', '2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('2', '3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('2', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('2', '5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('3', '1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('3', '2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('3', '3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('4', '5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('4', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('4', '3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('5', '5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('5', '1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`user_categories` (`userId`, `categoryId`, `createdAt`, `updatedAt`) VALUES ('5', '3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

--------------------------------------
-- Fill quizcodes table
--

INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('PQWERTYI', '0', '1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('PQ2WERTYI', '0', '1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('PQ4WERTYI', '1', '1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('PQ5WERTYI', '0', '2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('PQ6WERTYI', '0', '2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('PQWER2TYI', '1', '2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('PQWER3TYI', '0', '3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('PQWER1TYI', '0', '3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('PQWER2TYIW', '1', '3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('PQWER4TYI', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('PQWER42TYI', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('PQWER452TYI', '1', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('PQWER45TYI', '0', '5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('PQWER4123TYI', '0', '5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('PQWER412TYI', '1', '5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

--------------------------------------
-- Fill quizzes table
--

INSERT INTO `quizible`.`quizzes` (`playerAge`, `playerPlz`, `userId`, `quizcodeId`, `createdAt`, `updatedAt`) VALUES ('20', '22010', '1', '3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizzes` (`playerAge`, `playerPlz`, `userId`, `quizcodeId`, `createdAt`, `updatedAt`) VALUES ('25', '21210', '1', '6', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizzes` (`playerAge`, `playerPlz`, `userId`, `quizcodeId`, `createdAt`, `updatedAt`) VALUES ('36', '12310', '1', '9', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizzes` (`playerAge`, `playerPlz`, `userId`, `quizcodeId`, `createdAt`, `updatedAt`) VALUES ('15', '53410', '1', '12', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizzes` (`playerAge`, `playerPlz`, `userId`, `quizcodeId`, `createdAt`, `updatedAt`) VALUES ('10', '12310', '1', '15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


--------------------------------------
-- Fill question-answer table
--

INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('Tiger', '1', '1', '1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('2', '0', '1', '2', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('3', '0', '1', '3', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('4', '0', '1', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('1 M', '1', '2', '5', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('6123', '0', '2', '6', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('7123', '0', '2', '7', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('8123', '0', '2', '8', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('49', '1', '3', '9', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('russia', '1', '3', '10', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('yes', '1', '3', '11', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('Germany', '1', '3', '12', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('49', '1', '4', '13', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('149', '1', '4', '14', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('490', '1', '4', '15', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('749', '1', '4', '16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('749', '1', '5', '16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('749', '1', '5', '16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('749', '1', '5', '16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`question_answers` (`answer`, `right`, `quizId`, `questionId`, `createdAt`, `updatedAt`) VALUES ('749', '1', '5', '16', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('1', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('2', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('3', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('4', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('5', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('6', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('7', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('8', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('9', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('10', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('11', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('12', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('13', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('14', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('15', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('16', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('17', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('18', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('19', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('20', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('21', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('22', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('23', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('24', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('25', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('26', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('27', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('28', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('29', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('30', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('31', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('32', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('33', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('34', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('35', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('36', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('37', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('38', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('39', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('40', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('41', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('42', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('43', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('44', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('45', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('46', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('47', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('48', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('49', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('50', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('51', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('52', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('53', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('54', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('55', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('56', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('57', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('58', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('59', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('60', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('61', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('62', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('63', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('64', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('65', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('66', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('67', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('68', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('69', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('70', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('71', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('72', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('73', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('74', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('75', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('76', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('77', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('78', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('79', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('80', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('81', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('82', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('83', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('84', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('85', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('86', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('87', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('88', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('89', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('90', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('91', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('92', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('93', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('94', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('95', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('96', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('97', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('98', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('99', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO `quizible`.`quizcodes` (`code`, `played`, `userId`, `createdAt`, `updatedAt`) VALUES ('100', '0', '4', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);