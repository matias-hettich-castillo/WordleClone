// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function word_exists(words_array, input_string)
{
	//var searchArray = argument[0];
	//var findValue = argument[1];
	var loop = 0;
	repeat (array_length_1d(words_array)) if (words_array[loop++] == input_string) return true;
	return false;
}