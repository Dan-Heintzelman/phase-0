// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:




// Release 1:

var first_div = document.getElementById('release-0')
 first_div.className += 'done';


// Release 2:
var second_div = document.getElementById('release-1')
	second_div.style.display = "none";


// Release 3:
var firstH1 = document.getElementsByTagName('h1')[0]
	firstH1.innerHTML = "I completed release 2.";


// Release 4:

document.getElementById('release-3').style.backgroundColor = "#955251";




// Release 5:

var rel4 = document.getElementsByClassName('release-4')
for (var i = 0; i < rel4.length; i++) {
	rel4[i].style.fontSize = "2.0em";
}



var templ = document.getElementById('hidden');
document.body.appendChild(templ.content.cloneNode(true));
