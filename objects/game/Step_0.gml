/// @description Game loop
// You can write your code in this editor

// hide the input_prompt if the word is long enough
if (string_length(player_word) >= limit)
{
	// hide prompt
	input_prompt = " ";
}

// hide the input_prompt if the player has won or loose
if (state == 3 or state == 2)
{
	// hide_prompt
	input_prompt = " ";
}

// All keyboard input to uppercase
keyboard_string = string_upper(keyboard_string);

if (state == "0")
{
	// Choose word
	pos = random(4);
	word = dictionary.words_esp[pos];
	state = "1";
}

else if (state == "1")
{
	// Receive player input
	if (string_length(keyboard_string) <= limit)
	{
		// Clear keyboard_string numbers and symbols
		player_word = clear_string(keyboard_string);
		keyboard_string = player_word;
	}
	
	else
	{
		keyboard_string = player_word;
	}
}