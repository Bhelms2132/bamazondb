//Variables declared
var mysql = require("mysql");
var inquirer = require("inquirer");
var gResults;
var gAnswer_item;
var gAnswer_unit;
var newStock;

//mySQL database connection made
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root.helms",
  database: "bamazondb"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  connection.end();
});



