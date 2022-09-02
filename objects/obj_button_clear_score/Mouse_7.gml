event_inherited()

// Define button action
if (visible)
{
	with (obj_player)
	{
		win_score = 0
		lose_score = 0
	}
	save_game()
	show_debug_message("Score cleared!")
}