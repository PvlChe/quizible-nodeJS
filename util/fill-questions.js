const fs = require('fs');
const mysql = require('mysql2');
const path = require('path');
const fastcsv = require('fast-csv');

let stream = fs.createReadStream(path.join(__dirname, 'Questions.csv'));

let csvData = [];
let csvStream = fastcsv
    .parse({delimiter: ';'})
    .on("data", (data) => {
        if (data[0] && data[0].length < 255) {
            data.push(1);
            data.push(new Date());
            data.push(new Date());
            csvData.push(data);
            console.log('data', data);
            console.log('question length', data[0].length);
        }
    })
    .on("end", () => {
        csvData.shift();

        const connection = mysql.createConnection({
            host: 'localhost',
            user: 'root',
            password: 'cafebryttoo',
            database: 'quizible'
        });

        connection.connect(error => {
            if (error) {
                console.error(error);
            } else {
                let query =
                    "INSERT INTO questions (question, answer1, answer2, answer3, answer4, link, complexity, createdAt, updatedAt) VALUES ?";
                connection.query(query, [csvData], (error, response) => {
                    console.log(error || response);
                })
            }
        })
    });

function fillQuestions() {
    stream.pipe(csvStream);
}

module.exports =  fillQuestions;