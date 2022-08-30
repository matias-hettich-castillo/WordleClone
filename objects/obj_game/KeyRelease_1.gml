if (!keyboard_check_released(vk_enter) and window_has_focus())
	audio_play_sound(snd_type, 100, false)