//loads in the data array
const { data } = require("./p4-data.js");

//Returns an array of strings where each array element is a question.
function getQuestions() {
    return data.map(({ question }) => question);    
}
//console.log(getQuestions(data));


//Returns an array of strings where each array element is an answer.
function getAnswers() {
    return data.map(({ answer }) => answer);
}
//console.log(getAnswers(data));


//Returns a copy of the original data array of objects.
function getQuestionsAnswers() {
    clonedData = [...data];
    return clonedData;
}
//console.log(JSON.stringify(getQuestionsAnswers(data)));


//Returns an object with the following properties: question, number, error
function getQuestion(number = "") {
    let qObject = {
        question: "",
        number: "",
        error: ""
    }
    if (!Number.isInteger(number)) {
        return qObject.error = "Number must be an integer"
    } else if (number < 1) {
        return qObject.error = "Number must be more than or equal to 1"
    } else if (number > 3) {
        return qObject.error = "Number must be less than 3"
    } else {
        qObject.question = data[(number - 1)].question;
        qObject.number = (number);
    }
    return qObject;
}
//console.log(getQuestion(2));


//Returns an object with the following properties: answer, number, error
function getAnswer(number = "") {
    let aObject = {
        answer: "",
        number: "",
        error: ""
    }
    if (!Number.isInteger(number)) {
        return aObject.error = "Number must be an integer"
    }
    else if (number < 1) {
        return aObject.error = "Number bust more more than or equal to 1"
    }
    else if (number > 3) {
        return aObject.error = "Number must be less than 3"
    }
    else {
        aObject.answer = data[(number - 1)].answer;
        aObject.number = (number);
    }
    return aObject;
}
//console.log(getAnswer(3))



//Returns an object with the following properties: question, answer, number, error
function getQuestionAnswer(number = "") {
    let qaObject = {
        question: "",
        answer: "",
        number: "",
        error: ""
    }
    if (!Number.isInteger(number)) {
      return (qaObject.error = "Number must be an integer");
    } else if (number < 1) {
      return (qaObject.error = "Number bust more more than or equal to 1");
    } else if (number > 3) {
      return (qaObject.error = "Number must be less than 3");
    } else {
        qaObject.question = data[number - 1].question;
        qaObject.answer = data[number - 1].answer;
        qaObject.number = number;
    }
    return qaObject;
}
//console.log(getQuestionAnswer(1));



/*****************************
  Module function testing
******************************/
function testing(category, ...args) {
  console.log(`\n** Testing ${category} **`);
  console.log("-------------------------------");
  for (const o of args) {
    console.log(`-> ${category}${o.d}:`);
    console.log(o.f);
  }
}

// Set a constant to true to test the appropriate function
const testGetQs = false;
const testGetAs = false;
const testGetQsAs = false;
const testGetQ = false;
const testGetA = false;
const testGetQA = false;
const testAdd = false;      // Extra credit
const testUpdate = false;   // Extra credit
const testDelete = false;   // Extra credit


// getQuestions()
if (testGetQs) {
  testing("getQuestions", { d: "()", f: getQuestions() });
}

// getAnswers()
if (testGetAs) {
  testing("getAnswers", { d: "()", f: getAnswers() });
}

// getQuestionsAnswers()
if (testGetQsAs) {
  testing("getQuestionsAnswers", { d: "()", f: getQuestionsAnswers() });
}

// getQuestion()
if (testGetQ) {
  testing(
    "getQuestion",
    { d: "()", f: getQuestion() },      // Extra credit: +1
    { d: "(0)", f: getQuestion(0) },    // Extra credit: +1
    { d: "(1)", f: getQuestion(1) },
    { d: "(4)", f: getQuestion(4) }     // Extra credit: +1
  );
}

// getAnswer()
if (testGetA) {
  testing(
    "getAnswer",
    { d: "()", f: getAnswer() },        // Extra credit: +1
    { d: "(0)", f: getAnswer(0) },      // Extra credit: +1
    { d: "(1)", f: getAnswer(1) },
    { d: "(4)", f: getAnswer(4) }       // Extra credit: +1
  );
}

// getQuestionAnswer()
if (testGetQA) {
  testing(
    "getQuestionAnswer",
    { d: "()", f: getQuestionAnswer() },    // Extra credit: +1
    { d: "(0)", f: getQuestionAnswer(0) },  // Extra credit: +1
    { d: "(1)", f: getQuestionAnswer(1) },
    { d: "(4)", f: getQuestionAnswer(4) }   // Extra credit: +1
  );
}


//Export the following functions from the code module
module.exports = {
    getQuestions,
    getAnswers,
    getQuestionsAnswers,
    getQuestion,
    getAnswer,
    getQuestionAnswer,
};
