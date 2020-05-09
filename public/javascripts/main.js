let questionsList = [];
function startQuiz(btn) {
    const inputAge = btn.parentNode.querySelector('[name=age]').value;
    const inputPLZ = btn.parentNode.querySelector('[name=plz]').value;
    const inputQuizcode = btn.parentNode.querySelector('[name=quizcode]').value;
    const startSection = btn.parentElement;
    console.log(inputAge, inputPLZ, inputQuizcode);
    console.log(startSection);
    fetch('http://localhost:3000/quizzes/', {
        method: 'POST',
        body: JSON.stringify({
            playerAge: inputAge,
            playerPlz: inputPLZ,
            code: inputQuizcode,
            complexities: [1, 2, 4],
            categories: [1, 3, 5]
        }),
        headers: {
            'Content-Type': 'application/json'
        }
    }).then(res => {
        res.text().then(res => {
            startSection.classList.add('hidden');
            console.log('res', res);
            questionsList = JSON.parse(res);
            showQuestions(JSON.parse(res));
        });
    });
}

function showQuestions(questionsList) {
    const quizContainer = document.querySelector('.quiz');
    questionsList.forEach(question => {
        quizContainer.insertAdjacentHTML('afterBegin', createTemplateForQuestion(question));
    });
    quizContainer.classList.remove('hidden');
}

function createTemplateForQuestion(question) {
    const answers = [];
    answers.push(question.answer1, question.answer2, question.answer3, question.answer4);
    return `
    <div class="question" data-questionid="${question.id}">
        <h3 class="question-title">${question.question}</h3>
        <ol class="answer-list">
            <li onclick="saveAnswer(this)">${answers.splice(Math.floor(Math.random() * (answers.length)), 1)}</li>
            <li onclick="saveAnswer(this)">${answers.splice(Math.floor(Math.random() * (answers.length)), 1)}</li>
            <li onclick="saveAnswer(this)">${answers.splice(Math.floor(Math.random() * (answers.length)), 1)}</li>
            <li onclick="saveAnswer(this)">${answers.splice(Math.floor(Math.random() * (answers.length)), 1)}</li>
        </ol>
    </div>
    `;
}

function saveAnswer(element) {
    const container = element.closest('.question');
    container.classList.add('hidden');
    console.log(element.innerText === questionsList.filter( question => question.id+'' === container.dataset.questionid)[0].answer1);
}

