// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clear_string(input_string){
	acceptable_characters = "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ";
	original_string = input_string;
	input_string = "";
	for (i = 1; i <= string_length(original_string); i++)
	{
		if (string_pos(string_char_at(original_string, i), acceptable_characters) != 0)
		{
			input_string += string_char_at(original_string, i);
		}
	}
	return input_string;
}