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

// Begin longestPhrase function
function longestPhrase (ary) {
  var longWord = "";
  for (var i = ary.length - 1; i >= 0; i--) {
    if (ary[i].length > longWord.length) {
      longWord = ary[i];
    }
  }
return (longWord);
}
// End longestPhrase function


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
    // Returns array

// Start main function
function randomStringGenerator(x) {
  stringArray = [];
  iterationArray = [];

//Start iterations function
  var iterations = function(inputValue){
        var numberStringArray = [];
        var number = "";
        var possibleNumbers = "123456789";
        for (var i = 0; i < inputValue; i++ ) {
          number = possibleNumbers.charAt(Math.floor(Math.random() *    possibleNumbers.length));
          var integer = Math.floor(number);
          numberStringArray.push(integer);
        }
        return (numberStringArray);
    };
// End iterations function

//Start randomLetters function
  var randomLetters = function(inputValue) {
        var text = "";
        var possible = "abcdefghijklmnopqrstuvwxyz";
        for (var i = 0; i < inputValue; i++) {
          text += possible.charAt(Math.floor(Math.random() *possible    .length));
        }
        return(text);

  };
// End randomLetters function

// Start word creation code
  var iterator = iterations(x);
  (iterator);

    for (var i= 0; i < x; i++) {

       var newWord = randomLetters((iterator[i]));
      stringArray.push(newWord);
    }
  return(stringArray);
// End word creation code

}
// End main function


// Begin Release 2 Question 2 code
var evaluationArray = [];
for (var i = 0; i < 10; i++) {
  var inputs = randomStringGenerator(6);
  evaluationArray.push(inputs);
}
for (var h = 0; h < evaluationArray.length; h++){
  var currentLongWord = longestPhrase(evaluationArray[h]);
  console.log(currentLongWord);
}
// End Release 2 Question 2 code


// Driver code below this line

//horse = {'name': 'Sparky', 'age': 'unknown', 'temperment': 'happy'};
//dog = {'name': 'Fido', 'age': '9', 'temperment': 'happy'};
//
//keyValueMatch(horse, dog);
//

//  longestPhrase(["long phrase", "longest phrase", "longer phrase"]);
//  longestPhrase(["Lawrence of Arabia", "Citizen Cain", "Guns of Navarone", "The Dirty Dozen"]);