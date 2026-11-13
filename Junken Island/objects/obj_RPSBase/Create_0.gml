weights = global.playerWeights[playerNumber-1];

learningRate = 0.01; //The rate as to which the weights change based on the player's decision.
//This will likely not function at First Playable. Sorry. 



if(debug) {show_debug_message("Weights: "+string(weights)+".");}

isPlayerReady = !isPlayer;



//Honestly, not sure why I made this object. It's just here, I guess?
