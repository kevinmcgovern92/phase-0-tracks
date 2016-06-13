// Pseudo code for reverse function
// input: string
// Steps: Iterate over the function
// Assign each letter to the appropriately reversed index in a new variable
  // Use a FOR loop
  // Condition will likely be i < str.length
  // Cannot use -1 as index, so must count up
    // Can use i = str.length - 1 to mean the same thing
  // Returning empty variable in Repl - string addition is not working
// output: string in reverse order
//

function reverse(string) {
  emptyString = '';
  for (var i = string.length - 1; i >= 0; i--) {
    emptyString += string[i];
  }
  console.log(emptyString);
}

reverse("hello")