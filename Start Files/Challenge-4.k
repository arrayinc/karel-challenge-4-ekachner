/* File: Challenge-4.k
 ---------------------------
Generalize the program you wrote in Challenge 3 so that Karel
is able to climb a stair-step mountain of any height and place
a flag on its top.

Thus, in addition to climbing the mountain in that exercise,
it should be able to scale a molehill or Mount Everest.
*/

import "turns";



function approachMountain(){
	while(frontIsClear()){
		move();
	}
}



function climbMountain(){
	approachMountain();
	while(frontIsBlocked()){
		turnLeft();
		move();
		turnRight();
		move();
	}
}



function plantFlag(){
	putBeeper();
}



function descending(){
	while(rightIsClear()){
		turnRight();
		move();
		turnLeft();
	}
}



function climbDownMountain(){
	while(frontIsClear()){
		move();
		descending();
	}	
}



function Solve(){
	repeat(3){
		climbMountain();
		plantFlag();
		climbDownMountain();
	}
}