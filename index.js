const inquirer = require("inquirer");
const mysql = require("mysql");
const ctable = require("console.table");

// MySQL connection // 
const connection = mysql.createConnection({
    host: "localhost",
    port: "3306", //default port for mysql//
    user: "root",
    password: "LAKings#1",
    database: "employeeDB"
})

connection.connect(function(err){
    if (err) displayError();
})





