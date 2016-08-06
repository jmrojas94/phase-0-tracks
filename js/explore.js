// Reverse Method
// - Create a method that takes in a string.
// - Create a new empty string variable.
// - Loop through the string length backwards.
// 	- Store each letter into empty string variable.
// - Return the new string.

function reverse(string){
	newString = '';
	for(var i = string.length -1; i >= 0; i-=1){
		newString += string[i];
	}
	return newString;
}

console.log(reverse("juan"))