
playerCallingRef = noone;


diceRef = noone;


gateCall = 0;

sprite_index = gateClosedSprite;

enum gateState {
	closed,
	opening,
	open
}

currGateState = gateState.closed;
