if (!global.mid_transition and visible)
{
	switch(switch_state)
	{
		case switch_states.switch_active_on:
			switch_state = switch_states.switch_active_off
			audio_play_sound(snd_click, 100, false)
			break
		case switch_states.switch_active_off:
			switch_state = switch_states.switch_active_on
			audio_play_sound(snd_click, 100, false)
			break
	}
}