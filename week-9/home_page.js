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



// REFLECTION

// 1.  What did you learn about the DOM?
//
// Before coming into this exercise I knew a little bit about how the DOM worked
// since I have studied JS for UX design. However, I mostly worked on Jquery
// when I was selecting elements in the DOM, so I learned how to use JavaScript's
// built in functionality to select items on the DOM from nodes using tags, elements,
// class, IDs, etc.
//
// 2.  What are some useful methods to use to manipulate the DOM?
//
// getElementById , getElementsByClassName, getElementsByTagName are three good
// methods to use to select elements on the DOM. I learned that when selecting an
// element by TagName that is actually creates an array of all that items of that
// element on a page.
