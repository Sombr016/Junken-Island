//These ones are pretty obvious.
players = 4;
global.playerTurn = 1;


global.turnNumber = 0; //Counts the total amount of turns in a game.

global.isCameraMoving = false;


global.playerTilePositions = array_create(players,0); //An array of all player positions.

global.maxPlayerHealth = array_create(players,2); //An array representation of player health, which determines how many rounds are needed to lose.

gatesActive = [true,true,true] //Gates for each part of the board. As of 11/12, non-functional.

global.numberOfSquares = 15; //The amount of squares that are on the board.

immediatelyStartTurn = false; //A flag to bypass alarm[0] and immediately start the turn.


global.playerWeights = array_create(players,[0.34,0.33,0.33]); 
//Sets the default player weights for each player. 
//W[0] -> Rock W[1] -> Paper W[2] -> Scissors

turnRequested = false; //Each player requests to end the turn after they perform their actions. This flag helps with that

stopTurns = false; //Checks to see if turns need to be stopped.

gameWon = false; //A flag to check if the game has been won.

playerWon = 0; //A variable to signify which player won.

global.turnReady = true; //Checks to see if the dice is ready to be rolled.
/* The idea for this flag is for the camera object to pan over to the next player,
   and after the camera is situated the turn can begin.
*/

//A flag to check for player tile overlaps. If false, then the RPS gamemode will never trigger.

goingToBRTimer = 90; //The amount of time that alarm[2] needs before going to the BattleRoom.

global.RPSPlayers = [-1,-1] //The global representation of both RPS players.

global.RPSisPlayer = [false,false] //A flag to check if one or both of the RPS players are human-controlled.

global.movePlayersBack = true; //Checks to see if each player has to move back to their respective square.