// Inherit the parent event
event_inherited();

if (!global.mid_transition and visible)
{
	if (obj_music_player.master_volume == obj_music_player.max_volume)
		obj_music_player.master_volume = obj_music_player.min_volume
	else
		obj_music_player.master_volume = obj_music_player.max_volume
	save_game()
}