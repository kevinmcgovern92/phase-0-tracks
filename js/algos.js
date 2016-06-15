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

longestPhrase(["long phrase", "longest phrase", "longer phrase"]);
