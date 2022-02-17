/// @description Insert description here
// You can write your code in this editor

state = 1;

// Action

if (obj_player.languaje == 1)
{
	dictionary.words = dictionary.words_esp;
	image = spr_game_title_esp;
	obj_player.languaje = 2;
}

else
{
	dictionary.words = dictionary.words_eng;
	image = spr_game_title_eng;
	obj_player.languaje = 1;
}