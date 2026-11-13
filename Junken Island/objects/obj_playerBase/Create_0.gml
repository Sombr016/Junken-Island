path_start(pathReference,0,path_action_stop,true);
savedPathPosition = path_position;


path_end();
positionsToMove = 0;

diceRef = noone;

isPlayerReady = !isPlayer;

turnReady = false;
/*
  A flag to check if the player's personal turn is ready. Used for when the player object is 
  reinitialized after an RPS battle ends. This flag ensures that no additional dice will be 
  rolled after the battle ends.
 */



setGlobalIsPlayer = false;

//A flag to trigger UE[0]. There is definitely a better way to implement this but I don't care.

sprite_index = idle_sprite;