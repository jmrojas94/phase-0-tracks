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
	currentLongestPhrase = '';
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > currentLongestPhrase.length) {
			currentLongestPhrase = array[i];
		}
	}
	console.log(currentLongestPhrase);
}

// Release 1--------------------------------------
// Pseudocode
// - Create a function that takes in two objects.
// - Loop through the object.
//  - If the two objects key match,
//    - Return true.
//  - Else,
//    - Return false.





// Driver Code------------------------------------
var testArray = ["long phrase","longest phrase","longer phrase"]

var testArray2 = ["lol", "lolololol", "lolol"]

longestPhrase(testArray);
longestPhrase(testArray2);