// Building an address book.


var bob = {
    firstName: "Bob",
    lastName: "Jones",
    phoneNumber: "(650) 777-7777",
    email: "bob.jones@example.com"
};

var mary = {
    firstName: "Mary",
    lastName: "Johnson",
    phoneNumber: "(650) 888-8888",
    email: "mary.johnson@example.com"
};

var contacts = [bob, mary];
// We can create a function that consistently displays a specific property of an object.
function printPerson(person) {
    console.log(person.firstName + " " + person.lastName);
}
// Address book programs usually have a screen that lists all of the contacts. Let's build that feature.
function list() {
	var contactsLength = contacts.length;
	for (var i = 0; i < contactsLength; i++) {
		printPerson(contacts[i]);
	}
}
list();
// Create a search function then call it passing "Jones"
function search(lastName) {
    var contactsLength = contacts.length;
    for (var i = 0; i < contactsLength; i++) {
        if (contacts[i].lastName === lastName) {
            printPerson(contacts[i]);
        }
    }
}
search("Jones");
// We have our address book in the contacts array, but what if we make a new friend and want to add them as well?
function add(firstName, lastName, phoneNumber, email) {
  contacts[contacts.length] = {
    firstName: firstName,
    lastName: lastName,
    phoneNumber: phoneNumber,
    email: email
  }
}
add("Ben", "Grove", "(111) 222-3333", "ben@example.com");

list();
printPerson(contacts[0]);
printPerson(contacts[1]);
console.log(mary.phoneNumber);
console.log(contacts);