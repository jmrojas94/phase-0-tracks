console.log("script running");
var title1 = document.getElementById("title-1");
title1.style.backgroundColor = "red";
var title2 = document.getElementById("title-2");
title2.style.border = ("2px solid blue");
var p3 = document.createElement("p");
var node = document.createTextNode("lorem ipsum...");
p3.appendChild(node);
var div2 = document.getElementById("div-2")
div2.appendChild(p3);
function turnTextGreen(event) {
	event.target.style.color = "green";
}

var p1 = document.getElementById("p-1");
p1.addEventListener("click", turnTextGreen);