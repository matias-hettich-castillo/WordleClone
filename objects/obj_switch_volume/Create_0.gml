// Inherit the parent event
event_inherited();

if (obj_music_player.master_volume == obj_music_player.max_volume)
	switch_state = switch_states.switch_idle_on
else
	switch_state = switch_states.switch_idle_off
