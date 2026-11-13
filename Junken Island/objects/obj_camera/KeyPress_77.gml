/// @description view full board
// if moving stop and disable view
if(moving){
	moving = false
	view_visible[1] = false
//enable view and start moving
} else{
	moving = true
	view_visible[1] = true
}
