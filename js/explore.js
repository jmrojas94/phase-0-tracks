function reverse(string){
	newString = '';
	for(var i = string.length -1; i >= 0; i-=1){
		newString += string[i];
	}
	return newString;
}

console.log(reverse("juan"))