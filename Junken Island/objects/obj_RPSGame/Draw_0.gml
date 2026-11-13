///@description Draws the sprites for each player's decision when revealDecisions is true.
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