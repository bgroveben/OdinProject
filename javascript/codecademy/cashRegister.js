// Building a Cash Register

// The full working version of this program is at the bottom under /You Deserved It!/

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


// Short-Term Memory
// We need something like a bar code scanner where just knowing the item name will automatically 
// add the cost of that item to the total.
var cashRegister = {
    total: 0,
//insert the add method here    
    add: function(itemCost) {
        this.total += itemCost;  
    },
// Create a method called scan. 
// This method takes some item parameter, and adds the cost of this item to the total. 
// Item is a string.
// Use a switch statement.   
    scan: function (item) {
        switch (item) { 
        case "eggs": 
            this.add(0.98); 
            break;
        
        case "milk": 
            this.add(1.23); 
            break;
        
        //Add other 2 items here
        case "magazine":
            this.add(4.99);
            break;
            
        case "chocolate":
            this.add(0.45);
            break;
        }
        return true;
    }
};
//Scan 2 eggs and 3 magazines
cashRegister.scan("eggs");
cashRegister.scan("eggs");
cashRegister.scan("magazine");
cashRegister.scan("magazine");
cashRegister.scan("magazine");
//Show the total bill
console.log('Your bill is '+cashRegister.total);


// I Have to Scan It More Than Once?
// Modify the scan method such that if we tell it the quantity of each item, 
// it will be able to add the right amount to the total. 
var cashRegister = {
    total:0,
    add: function(itemCost){
        this.total += itemCost;
    },
    scan: function(item, quantity) {
        switch (item) {
        case "eggs": this.add(0.98 * quantity); break;
        case "milk": this.add(1.23 * quantity); break;
        case "magazine": this.add(4.99 * quantity); break;
        case "chocolate": this.add(0.45 * quantity); break;
        }
    }
};
// scan each item 4 times
cashRegister.scan("eggs", 4);
cashRegister.scan("milk", 4);
cashRegister.scan("magazine", 4);
cashRegister.scan("chocolate", 4);
//Show the total bill
console.log('Your bill is '+cashRegister.total);


//Bleep Bleep
// The boss looks down at his pager to see Register 8 needs assistance. 
// They have scanned an item too many times and need to void the last transaction.
var cashRegister = {
    total:0,
// We need to keep track of how much the last transaction was. 
// Modify the add method to keep track of the amount of the last transaction. 
// This should be tracked in a new property, lastTransactionAmount.
    lastTransactionAmount:0,
    add: function(itemCost) {
        this.total += itemCost;
        this.lastTransactionAmount = itemCost;
    },
    scan: function(item,quantity) {
        switch (item) {
        case "eggs": this.add(0.98 * quantity); break;
        case "milk": this.add(1.23 * quantity); break;
        case "magazine": this.add(4.99 * quantity); break;
        case "chocolate": this.add(0.45 * quantity); break;
        }
        return true;
    },
// Add a method called voidLastTransaction that subtracts the last amount transacted from total.
    voidLastTransaction: function(item){
        this.total -= this.lastTransactionAmount;    
    }   
};
cashRegister.scan('eggs',1);
cashRegister.scan('milk',1);
cashRegister.scan('magazine',1);
cashRegister.scan('chocolate',4);
// Then use the new method to void the last item we scanned. 
cashRegister.voidLastTransaction("chocolate");
// Finally, scan only 3 of the same item instead.
cashRegister.scan('chocolate',3)
//Show the total bill
console.log('Your bill is '+cashRegister.total);


// Over the Moon
// Great! The store is ticking along making money again. 
// The boss is so happy you have just been given a bonus staff discount to the value of 20%.
// However the current system doesn't know how to apply the different levels of staff discount that apply. 
// Now the rest of the staff is not happy and demanding you make improvements!
// Let's sort it out so that staff can get their well deserved discount.

// Create an object constructor called StaffMember which takes two parameters—name and discountPercent. 
// And then have the (public) properties name and discountPercent equal the parameters.
function StaffMember(name, discountPercent) {
    this.name = name;
    this.discountPercent = discountPercent;
};
// To help, we have already created two employees using this constructor. 
// Sally and Bob already have their staff discount set up: Sally getting 5% off and Bob getting 10%.
var sally = new StaffMember("Sally",5);
var bob = new StaffMember("Bob",10);
// Create a new instance of the object for yourself called me with your massive staff discount bonus of 20%.
var me = new StaffMember("Ben", 20);



//////////////////////// You Deserved It!//////////////////////////

// Whew! It's been a long day fixing cash registers and now let's actually apply our well-earned discount. 
// Now that we have our objects representing the staff, let's update our cash register to actually apply the discount.
function StaffMember(name,discountPercent){
    this.name = name;
    this.discountPercent = discountPercent;
}
var sally = new StaffMember("Sally",5);
var bob = new StaffMember("Bob",10);
// Create a new object called me of type StaffMember for yourself with a staff discount of 20%.
var me = new StaffMember("Ben", 20);

var cashRegister = {
    total:0,
    lastTransactionAmount: 0,
    add: function(itemCost){
        this.total += (itemCost || 0);
        this.lastTransactionAmount = itemCost;
    },
    scan: function(item,quantity){
        switch (item){
        case "eggs": this.add(0.98 * quantity); break;
        case "milk": this.add(1.23 * quantity); break;
        case "magazine": this.add(4.99 * quantity); break;
        case "chocolate": this.add(0.45 * quantity); break;
        }
        return true;
    },
    voidLastTransaction : function(){
        this.total -= this.lastTransactionAmount;
        this.lastTransactionAmount = 0;
    },
// Create a new method called applyStaffDiscount in the cashRegister object which accepts a parameter employee. 
// When this method is called, cashRegister should apply the staff member's discountPercent to total.
    applyStaffDiscount: function(employee){
        this.total -= this.total * (employee.discountPercent / 100);    
    }
};
cashRegister.scan('eggs',1);
cashRegister.scan('milk',1);
cashRegister.scan('magazine',3);
// Apply your staff discount by passing the 'me' object to applyStaffDiscount
cashRegister.applyStaffDiscount(me);
// Show the total bill
console.log('Your bill is '+cashRegister.total.toFixed(2));
