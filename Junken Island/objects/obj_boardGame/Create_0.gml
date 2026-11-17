#region //Turn logic variables.
//These ones are pretty obvious.
players = 4;
global.playerTurn = 1;

global.turnNumber = 0; //Counts the total amount of turns in a game.

immediatelyStartTurn = false; //A flag to bypass alarm[0] and immediately start the turn.


turnRequested = false; //Each player requests to end the turn after they perform their actions. This flag helps with that

global.turnReady = true; //Checks to see if the dice is ready to be rolled.
/* The idea for this flag is for the camera object to pan over to the next player,
   and after the camera is situated the turn can begin.
*/

stopTurns = false; //Checks to see if turns need to be stopped.

gameWon = false; //A flag to check if the game has been won.

playerWon = 0; //A variable to signify which player won.


displayTurnText = true; // A flag to display which player's turn it is.

#endregion


#region //Squares and tiles.

global.playerTilePositions = array_create(players,0); //An array of all player positions.

global.numberOfSquares = 15; //The amount of squares that are on the board.

#endregion

#region //Gate Logic.


global.gatesActive = [true,true,true] //Gates for each part of the board. As of 11/12, non-functional.

global.gatesPosition = [14,28,42];

#endregion





#region //Battle Room Globals and timings.
goingToBRTimer = 90; //The amount of time that alarm[2] needs before going to the BattleRoom.

global.RPSPlayers = [-1,-1] //The global representation of both RPS players.

global.RPSisPlayer = [false,false] //A flag to check if one or both of the RPS players are human-controlled.

global.movePlayersBack = true; //Checks to see if each player has to move back to their respective square.

global.maxPlayerHealth = array_create(players,2); //An array representation of player health, 
// which determines how many rounds are needed to lose.

global.playerWeights = array_create(players,[0.34,0.33,0.33]);

//Sets the default player weights for each player. 
//W[0] -> Rock W[1] -> Paper W[2] -> Scissors

#endregion

//Misc variables that don't fit in any of these regions.
global.speedMult = 1.5; //A global speed multipler that speeds up the game.


global.isCameraMoving = false; //Is the camera moving? I dunno.