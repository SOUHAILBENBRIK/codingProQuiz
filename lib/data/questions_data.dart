const questionsData = [
  {
    "level": 1,
    "question": "What does HTML stand for?",
    "answers":
        "HyperText Markup Language,Hyperspace Markup Language,Home Tool Markup Language",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 2,
    "question":
        "Which programming language is known as the 'mother of all languages'?",
    "answers": "C,Python,Assembly",
    "rightAnswerIndex": 3,
    "image": null
  },
  {
    "level": 3,
    "question": "What is the purpose of CSS?",
    "answers":
        "To style and format web pages,To create interactive web elements,To handle server-side logic",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 4,
    "question":
        "Which programming language is primarily used for developing mobile applications?",
    "answers": "Java,Swift,HTML",
    "rightAnswerIndex": 2,
    "image": null
  },
  {
    "level": 5,
    "question": "What does SQL stand for?",
    "answers":
        "Structured Query Language,Sequential Query Language,Simple Query Language",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 6,
    "question":
        "Which programming language is often used for artificial intelligence and machine learning?",
    "answers": "Python,JavaScript,C++",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 7,
    "question": "What is the file extension for a JavaScript file?",
    "answers": ".js,.html,.css",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 8,
    "question": "What is the syntax for declaring a variable in Python?",
    "answers": "var x,let x,int x",
    "rightAnswerIndex": 3,
    "image": null
  },
  {
    "level": 9,
    "question": "What does API stand for?",
    "answers":
        "Application Programming Interface,Application Protocol Interface,Advanced Programming Interface",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 10,
    "question":
        "Which programming language is known for its use in web development and server-side scripting?",
    "answers": "JavaScript,Java,C#",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 11,
    "question":
        "Which programming language is used to create Android applications?",
    "answers": "Java,Swift,Python",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 12,
    "question":
        "What is the output of the following code snippet: console.log(10 % 3);",
    "answers": "1,2,3",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 13,
    "question": "What is the purpose of the 'for' loop in programming?",
    "answers":
        "To iterate over a block of code a specific number of times,To perform a specific action based on a condition,To define a function",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 14,
    "question":
        "Which symbol is used to indicate the end of a statement in many programming languages?",
    "answers": "Semicolon,Colon,Period",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 15,
    "question": "What does CSS stand for?",
    "answers":
        "Cascading Style Sheets,Central Style Sheets,Computer Style Sheets",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 16,
    "question":
        "Which programming language is known for its use in data analysis and scientific computing?",
    "answers": "Python,Ruby,PHP",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 17,
    "question": "What is the purpose of the 'if' statement in programming?",
    "answers":
        "To perform a specific action based on a condition,To define a function,To iterate over a block of code a specific number of times",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 18,
    "question":
        "What is the output of the following code snippet: console.log('2' + 2);",
    "answers": "22,4,Error",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 19,
    "question":
        "Which programming language is often used for game development?",
    "answers": "C++,Java,Perl",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 20,
    "question": "What does the term 'bug' refer to in programming?",
    "answers":
        "An error or defect in a program,The process of removing unused code from a program,The act of testing a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 21,
    "question":
        "Which operator is used for concatenating two strings in many programming languages?",
    "answers": "+,=,&",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 22,
    "question": "What is the purpose of the 'return' statement in programming?",
    "answers":
        "To specify the value to be returned from a function,To print a message to the console,To declare a variable",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 23,
    "question":
        "Which programming language is often used for web scraping and automation?",
    "answers": "Python,JavaScript,C#",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 24,
    "question":
        "What is the output of the following code snippet: console.log(true && false);",
    "answers": "false,true,Error",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 25,
    "question": "What does the term 'variable' refer to in programming?",
    "answers":
        "A named container for storing data,The process of repeating a block of code a specific number of times,The act of testing a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 26,
    "question":
        "Which programming language is often used for building web servers?",
    "answers": "JavaScript,Python,Java",
    "rightAnswerIndex": 3,
    "image": null
  },
  {
    "level": 27,
    "question": "What is the purpose of the 'while' loop in programming?",
    "answers":
        "To repeat a block of code while a condition is true,To perform a specific action based on a condition,To define a function",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 28,
    "question":
        "What is the output of the following code snippet: console.log(typeof 10);",
    "answers": "number,string,boolean",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 29,
    "question":
        "Which programming language is known for its use in developing web applications?",
    "answers": "JavaScript,Python,C#",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 30,
    "question": "What does the term 'syntax' refer to in programming?",
    "answers":
        "The set of rules that define the structure and composition of valid code,The process of removing unused code from a program,The act of testing a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 31,
    "question":
        "Which operator is used to access the properties and methods of an object in many programming languages?",
    "answers": ". (dot),: (colon),- (dash)",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 32,
    "question": "What is the purpose of the 'else' statement in programming?",
    "answers":
        "To define an alternative action if the 'if' condition is false,To perform a specific action based on a condition,To iterate over a block of code a specific number of times",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 33,
    "question":
        "What is the output of the following code snippet: console.log('Hello, ' + 'world!');",
    "answers": "Hello,world!,Hello world!,Error",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 34,
    "question":
        "Which programming language is known for its use in building desktop applications?",
    "answers": "C#,Python,JavaScript",
    "rightAnswerIndex": 2,
    "image": null
  },
  {
    "level": 35,
    "question": "What does the term 'loop' refer to in programming?",
    "answers":
        "A sequence of instructions that is continually repeated until a certain condition is met,The process of repeating a block of code a specific number of times,The act of testing a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 36,
    "question":
        "What is the purpose of the '&&' operator in many programming languages?",
    "answers":
        "To perform a logical AND operation,To perform a logical OR operation,To perform a logical NOT operation",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 37,
    "question":
        "What is the output of the following code snippet: console.log(10 > 5);",
    "answers": "true,false,Error",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 38,
    "question":
        "Which programming language is often used for building desktop games?",
    "answers": "C++,Java,Python",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 39,
    "question": "What is the purpose of the 'break' statement in programming?",
    "answers":
        "To exit a loop or switch statement,To continue to the next iteration of a loop,To define a function",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 40,
    "question": "What does the term 'parameter' refer to in programming?",
    "answers":
        "A value that is passed into a function when it is called,A named container for storing data,The process of removing unused code from a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 41,
    "question":
        "Which operator is used for assigning a value to a variable in many programming languages?",
    "answers": "= (equals),+ (plus),- (minus)",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 42,
    "question":
        "What is the purpose of the 'continue' statement in programming?",
    "answers":
        "To skip the current iteration of a loop and continue to the next iteration,To exit a loop or switch statement,To print a message to the console",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 43,
    "question":
        "What is the output of the following code snippet: console.log(typeof 'Hello');",
    "answers": "string,number,boolean",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 44,
    "question":
        "Which programming language is often used for building machine learning models?",
    "answers": "Python,Java,C++",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 45,
    "question": "What does the term 'array' refer to in programming?",
    "answers":
        "An ordered collection of values,The process of repeating a block of code a specific number of times,The act of testing a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 46,
    "question":
        "What is the purpose of the '||' operator in many programming languages?",
    "answers":
        "To perform a logical OR operation,To perform a logical AND operation,To perform a logical NOT operation",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 47,
    "question":
        "What is the output of the following code snippet: console.log(5 == '5');",
    "answers": "true,false,Error",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 48,
    "question":
        "Which programming language is known for its use in building web servers and networking applications?",
    "answers": "Java,Python,C++",
    "rightAnswerIndex": 2,
    "image": null
  },
  {
    "level": 49,
    "question": "What is the purpose of the 'switch' statement in programming?",
    "answers":
        "To perform different actions based on different conditions,To define a function,To repeat a block of code while a condition is true",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 50,
    "question": "What does the term 'function' refer to in programming?",
    "answers":
        "A named block of reusable code,A value that is passed into a function when it is called,The process of removing unused code from a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 51,
    "question":
        "Which operator is used to compare two values for equality in many programming languages?",
    "answers": "== (equals),!= (not equals),>= (greater than or equal to)",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 52,
    "question": "What is the purpose of the 'typeof' operator in programming?",
    "answers":
        "To get the data type of a value,To perform a mathematical operation,To access the properties and methods of an object",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 53,
    "question":
        "What is the output of the following code snippet: console.log(10 / 0);",
    "answers": "Infinity,0,Error",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 54,
    "question":
        "Which programming language is often used for building web browsers?",
    "answers": "JavaScript,Python,C#",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 55,
    "question": "What does the term 'object' refer to in programming?",
    "answers":
        "A collection of properties and methods,A value that is passed into a function when it is called,The process of removing unused code from a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 56,
    "question": "What is the purpose of the '++' operator in programming?",
    "answers":
        "To increment a variable by 1,To decrement a variable by 1,To concatenate two strings",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 57,
    "question":
        "What is the output of the following code snippet: console.log(5 > 3 && 10 < 8);",
    "answers": "false,true,Error",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 58,
    "question":
        "Which programming language is often used for building financial applications?",
    "answers": "C++,Java,Python",
    "rightAnswerIndex": 3,
    "image": null
  },
  {
    "level": 59,
    "question":
        "What is the purpose of the 'try...catch' statement in programming?",
    "answers":
        "To handle errors and exceptions,To define a function,To repeat a block of code while a condition is true",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 60,
    "question": "What does the term 'string' refer to in programming?",
    "answers":
        "A sequence of characters,A value that is passed into a function when it is called,The process of removing unused code from a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 61,
    "question":
        "Which operator is used to compare two values for inequality in many programming languages?",
    "answers": "!= (not equals),== (equals),<= (less than or equal to)",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 62,
    "question": "What is the purpose of the 'new' keyword in programming?",
    "answers":
        "To create an instance of an object,To perform a mathematical operation,To access the properties and methods of an object",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 63,
    "question":
        "What is the output of the following code snippet: console.log(typeof true);",
    "answers": "boolean,string,number",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 64,
    "question":
        "Which programming language is often used for building mobile applications?",
    "answers": "Java,Python,C#",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 65,
    "question": "What does the term 'boolean' refer to in programming?",
    "answers":
        "A data type that represents true or false values,A value that is passed into a function when it is called,The process of removing unused code from a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 66,
    "question": "What is the purpose of the '--' operator in programming?",
    "answers":
        "To decrement a variable by 1,To increment a variable by 1,To concatenate two strings",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 67,
    "question":
        "What is the output of the following code snippet: console.log(10 < 5 || 8 > 2);",
    "answers": "true,false,Error",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 68,
    "question":
        "Which programming language is often used for building artificial intelligence applications?",
    "answers": "Python,Java,C++",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 69,
    "question":
        "What is the purpose of the 'finally' block in a 'try...catch' statement in programming?",
    "answers":
        "To specify code that is always executed, regardless of whether an exception is thrown or caught,To handle errors and exceptions,To repeat a block of code while a condition is true",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 70,
    "question": "What does the term 'integer' refer to in programming?",
    "answers":
        "A whole number,A value that is passed into a function when it is called,The process of removing unused code from a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 71,
    "question":
        "Which operator is used to concatenate two arrays in many programming languages?",
    "answers": "+ (plus),. (dot),, (comma)",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 72,
    "question": "What is the purpose of the 'null' value in programming?",
    "answers":
        "To represent the absence of a value or an empty value,To perform a mathematical operation,To access the properties and methods of an object",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 73,
    "question":
        "What is the output of the following code snippet: console.log('Hello'.length);",
    "answers": "5,6,Error",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 74,
    "question":
        "Which programming language is often used for building scientific applications?",
    "answers": "Python,C++,Java",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 75,
    "question": "What does the term 'float' refer to in programming?",
    "answers":
        "A data type that represents floating-point numbers,A value that is passed into a function when it is called,The process of removing unused code from a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 76,
    "question":
        "What is the purpose of the '=>' operator in many programming languages?",
    "answers":
        "To define an arrow function or lambda function,To perform a logical AND operation,To perform a logical OR operation",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 77,
    "question":
        "What is the output of the following code snippet: console.log(10 % 3);",
    "answers": "1,3,Error",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 78,
    "question":
        "Which programming language is often used for building database systems?",
    "answers": "SQL,Python,C#",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 79,
    "question": "What is the purpose of the 'isNaN()' function in programming?",
    "answers":
        "To check if a value is NaN (Not-a-Number),To handle errors and exceptions,To repeat a block of code while a condition is true",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 80,
    "question": "What does the term 'variable' refer to in programming?",
    "answers":
        "A named container for storing data,A value that is passed into a function when it is called,The process of removing unused code from a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 81,
    "question":
        "Which operator is used to access elements of an array in many programming languages?",
    "answers": "[ ] (square brackets),. (dot),: (colon)",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 82,
    "question": "What is the purpose of the 'NaN' value in programming?",
    "answers":
        "To represent a value that is not a number or cannot be represented as a number,To perform a mathematical operation,To access the properties and methods of an object",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 83,
    "question":
        "What is the output of the following code snippet: console.log('Hello'.toUpperCase());",
    "answers": "HELLO,hello,Error",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 84,
    "question":
        "Which programming language is often used for building graphical user interfaces (GUIs)?",
    "answers": "Java,Python,C++",
    "rightAnswerIndex": 2,
    "image": null
  },
  {
    "level": 85,
    "question": "What does the term 'class' refer to in programming?",
    "answers":
        "A blueprint for creating objects,A value that is passed into a function when it is called,The process of removing unused code from a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 86,
    "question":
        "What is the purpose of the '=> ' operator in many programming languages?",
    "answers":
        "To define an arrow function or lambda function,To perform a logical AND operation,To perform a logical OR operation",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 87,
    "question":
        "What is the output of the following code snippet: console.log(Math.floor(5.7));",
    "answers": "5,6,Error",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 88,
    "question":
        "Which programming language is often used for building mobile game applications?",
    "answers": "C#,Java,Python",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 89,
    "question":
        "What is the purpose of the 'parseFloat()' function in programming?",
    "answers":
        "To parse a string and return a floating-point number,To handle errors and exceptions,To repeat a block of code while a condition is true",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 90,
    "question": "What does the term 'method' refer to in programming?",
    "answers":
        "A function that is associated with an object or a class,A value that is passed into a function when it is called,The process of removing unused code from a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 91,
    "question":
        "Which operator is used to access properties and methods of an object in many programming languages?",
    "answers": ". (dot),[ ] (square brackets),: (colon)",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 92,
    "question":
        "What is the purpose of the 'Math.random()' function in programming?",
    "answers":
        "To generate a random number between 0 and 1,To perform a mathematical operation,To access the properties and methods of an object",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 93,
    "question":
        "What is the output of the following code snippet: console.log('Hello'.charAt(0));",
    "answers": "H,e,Error",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 94,
    "question":
        "Which programming language is often used for building desktop applications?",
    "answers": "Java,C++,Python",
    "rightAnswerIndex": 3,
    "image": null
  },
  {
    "level": 95,
    "question":
        "What does the term 'boolean expression' refer to in programming?",
    "answers":
        "An expression that evaluates to true or false,A value that is passed into a function when it is called,The process of removing unused code from a program",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 96,
    "question":
        "What is the purpose of the 'JSON.stringify()' function in programming?",
    "answers":
        "To convert a JavaScript object to a JSON string,To handle errors and exceptions,To repeat a block of code while a condition is true",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 97,
    "question":
        "What is the output of the following code snippet: console.log(Math.ceil(4.3));",
    "answers": "5,4,Error",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 98,
    "question":
        "Which programming language is often used for building web servers?",
    "answers": "Java,Python,Node.js",
    "rightAnswerIndex": 3,
    "image": null
  },
  {
    "level": 99,
    "question":
        "What is the purpose of the 'parseInt()' function in programming?",
    "answers":
        "To parse a string and return an integer,To handle errors and exceptions,To repeat a block of code while a condition is true",
    "rightAnswerIndex": 1,
    "image": null
  },
  {
    "level": 100,
    "question": "What does the term 'loop' refer to in programming?",
    "answers":
        "A control structure that repeats a block of code,A value that is passed into a function when it is called,The process of removing unused code from a program",
    "rightAnswerIndex": 1,
    "image": null
  }
];
