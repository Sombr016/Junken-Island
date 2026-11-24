gatePosition = global.gatesPosition[gateNumber-1];

//The gate is actually one position ahead of the actual gatePosition variable.
x = path_get_point_x(boardPathReference,gatePosition);
y = path_get_point_y(boardPathReference,gatePosition);
//If the gate isn't active, then make it semitransparent. This will be changed to an actual
//	animation later.
if(!global.gatesActive[gateNumber-1]) {
	image_alpha = 0.1;
}
else {
	image_alpha = 0.9;
}

//If a player is calling the gate and the gate is active, then trigger UE[0].

if(playerCallingRef != noone and global.gatesActive[gateNumber-1] and gateCall == gateNumber) {
	event_user(0);
}
if (!global.gatesActive[gateNumber-1] && diceRef != noone) {
	instance_destroy(diceRef);
	diceRef = noone;
}