var mysql = require("mysql");
var inquirer = require ("inquirer")

// Connection information for mysql database 
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root.helms",
  database: "bamazondb"
});

connection.connect(function(err) {
  if (err) throw err;
  start();
});
// This function prompts the user for what action to take
function start() {
  inquirer.prompt({
    name: "productID",
    type: "input",
    message: "What is the products ID that you would like to buy?",
    choices: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
  })
  .then(function(answer){

  });
}




