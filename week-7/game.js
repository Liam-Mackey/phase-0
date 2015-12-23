 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:s ave christmas town from the evil elf philip
// Overall mission: kill the renagade elf as he tries to take over the north poles capital christmas town
// Goals: Kill elf, Pick up candy cane of awesomeness, pick up santas sleigh, pickup saurons ring
// Characters: user, philip the elf, santa
// Objects: user, philip, santa, candy_cane_of_awesomeness
// Functions: attack, pickup, flee, call_santa

// Pseudocode
//create the four objects
// give user properties/functions:
	// name
	// total_health = 100
	// background_story
	// attack function
		// attackValue = random number
		//philip.total_health -= attackValue
		//IF philip.total_health < 20
			// return philip.flee
		// ELSE IF philip.total_health <= 0
			// return "Game over you win"
		// ELSE
			// philip.attack
	// pickup(argument)
		//return this.total_health += argument.benefit
	// flee
		// return user.name + " was a coward and left christmas village to burn"
	//call_santa 
		// return santa.attack 

//philip propertes and functions
	//name 
	//total_health = 100
	//background_story
	//attack
		// attackValue = random number
		// user.total_health -= attackValue
		//IF user.total_health < 20
			// return user.flee
		// ELSE IF user.total_health <= 0
			// return "Game over you lose"
		//ELSE
			//return "You survived philips attack your move"
	//flee
		// return "Philip has fled hooray!"
//santa properties and functions
	// name
	// background_story
	// attack
		// attackValue = random number
		//philip.total_health -= attackValue
		//IF philip.total_health < 20
			// return philip.flee
		// ELSE IF philip.total_health <= 0
			// return "Game over you win"
//candycane properties and functions
	//benifit = 50

// santasSliegh properties and functions 
	// benefit = 70

//sauronsRing properties and functions:
	// benefit = 100






//
//
//
//

// Initial Code
// var user = {
// 	name: "Motembe",
// 	total_health: 100,
// 	background_story: "Motembe was born in the congo where he lead an ancient african scoiety to take over the roman empire, after the rise of charlegmagne motembe moved to teh north pole where he worked as santas accountant, however he has not forgotten his great warrior roots!",
// 	attack: function(){
// 		var attackValue = Math.floor((Math.random()* 100) + 1);
// 		philip.total_health -= attackValue;
// 		if (philip.total_health <= 20){
// 			return philip.flee();
// 		}
// 		else if (philip.total_health <= 0){
// 			return "Game over you win you have slain the mighty philip dark lord of elves now all christmas village has been freed for his tyranny";
// 		}
// 		else{
// 			return philip.attack();
// 		};
// 	},
// 	pickUp: function(item){
// 		user.total_health += item;
// 	},
// 	flee: function(){
// 		return user.name + " has fled and left christmas village to burn! How shameful"
// 	},
// 	call_santa: function(){
// 		return santa.attack();
// 	},
// };
// var philip = {
// 	name: "Philip Dark Lord of elves",
// 	total_health: 100,
// 	background_story: "Philip was santas favorite elf but philip soon started a secret love affair wit Mrs.Claus, When santa found out philip was exiled from chistmas village. He fled into the badlands of detroit and joined the Latin Kings where he soon became a leader of the sinaloa cartel, after earning enough money he went back to take the ultimate revenge on santa and rule christmas village with Mrs.Claus",
// 	attack: function(){
// 		var attackValue = Math.floor((Math.random() * 100) + 1);
// 		user.total_health -= attackValue;
// 		if (user.total_health <= 20){
// 			return user.flee();
// 		}
// 		else if (user.total_health <= 0){
// 			return "Game over you lose, Philip will now rule christmas village eternally";
// 		}
// 		else{
// 			return "You survived philips attack your move";
// 		};
// 	},
// 	flee: function(){
// 		return "Philip has fled back to his cocaine loaded mansion in miami where he will spend his days getting frustrated with the miami dolphins and courting vulnerable senior citizens who are not disturbed by his small elf like figure, Christmas Village is Saved!";
// 	},
// };
// var santa = {
// 	name: "Santa Claus",
// 	background_story: "Born in west Bavaria " + this.name + " was a humble computer programmer for the Dark Lord Vader, after the Jedi gained control of Bavaria he began a chocolate shop which was so successful that he retired to the north pole where after mastering the force and recieving magical powers he started giving gifts to chilfden its has been that way since 10000 B.C",
// 	attack: function(){
// 		var attackValue = Math.floor((Math.random() * 100) + 1);
// 		philip.total_health -= attackValue;
// 		if (philip.total_health <= 20){
// 			return philip.flee();
// 		}
// 		else if (philip.total_health <= 0){
// 			return "Santa has vanquished his mortal enemy Philip, Now the boy and girl elves will be able to work for minimum wage in a toy Factory again! Yay for judeo-christian inspired capitalism!";
// 		}
// 		else{
// 			return "Philip is still not vanquished, hurry up and make a move before he does!"
// 		};
// 	},
// };
// var candyCane = {
// 	benefit: 50,
// };
// var santasSliegh = {
// 	benefit: 70,
// };
// var sauronsRing = {
// 	benefit: 100,
// };






// ans = user.attack();

// if (ans === "You survived philips attack your move"){
// 	console.log(ans);
// 	console.log(user.call_santa());
// }
// else{
// 	console.log(ans);
// }



// Refactored Code
var survive = "You survived philips attack your move"
var user = {
	name: "Motembe",
	total_health: 100,
	background_story: "Motembe was born in the congo where he lead an ancient african scoiety to take over the roman empire, after the rise of charlegmagne motembe moved to teh north pole where he worked as santas accountant, however he has not forgotten his great warrior roots!",
	attack: function(){
		var attackValue = Math.floor((Math.random()* 100) + 1);
		philip.total_health -= attackValue;
		if (philip.total_health <= 0)
			return "Game over you win you have slain the mighty philip dark lord of elves now all christmas village has been freed for his tyranny";
		else if (philip.total_health <= 20)
			return philip.flee();
		else
			return philip.attack();
		
	},
	pickUp: function(item){
		newHealth = this.total_health += item.benefit;
		return "Your new total health is " + newHealth;
	},
	flee: function(){
		return this.name + " has fled and left christmas village to burn! How shameful"
	},
	call_santa: function(){
		return santa.attack();
	},
};
var philip = {
	name: "Philip Dark Lord of elves",
	total_health: 100,
	background_story: "Philip was santas favorite elf but philip soon started a secret love affair wit Mrs.Claus, When santa found out philip was exiled from chistmas village. He fled into the badlands of detroit and joined the Latin Kings where he soon became a leader of the sinaloa cartel, after earning enough money he went back to take the ultimate revenge on santa and rule christmas village with Mrs.Claus",
	attack: function(){
		var attackValue = Math.floor((Math.random() * 100) + 1);
		user.total_health -= attackValue;
		if (user.total_health <= 0)
			return "Game over you lose, Philip will now rule christmas village eternally";
		else if (user.total_health <= 20)
			return user.flee();
		else
			return survive;
	},
	flee: function(){
		return "Philip has fled back to his cocaine loaded mansion in miami where he will spend his days getting frustrated with the miami dolphins and courting vulnerable senior citizens who are not disturbed by his small elf like figure, Christmas Village is Saved!";
	},
};
var santa = {
	name: "Santa Claus",
	background_story: "Born in west Bavaria Santa Claus was a humble computer programmer for the Dark Lord Vader, after the Jedi gained control of Bavaria he began a chocolate shop which was so successful that he retired to the north pole where after mastering the force and recieving magical powers he started giving gifts to chilfden its has been that way since 10000 B.C",
	attack: function(){
		var attackValue = Math.floor((Math.random() * 100) + 1);
		philip.total_health -= attackValue;
		if (philip.total_health <= 0)
			return "Santa has vanquished his mortal enemy Philip, Now the boy and girl elves will be able to work for minimum wage in a toy Factory again! Yay for judeo-christian inspired capitalism!";
		else if (philip.total_health <= 20)
			return philip.flee();
		else
			return "Philip is still not vanquished, hurry up and make a move before he does!"
	},
};
var candyCane = {
	benefit: 50,
};
var santasSliegh = {
	benefit: 70,
};
var sauronsRing = {
	benefit: 100,
};





console.log(user.background_story);
console.log(" ");
console.log(philip.background_story);
console.log(" ");
console.log(santa.background_story);
console.log(" ");
ans = user.attack();

if (ans === survive){
	console.log(ans);
	console.log(" ");
	console.log(user.pickUp(candyCane));
	console.log(" ");
	ans2 = user.call_santa();
	if (ans2 === "Philip is still not vanquished, hurry up and make a move before he does!" ){
		console.log(ans2);
		console.log(" ");
		console.log(user.attack());
	}
	else{
		console.log(ans2);
	};
}
else{
	console.log(ans);
};





// Reflection
/*

What was the most difficult part of this challenge?
Coming up with an awesome story! Nah just kidding that was easy the hardest part was making sure that all my syntax was correct this was along program.
What did you learn about creating objects and functions that interact with one another?
I learned that it is relativley easy pass functions between objects. You just call te object the a dot then its function.
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
Most of my solution was simplc code it was just a lot of it I did learn how to use the this object though which is basically the same as self in ruby. It refers to the current object. I also refactored my code for dryness.
How can you access and manipulate properties of objects?
You can use dot notation or bracket notation outside of the object but you can also use literal notation inside the object.




*/
//
//
//
//
//
//
//