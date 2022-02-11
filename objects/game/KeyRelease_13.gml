/// @description Insert description here
// You can write your code in this editor


if (state != 2 || state != 3)
{	
	// Check player_word length
	if (string_length(player_word) < limit)
	{
		// Word not long enough
		response = "Too short";
	}

	else if (string_length(player_word) >= limit)
	{
		// Check if word exists
		if (word_exists(dictionary.words, player_word))
		{
			// Input player_word into game_word
			game_word += player_word;
			
			if (player_word == word)
			{
				// WIN state
				keyboard_string = "";
				player_word = "";
				game_word += chr(10);
				state = 2;
				response = "You Win!";
			}
	
			else
			{
				// Check for lose state or next turn
				if (player_turn >= 5)
				{
					// LOSE state
					keyboard_string = "";
					player_word = "";
					game_word += chr(10);
					state = 3;
					response = "You loose!";
				}
		
				else
				{
					// Check which letters are in the word
					
					
					// Next Turn
					keyboard_string = "";
					game_word += chr(10);
					player_turn += 1;
					response = "Try again!";
				}
			}
		}
		
		else
		{
			// Word doesnt exists
			response = "That word don't exist";
		}
	}

	else
	{
		// ERROR the word is too long!
	}
}

