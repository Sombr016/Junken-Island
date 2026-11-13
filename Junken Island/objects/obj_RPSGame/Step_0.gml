if(isInRPS) {
	//Button functionality. If each respective button is pushed, then delete all other player buttons and eventually delete itself.
	//Additionally, set the respective player's decision to said button option.
	if(global.RPSisPlayer[0]) {
		with(rockButton1) {
			if(show_rock) {
				other.RPSDecisions[0] = "Rock";
				alarm[0] = 30;
				instance_destroy(other.paperButton1);
				instance_destroy(other.scissorsButton1);
			}
		}
		with(paperButton1) {
			if(show_paper) {
				other.RPSDecisions[0] = "Paper";
				alarm[0] = 30;
				instance_destroy(other.scissorsButton1);
				instance_destroy(other.rockButton1);
			}
		}
		with(scissorsButton1) {
			if(show_scissors) {
				other.RPSDecisions[0] = "Scissors";
				alarm[0] = 30;
				instance_destroy(other.paperButton1);
				instance_destroy(other.rockButton1);
			}
		}
	}
	else {
		//If player1 is NOT a human-controlled player, then set an alarm with a random range to determine the AI's choice, given
		// it's current weights.
		if (alarm[0] < 0 && RPSDecisions[0] == "Nothing") {
			alarm[0] = irandom_range(AIResponseLow,AIResponseHigh);
			//These two variables are the range of how long the AI should take to pick their option.
		}
	}
	//The same thing as above, but for player 2.
	if(global.RPSisPlayer[1]) {
		with(rockButton2) {
			if(show_rock) {
				other.RPSDecisions[1] = "Rock";
				alarm[0] = 30;
				instance_destroy(other.paperButton2);
				instance_destroy(other.scissorsButton2);
			}
		}
		with(paperButton2) {
			if(show_paper) {
				pther.RPSDecisions[1] = "Paper";
				alarm[0] = 30;
				instance_destroy(other.scissorsButton2);
				instance_destroy(other.rockButton2);
			}
		}
		with(scissorsButton2) {
			if(show_scissors) {
				other.RPSDecisions[1] = "Scissors";
				alarm[0] = 30;
				instance_destroy(other.paperButton2);
				instance_destroy(other.rockButton2);
			}
		}
	}
	else {
		if(alarm[1] < 0 && RPSDecisions[1] == "Nothing") {
			alarm[1] = irandom_range(AIResponseLow,AIResponseHigh);
		}
	}
	//If both agents have made a decision, and the cleanUpTimer hasn't already started, then set alarms to both
	//Display player options (alarm[3]) and clean up the current boardGame round (alarm[2]).
	if(RPSDecisions[0] != "Nothing" and RPSDecisions[1] != "Nothing" and alarm[2] < 0) {
		show_debug_message("Player 1 has decided: "+string(RPSDecisions[0]));
		show_debug_message("Player 2 has decided: "+string(RPSDecisions[1]));
		alarm[3] = revealTimer;
		alarm[2] = cleanUpTimer;
	}
}