function Saving_game() {
		//Constructor to grab all the data needed to be saved
		var savedData = {
			playerPosition: global.playerTilePositions,
			currentRoom: room_get_name(room),
			currentPlayerTurn: global.playerTurn,
			maxPlayersHealth: global.maxPlayerHealth,
			playerWeights: global.playerWeights
		}
		
		//Create a saved file type ofjson
		var jsonString = json_stringify(savedData)
		
		//Creates a buffer
		var bufferSave = buffer_create(string_byte_length(jsonString) + 1, buffer_grow, 1)
		
		//Write the date needed  to be aved into a JSON file
		buffer_write(bufferSave,buffer_text, jsonString)
		
		//Write to a textfile that is called Saved Data
		//Type of file: JSON
		buffer_save(bufferSave, "Saved_Data.json")
		
		buffer_delete(bufferSave)
		
		show_debug_message("You have save the game")
		
}

function Load_game() {
	
	savedFileName = "Saved_data.json"
	
	if (file_exists(savedFileName)) {
		
		//Loads the saved text file if it exists
		var loadBuffer = buffer_load(savedFileName)
		
		//Reads in what the text file holds back into the game
		var jsonString = buffer_read(loadBuffer, buffer_text)
		
		//Deletes the buffer once the file is loaded
		buffer_delete(loadBuffer)
		
		//Load the data back to the game and convert back to the JSON type
		var dataLoad = json_parse(jsonString)
		//show_debug_message("Saved player positions: "+string(dataLoad.playerPosition));
		
		for(var i = 0; i < array_length(global.playerTilePositions); i++) {
			global.playerTilePositions[i] = dataLoad.playerPosition[i];
		}
		
		//global.playerTilePositions = dataLoad.playerPosition
		global.playerTurn = dataLoad.currentPlayerTurn;
		global.playerWeights = dataLoad.playerWeights;
		global.maxPlayerHealth = dataLoad.maxPlayersHealth;
		global.movePlayersBack = true;
		
		show_debug_message("Loaded the Game")
	}
	else {
		show_debug_message("No file was save")
	}
}