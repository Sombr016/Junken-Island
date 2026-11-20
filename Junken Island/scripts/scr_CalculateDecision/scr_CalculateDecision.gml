///@description Returns a string that represents the AI's decision.
///@param weight1 - The player's weight 1
///@param weight2 - The player's weight 2
///@param weight3 - The player's weight 3
///@returns {string} A string representation of Rock, Paper, or Scissors.

//If it were to be numbers, then 0 -> Rock, 1 -> Paper 2-> Scissors
function scr_CalculateDecision(weight1,weight2,weight3){
	randomize();
	show_debug_message("calculating...");
	var rolledNumber = irandom_range(1,1000);
	if(rolledNumber <= 1000*weight1) {
		return "Rock"; 
	}
	else if(rolledNumber <= (1000*weight1 + 1000*weight2)) {
		return "Paper";
	}
	else {
		return "Scissors";
	}
}