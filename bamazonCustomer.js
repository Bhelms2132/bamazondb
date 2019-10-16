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
  console.log("connected as id " + connection.threadId);
  connection.end();
});
connection.query("SELECT * FROM bamazondb.products", function(err, res){
  if (err) throw err;
  console.log(res);
  start();
});
// This function prompts the user for what action to take
function start() {
  inquirer.prompt({
    name: "productId",
    type: "input",
    message: "What is the products ID that you would like to buy?",
  })
  .then(function(answer){
    console.log("ID: " + answer.productId);
   units();
    });
}
// function to handle products to purchase
function units() {
   inquirer.prompt({
     name:"units_buy",
     type:"input",
     message: "How many units of the product would you like to buy?"
   })
   .then(function(answer_units){
     console.log("Units: " + answer_units.units_buy);
   });

   
}



