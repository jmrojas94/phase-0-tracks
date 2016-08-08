// Release 0--------------------------------------
// Pseudocode
// - Create a function that takes in an array.
// - Initialize an empty string which will store the longest phrase.
// - Loop through the array. 
// 	- If the length of the string is longer than the longest phrase,
// 		- Store the string in the longest phrase variable.
// 	- Else,
// 		- Skip it.
// - Print out the longest phrase. 

function longestPhrase(array) {
	var currentLongestPhrase = '';
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > currentLongestPhrase.length) {
			currentLongestPhrase = array[i];
		}
	}
	return currentLongestPhrase;
}

// Release 1--------------------------------------
// Pseudocode
// - Create a function that takes in two objects.
// - Loop through the object.
//  - If any of the two objects key match,
//    - Return true.
//  - Else,
//    - Return false.

function objectMatch(object1, object2) {
  for (var key in object1) {
    if (object1[key] == object2[key]) {
      return true
    }
  }
  return false
}

// Release 2--------------------------------------
// Pseudocode
// - Create a function that takes in an integer.
// - Create an array of the alphabet.
// - Create an empty array.
// - Loop through the alphabet as many times as the integer says.
//   - Create a random word with a length between 1 and 10.
//   - Store words in empty array.
// - Return random word array.

function randomWords(integer) {
  var randomWordArray = [];
  var alphabet = 'abcdefghijklmnopqrstuvwxyz'
  for (var i = 0; i < integer; i++) {
    var randomWord = '';
    var length = Math.floor(Math.random() * 10) + 1;
    for(var x = 0; x < length; x++) {
      randomWord += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
    }
    randomWordArray.push(randomWord)
  }
  return randomWordArray
}



// Driver Code------------------------------------
// var testArray = ["long phrase","longest phrase","longer phrase"]

// var testArray2 = ["lol", "lolololol", "lolol"]

// console.log(longestPhrase(testArray));
// console.log(longestPhrase(testArray2));

// var testObject1 = {name: "Steven", age: 54};
// var testObject2 = {name: "Tamir", age: 54};

// console.log(objectMatch(testObject1, testObject2));

// console.log(randomWords(4));

for (var i = 0; i < 10; i++) {
  console.log(longestPhrase(randomWords(3)))
}