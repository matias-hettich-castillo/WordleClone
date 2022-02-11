/// @description Insert description here
// You can write your code in this editor


if (state != 2 || state != 3)
{	
	// Check player_word length
	if (string_length(player_word) < limit)
	{
		// Word not long enough
		response = "Too short.";
	}

	else if (string_length(player_word) >= limit)
	{
		// Check if word exists
		if (word_exists(dictionary.words, player_word))
		{
			// Input player_word into game_word
			//game_word += player_word;
			
			if (player_word == word)
			{
				// Input the word into the letter spaces according the turn
				switch (player_turn)
				{
					// First line
					case 1:
						// First letter
						obj_letter_1x1.letter = string_char_at(player_word, 1);
						obj_letter_1x1.letter_color = c_lime;
						obj_letter_1x2.letter = string_char_at(player_word, 2);
						obj_letter_1x2.letter_color = c_lime;
						obj_letter_1x3.letter = string_char_at(player_word, 3);
						obj_letter_1x3.letter_color = c_lime;
						obj_letter_1x4.letter = string_char_at(player_word, 4);
						obj_letter_1x4.letter_color = c_lime;
						obj_letter_1x5.letter = string_char_at(player_word, 5);
						obj_letter_1x5.letter_color = c_lime;
						break;
					// Second line
					case 2:
						// First letter
						obj_letter_2x1.letter = string_char_at(player_word, 1);
						obj_letter_2x1.letter_color = c_lime;
						obj_letter_2x2.letter = string_char_at(player_word, 2);
						obj_letter_2x2.letter_color = c_lime;
						obj_letter_2x3.letter = string_char_at(player_word, 3);
						obj_letter_2x3.letter_color = c_lime;
						obj_letter_2x4.letter = string_char_at(player_word, 4);
						obj_letter_2x4.letter_color = c_lime;
						obj_letter_2x5.letter = string_char_at(player_word, 5);
						obj_letter_2x5.letter_color = c_lime;
						break;
					// Third line
					case 3:
						// First letter
						obj_letter_3x1.letter = string_char_at(player_word, 1);
						obj_letter_3x1.letter_color = c_lime;
						obj_letter_3x2.letter = string_char_at(player_word, 2);
						obj_letter_3x2.letter_color = c_lime;
						obj_letter_3x3.letter = string_char_at(player_word, 3);
						obj_letter_3x3.letter_color = c_lime;
						obj_letter_3x4.letter = string_char_at(player_word, 4);
						obj_letter_3x4.letter_color = c_lime;
						obj_letter_3x5.letter = string_char_at(player_word, 5);
						obj_letter_3x5.letter_color = c_lime;
						break;
					// Fourth line
					case 4:
						// First letter
						obj_letter_4x1.letter = string_char_at(player_word, 1);
						obj_letter_4x1.letter_color = c_lime;
						obj_letter_4x2.letter = string_char_at(player_word, 2);
						obj_letter_4x2.letter_color = c_lime;
						obj_letter_4x3.letter = string_char_at(player_word, 3);
						obj_letter_4x3.letter_color = c_lime;
						obj_letter_4x4.letter = string_char_at(player_word, 4);
						obj_letter_4x4.letter_color = c_lime;
						obj_letter_4x5.letter = string_char_at(player_word, 5);
						obj_letter_4x5.letter_color = c_lime;
						break;
					// Fifth line
					case 5:
						// First letter
						obj_letter_5x1.letter = string_char_at(player_word, 1);
						obj_letter_5x1.letter_color = c_lime;
						obj_letter_5x2.letter = string_char_at(player_word, 2);
						obj_letter_5x2.letter_color = c_lime;
						obj_letter_5x3.letter = string_char_at(player_word, 3);
						obj_letter_5x3.letter_color = c_lime;
						obj_letter_5x4.letter = string_char_at(player_word, 4);
						obj_letter_5x4.letter_color = c_lime;
						obj_letter_5x5.letter = string_char_at(player_word, 5);
						obj_letter_5x5.letter_color = c_lime;
						break;
				}
				
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
					array_exist = [0, 0, 0, 0, 0];
					for (i = 1; i <= 5; i++)
					{
						for (j = 1; j <= 5; j++)
						{
							if (string_char_at(word, j) == string_char_at(player_word, i))
							{
								array_exist[i-1] = 1;
							}
						}
					}
					
					array_correct = [0, 0, 0, 0, 0];
					for (i = 1; i <= 5; i++)
					{
						if (string_char_at(word, i) == string_char_at(player_word, i))
						{
							array_correct[i-1] = 1;
						}
					}
					
					
					// Last line
					obj_letter_5x1.letter_color = c_black;
					obj_letter_5x2.letter_color = c_black;
					obj_letter_5x3.letter_color = c_black;
					obj_letter_5x4.letter_color = c_black;
					obj_letter_5x5.letter_color = c_black;
					
					// First letter
					obj_letter_5x1.letter = string_char_at(player_word, 1);
					if (array_exist[0] == 1)
					{
						obj_letter_5x1.letter_color = c_yellow;
					}
					if (array_correct[0] == 1)
					{
						obj_letter_5x1.letter_color = c_lime;
					}
						
					// Second letter
					obj_letter_5x2.letter = string_char_at(player_word, 2);
					if (array_exist[1] == 1)
					{
						obj_letter_5x2.letter_color = c_yellow;
					}
					if (array_correct[1] == 1)
					{
						obj_letter_5x2.letter_color = c_lime;
					}
						
					// Third letter
					obj_letter_5x3.letter = string_char_at(player_word, 3);
					if (array_exist[2] == 1)
					{
						obj_letter_5x3.letter_color = c_yellow;
					}
					if (array_correct[2] == 1)
					{
						obj_letter_5x3.letter_color = c_lime;
					}
						
					// Fourth letter
					obj_letter_5x4.letter = string_char_at(player_word, 4);
					if (array_exist[3] == 1)
					{
						obj_letter_5x4.letter_color = c_yellow;
					}
					if (array_correct[3] == 1)
					{
						obj_letter_5x4.letter_color = c_lime;
					}
						
					// Fifth letter
					obj_letter_5x5.letter = string_char_at(player_word, 5);
					if (array_exist[4] == 1)
					{
						obj_letter_5x5.letter_color = c_yellow;
					}
					if (array_correct[4] == 1)
					{
						obj_letter_5x5.letter_color = c_lime;
					}
						
					// LOSE state
					keyboard_string = "";
					player_word = "";
					game_word += chr(10);
					state = 3;
					response = "You loose.";
				}
		
				else
				{
					// Check which letters are in the word
					array_exist = [0, 0, 0, 0, 0];
					for (i = 1; i <= 5; i++)
					{
						for (j = 1; j <= 5; j++)
						{
							if (string_char_at(word, j) == string_char_at(player_word, i))
							{
								array_exist[i-1] = 1;
							}
						}
					}
					
					array_correct = [0, 0, 0, 0, 0];
					for (i = 1; i <= 5; i++)
					{
						if (string_char_at(word, i) == string_char_at(player_word, i))
						{
							array_correct[i-1] = 1;
						}
					}
					
					// Input the word into the letter spaces according the turn
				switch (player_turn)
				{
					// First line
					case 1:
						obj_letter_1x1.letter_color = c_black;
						obj_letter_1x2.letter_color = c_black;
						obj_letter_1x3.letter_color = c_black;
						obj_letter_1x4.letter_color = c_black;
						obj_letter_1x5.letter_color = c_black;
						
						// First letter
						obj_letter_1x1.letter = string_char_at(player_word, 1);
						if (array_exist[0] == 1)
						{
							obj_letter_1x1.letter_color = c_yellow;
						}
						if (array_correct[0] == 1)
						{
							obj_letter_1x1.letter_color = c_lime;
						}
						
						obj_letter_1x2.letter = string_char_at(player_word, 2);
						if (array_exist[1] == 1)
						{
							obj_letter_1x2.letter_color = c_yellow;
						}
						if (array_correct[1] == 1)
						{
							obj_letter_1x2.letter_color = c_lime;
						}
						
						obj_letter_1x3.letter = string_char_at(player_word, 3);
						if (array_exist[2] == 1)
						{
							obj_letter_1x3.letter_color = c_yellow;
						}
						if (array_correct[2] == 1)
						{
							obj_letter_1x3.letter_color = c_lime;
						}
						
						obj_letter_1x4.letter = string_char_at(player_word, 4);
						if (array_exist[3] == 1)
						{
							obj_letter_1x4.letter_color = c_yellow;
						}
						if (array_correct[3] == 1)
						{
							obj_letter_1x4.letter_color = c_lime;
						}
						
						obj_letter_1x5.letter = string_char_at(player_word, 5);
						if (array_exist[4] == 1)
						{
							obj_letter_1x5.letter_color = c_yellow;
						}
						if (array_correct[4] == 1)
						{
							obj_letter_1x5.letter_color = c_lime;
						}
						
						break;
					// Second line
					case 2:
						obj_letter_2x1.letter_color = c_black;
						obj_letter_2x2.letter_color = c_black;
						obj_letter_2x3.letter_color = c_black;
						obj_letter_2x4.letter_color = c_black;
						obj_letter_2x5.letter_color = c_black;
						
						// First letter
						obj_letter_2x1.letter = string_char_at(player_word, 1);
						if (array_exist[0] == 1)
						{
							obj_letter_2x1.letter_color = c_yellow;
						}
						if (array_correct[0] == 1)
						{
							obj_letter_2x1.letter_color = c_lime;
						}
						
						obj_letter_2x2.letter = string_char_at(player_word, 2);
						if (array_exist[1] == 1)
						{
							obj_letter_2x2.letter_color = c_yellow;
						}
						if (array_correct[1] == 1)
						{
							obj_letter_2x2.letter_color = c_lime;
						}
						
						obj_letter_2x3.letter = string_char_at(player_word, 3);
						if (array_exist[2] == 1)
						{
							obj_letter_2x3.letter_color = c_yellow;
						}
						if (array_correct[2] == 1)
						{
							obj_letter_2x3.letter_color = c_lime;
						}
						
						obj_letter_2x4.letter = string_char_at(player_word, 4);
						if (array_exist[3] == 1)
						{
							obj_letter_2x4.letter_color = c_yellow;
						}
						if (array_correct[3] == 1)
						{
							obj_letter_2x4.letter_color = c_lime;
						}
						
						obj_letter_2x5.letter = string_char_at(player_word, 5);
						if (array_exist[4] == 1)
						{
							obj_letter_2x5.letter_color = c_yellow;
						}
						if (array_correct[4] == 1)
						{
							obj_letter_2x5.letter_color = c_lime;
						}
						
						break;
					// Third line
					case 3:
						obj_letter_3x1.letter_color = c_black;
						obj_letter_3x2.letter_color = c_black;
						obj_letter_3x3.letter_color = c_black;
						obj_letter_3x4.letter_color = c_black;
						obj_letter_3x5.letter_color = c_black;
						
						// First letter
						obj_letter_3x1.letter = string_char_at(player_word, 1);
						if (array_exist[0] == 1)
						{
							obj_letter_3x1.letter_color = c_yellow;
						}
						if (array_correct[0] == 1)
						{
							obj_letter_3x1.letter_color = c_lime;
						}
						
						// Second letter
						obj_letter_3x2.letter = string_char_at(player_word, 2);
						if (array_exist[1] == 1)
						{
							obj_letter_3x2.letter_color = c_yellow;
						}
						if (array_correct[1] == 1)
						{
							obj_letter_3x2.letter_color = c_lime;
						}
						
						// Third letter
						obj_letter_3x3.letter = string_char_at(player_word, 3);
						if (array_exist[2] == 1)
						{
							obj_letter_3x3.letter_color = c_yellow;
						}
						if (array_correct[2] == 1)
						{
							obj_letter_3x3.letter_color = c_lime;
						}
						
						// Fourth letter
						obj_letter_3x4.letter = string_char_at(player_word, 4);
						if (array_exist[3] == 1)
						{
							obj_letter_3x4.letter_color = c_yellow;
						}
						if (array_correct[3] == 1)
						{
							obj_letter_3x4.letter_color = c_lime;
						}
						
						// Fifth letter
						obj_letter_3x5.letter = string_char_at(player_word, 5);
						if (array_exist[4] == 1)
						{
							obj_letter_3x5.letter_color = c_yellow;
						}
						if (array_correct[4] == 1)
						{
							obj_letter_3x5.letter_color = c_lime;
						}
						
						break;
					// Fourth line
					case 4:
						obj_letter_4x1.letter_color = c_black;
						obj_letter_4x2.letter_color = c_black;
						obj_letter_4x3.letter_color = c_black;
						obj_letter_4x4.letter_color = c_black;
						obj_letter_4x5.letter_color = c_black;
						
						// First letter
						obj_letter_4x1.letter = string_char_at(player_word, 1);
						if (array_exist[0] == 1)
						{
							obj_letter_4x1.letter_color = c_yellow;
						}
						if (array_correct[0] == 1)
						{
							obj_letter_4x1.letter_color = c_lime;
						}
						
						// Second letter
						obj_letter_4x2.letter = string_char_at(player_word, 2);
						if (array_exist[1] == 1)
						{
							obj_letter_4x2.letter_color = c_yellow;
						}
						if (array_correct[1] == 1)
						{
							obj_letter_4x2.letter_color = c_lime;
						}
						
						// Third letter
						obj_letter_4x3.letter = string_char_at(player_word, 3);
						if (array_exist[2] == 1)
						{
							obj_letter_4x3.letter_color = c_yellow;
						}
						if (array_correct[2] == 1)
						{
							obj_letter_4x3.letter_color = c_lime;
						}
						
						// Fourth letter
						obj_letter_4x4.letter = string_char_at(player_word, 4);
						if (array_exist[3] == 1)
						{
							obj_letter_4x4.letter_color = c_yellow;
						}
						if (array_correct[3] == 1)
						{
							obj_letter_4x4.letter_color = c_lime;
						}
						
						// Fifth letter
						obj_letter_4x5.letter = string_char_at(player_word, 5);
						if (array_exist[4] == 1)
						{
							obj_letter_4x5.letter_color = c_yellow;
						}
						if (array_correct[4] == 1)
						{
							obj_letter_4x5.letter_color = c_lime;
						}
						break;
					// Fifth line
					case 5:
						obj_letter_5x1.letter_color = c_black;
						obj_letter_5x2.letter_color = c_black;
						obj_letter_5x3.letter_color = c_black;
						obj_letter_5x4.letter_color = c_black;
						obj_letter_5x5.letter_color = c_black;
						
						// First letter
						obj_letter_5x1.letter = string_char_at(player_word, 1);
						if (array_exist[0] == 1)
						{
							obj_letter_5x1.letter_color = c_yellow;
						}
						if (array_correct[0] == 1)
						{
							obj_letter_5x1.letter_color = c_lime;
						}
						
						// Second letter
						obj_letter_5x2.letter = string_char_at(player_word, 2);
						if (array_exist[1] == 1)
						{
							obj_letter_5x2.letter_color = c_yellow;
						}
						if (array_correct[1] == 1)
						{
							obj_letter_5x2.letter_color = c_lime;
						}
						
						// Third letter
						obj_letter_5x3.letter = string_char_at(player_word, 3);
						if (array_exist[2] == 1)
						{
							obj_letter_5x3.letter_color = c_yellow;
						}
						if (array_correct[2] == 1)
						{
							obj_letter_5x3.letter_color = c_lime;
						}
						
						// Fourth letter
						obj_letter_5x4.letter = string_char_at(player_word, 4);
						if (array_exist[3] == 1)
						{
							obj_letter_5x4.letter_color = c_yellow;
						}
						if (array_correct[3] == 1)
						{
							obj_letter_5x4.letter_color = c_lime;
						}
						
						// Fifth letter
						obj_letter_5x5.letter = string_char_at(player_word, 5);
						if (array_exist[4] == 1)
						{
							obj_letter_5x5.letter_color = c_yellow;
						}
						if (array_correct[4] == 1)
						{
							obj_letter_5x5.letter_color = c_lime;
						}
						break;
				}
					
					// Next Turn
					keyboard_string = "";
					game_word += chr(10);
					player_turn += 1;
					response = "Try again.";
				}
			}
		}
		
		else
		{
			// Word doesnt exists
			response = "No word.";
		}
	}

	else
	{
		// ERROR the word is too long!
	}
}

