///@description Various draw events.
#region Draws the sprites for each player's decision when revealDecisions is true.
if(RPSDecisions[0] != "Nothing" && revealDecisions) {
	switch RPSDecisions[0]{
		case "Rock":
			draw_sprite(spr_rock, 0, playerPosition[0][0], playerPosition[0][1]-30)
		break;
		case "Paper":
			draw_sprite(spr_paper, 0, playerPosition[0][0], playerPosition[0][1]-30)
		break;
		case "Scissors":
			draw_sprite(spr_scissors, 0, playerPosition[0][0], playerPosition[0][1]-30)
		break;
	}
}
if(RPSDecisions[1] != "Nothing" && revealDecisions) {
	switch RPSDecisions[1]{
		case "Rock":
			draw_sprite(spr_rock, 0, playerPosition[1][0], playerPosition[1][1]-30)
		break;
		case "Paper":
			draw_sprite(spr_paper, 0, playerPosition[1][0], playerPosition[1][1]-30)
		break;
		case "Scissors":
			draw_sprite(spr_scissors, 0, playerPosition[1][0], playerPosition[1][1]-30)
		break;
	}
}

#endregion


#region Draws the sprite representations of player health.

var startX = playerPosition[0][0] - (global.maxPlayerHealth[global.RPSPlayers[0]-1]*30)/2
//var jump = int64((global.maxPlayerHealth[global.RPSPlayers[0]-1])/10)
for(var i = 0; i < global.maxPlayerHealth[global.RPSPlayers[0]-1]; i++) {
	if(i < playersHealth[0]) {
		draw_sprite_ext(spr_heartfull,-1,startX+(i*30),playerPosition[0][1]+100,3,3,0,c_red,1);
	}
	else {
		draw_sprite_ext(spr_heartempty,-1,startX+(i*30),playerPosition[0][1]+100,3,3,0,c_red,1);
	}
}

startX = playerPosition[1][0] - (global.maxPlayerHealth[global.RPSPlayers[1]-1]*30)/2
for(var i = 0; i < global.maxPlayerHealth[global.RPSPlayers[1]-1]; i++) {
	if(i < playersHealth[1]) {
		draw_sprite_ext(spr_heartfull,-1,startX+(i*30),playerPosition[1][1]+100,3,3,0,c_red,1);
	}
	else {
		draw_sprite_ext(spr_heartempty,-1,startX+(i*30),playerPosition[1][1]+100,3,3,0,c_red,1);
	}
}


#endregion
