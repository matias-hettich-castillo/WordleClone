// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_array_search(array, item){
	show_debug_message("letter: " + string(item));
	position = -1;
	for (i = 0; i < array_length(array); i++)
	{
		if (array[i] == item)
		{
			position = i;
			break;
		}
	}
	show_debug_message("position: " + string(position));
	return position;
}