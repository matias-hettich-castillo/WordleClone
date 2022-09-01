event_inherited()

// Define button action
if (!global.mid_transition)
{
	// Load Game
	load_game()
	
	// Transition to game room
	transition_start(rm_game_screen, sq_fadeout, sq_fadein)
}