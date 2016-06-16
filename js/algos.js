// Pseudocode for longest phrase function
// Input: Array of strings
// Output: Longest string
// Operations:
  // Loop through the Array
    // Likely using a FOR loop based on 'i < array.length'
  // Measure the length of each value (string) in the array
  // Create object to be able to refer to string/length pairs?
    // Release 1 makes it look like this is not the desired solution
  // Store current longest word in a variable that can be overwritten by a longer word?
    // Comparison becomes easier because it's a rolling value
    // Printing becomes easier because it's the variable not "at which index is largest"
  // Print the longest string to the console

function longestPhrase (ary) {
  // Originally set longWord = 0, but that did not return the desired input, most likely to a mix of data types
  var longWord = "a"
  for (var i = ary.length - 1; i >= 0; i--) {
    if (ary[i].length > longWord.length) {
      longWord = ary[i];
    }
  }
  console.log(longWord);
}


// Pseudocode for release 1 key/value match finding
  // Input: 2 objects
  // Output: Boolean true/false
  // Operations: Iteration
    // Initial idea is to use a FOR/IN loop with an IF conditional to assess whether key/value pairs are equivalent
    // I should be able to break this down further...
    // Hangup: logic for finding a match works, but when trying to return false, it returns multiple times because there are multiple values that do not match.
      // I want to say something like "ONLY IF matches == 0 print false"
    // Print true/false

function keyValueMatch(objOne, objTwo) {
  var falseCounter = 0;
  for (var prop in objOne) {
    if (objOne[prop] == objTwo[prop]) {
      console.log(true); }
      else falseCounter += 1;
    }
  var size = Object.keys(objOne).length;
  if (falseCounter == size){
    console.log(false);
  }
}

// Pseudocode for Release 2 function
  // Input: Integer
  // Output: Array of strings between 1 and 10 characters
  // Operations:
    // Integer argument determines the number of strings in the array
    // Declare empty array
    // Generate a number between 1 and 10
    // Assign 1..10 random characters to the string
    // Push each string into the array
    // Prints array

function randomStringGenerator(x) {
  var stringArray = [];
  for (var i = 0; i <= x; i++) {

  }
}
// random number generation
  // Math.floor((Math.random() * 10) + 1);




horse = {'name': 'Sparky', 'age': 'unknown', 'temperment': 'happy'};
dog = {'name': 'Fido', 'age': '9', 'temperment': 'happy'};

keyValueMatch(horse, dog);


//  longestPhrase(["long phrase", "longest phrase", "longer phrase"]);
//  longestPhrase(["Lawrence of Arabia", "Citizen Cain", "Guns of Navarone", "The Dirty Dozen"]);