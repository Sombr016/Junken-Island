//Whatever amount of faces there are on the die.
faces = 6;

//A reference to the player object that calls obj_die. Used for movement mostly
playerReference = noone;

//The final value the die puts out.
diceValue = 0;

//A normalized (0->1) value that determines how fast the animation plays.
image_speed = 0;

//See UE[0].
event_user(0);


//How fast/slow the spin speed degrades.
spriteFrameSpeed = 30;

//The threshold needed before slowing down stops.
slowDownThreshold = 0.2;