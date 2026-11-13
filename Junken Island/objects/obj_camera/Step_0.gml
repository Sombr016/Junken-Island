/// @description camera targeting amd movement
if(moving){
		// finding target player to move to
	with obj_playerBase{
		if(playerNumber == global.playerTurn){
			other.target = id
		}
	}

	// Check if the target object exists to avoid a crash
	if (instance_exists(target)) {
		// Stops the camera if it is at the target
		if (point_distance(x, y, target.x, target.y) > moveSpeed) {
			global.cameraMoving = true;
			move_towards_point(target.x, target.y, moveSpeed);
		} else {
			global.cameraMoving = false;
		  // Stop exactly at the object's position
			x = target.x;
			y = target.y;
			speed = 0; 
		}
	}
}