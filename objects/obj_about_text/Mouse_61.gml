/// @description Insert description here
// You can write your code in this editor

y -= 8

if (y < -110)
{
	y = -110
	audio_play_sound(snd_miss, 100, false)
}

else
{
	audio_play_sound(snd_type, 100, false)
}