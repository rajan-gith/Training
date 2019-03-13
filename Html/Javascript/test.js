var a = document.getElementsByTagName('p')

document.getElementById("demo").innerHTML = 5 + 6;

window.alert("The content of paragraph tag has been changed")


var a=4
var b=5
console.log(a+b)
console.log("Above was the addition of variables a and b")
console.log("John" + " " + "Doe") //string concatenation

//This is a single line comment

/* this 
is 
a multiline comment*/


var x = "5" + 2 + 3;
console.log(x) // after the five  other operators are considered as strings.

var x = 2 + 3 + "5"; // before the string other operators were considerd as numeric and then after as string.
console.log(x)

var x = 10;
x += 5;
document.getElementById("demo").innerHTML = x;
