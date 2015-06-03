// Building a Cash Register

// You are working for a large supermarket and the cash register has just failed. 
// The boss is not happy as he can't make any money.
// To save the day it happens that you let slip to your boss that you know JavaScript and can build a 
// quick virtual cash register until head office sends support staff.

// Create the object called cashRegister and initialize its total property to 0
var cashRegister = {
  total: 0    
};
//Using dot notation change the total property
cashRegister.total = 2.99;


// Use the add method to sum up the cost of the following four items.
// Eggs 0.98
// Milk 1.23
// Magazine 4.99
// Chocolate 0.45
var cashRegister = {
    total:0,
    add: function(itemCost){
        this.total += itemCost;
    }
};
//call the add method for our items
cashRegister.add(0.98);
cashRegister.add(1.23);
cashRegister.add(4.99);
cashRegister.add(0.45);
//Show the total bill
console.log('Your bill is '+cashRegister.total);