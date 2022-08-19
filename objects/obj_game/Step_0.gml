// Hide prompt if the player has entered the letter limit
if (string_length(player_word) >= limit) input_prompt = " "

// Hide prompt if the player has won or loose the game
if (game_state == game_states.win or game_state == game_states.lose) input_prompt = " "

// All keyboard input to uppercase
keyboard_string = string_upper(keyboard_string)

// Check if gamestate is play
if (game_state == game_states.play)
{
	// Receive player input until limit
	if (string_length(keyboard_string) <= limit)
	{
		// Clear keyboard_string numbers and symbols
		player_word = clean_string(keyboard_string)
		keyboard_string = player_word
	}
	
	// Replace with previous string
	else
		keyboard_string = player_word
}