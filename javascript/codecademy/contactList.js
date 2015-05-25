// Contact List with first and last names, address, and phone number.

// Create a friends object and add some friends to it.
var friends = {};
friends.bill = {
    firstName: "Bill",
    lastName: "Gates",
    number: "123-456-7890",
    address: ['One Microsoft Way', 'Redmond', 'WA', '98052']
};
friends.steve = {
    firstName: "Steve",
    lastName: "Jobs",
    number: "555-098-7654",
    address: ['1 Infinite Loop', 'Cupertino', 'CA', '95014']
};
// The first function we'll create will be called list, and it will print out all the entries we have in our friends object.
var list = function(entry) {
    for (var key in entry) {  // Use a for/in loop to access that key's value with object[key]
        console.log(key);    
    }    
};
// Define a function search that takes a single argument, name. If the argument passed to the function matches any of the 
// first names in friends, it should log that friend's contact information to the console and return it.
var search = function(name) {
    for (var key in friends) {
        if (friends[key].firstName === name) {
            console.log(friends[key]);
            return friends[key];    
        }
    }   
};
list(friends);
search("Steve");
