players = 4;
global.playerTurn = 1;
global.turnNumber = 0;

global.playerTilePositions = array_create(players,0);

gatesActive = [true,true,true]

global.numberOfSquares = 13;


turnRequested = false; //Each player requests to end the turn after they perform their actions. This flag helps with that

stopTurns = false; //Checks to see if turns need to be stopped.

gameWon = false; //A flag to check if the game has been won.

playerWon = 0; //A variable to signify which player won.

global.turnReady = true; //Checks to see if the dice is ready to be rolled.
/* The idea for this flag is for the camera object to pan over to the next player,
   and after the camera is situated the turn can begin.
*/