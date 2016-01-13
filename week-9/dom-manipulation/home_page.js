
// DOM Manipulation Challenge


var temp = document.getElementById('hidden');
document.body.appendChild(temp.content.cloneNode(true));
// I worked on this challenge [by myself, with: ].

// Add your JavaScript calls to this page:

// Release 0:



// Release 1:
var rel0 = document.getElementById('release-0');
rel0.setAttribute('class', 'done');



// Release 2:

var rel2 = document.getElementById("release-1");
rel2.style.display = "none";


// Release 3:
var rel3 = document.getElementsByTagName('h1')[0];
rel3.innerHTML = 'I completed release 2';



// Release 4:

var rel4 = document.getElementById("release-3");
rel4.style.backgroundColor = "#955251";


// Release 5:
var rel5 = document.getElementsByClassName('release-4');
for(var i = 0; i < rel5.length; i++) {
	var el = rel5[i]
  el.style.fontSize = '2em';
};

// Release 6:


/*
Reflection:
What did you learn about the DOM?
I learned that traversing the dom is not as easy as itlooks. You need to have a good knowledege of DOM methods and be prepared to run into issues.
What are some useful methods to use to manipulate the DOM?
You can use getElementsByClassName. AppendChild. setAttribute and many others. 
It is harder than it looks to solve dom related problems.






*/