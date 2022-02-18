/// @description Insert description here
// You can write your code in this editor


if (state != 2 || state != 3)
{	
	// Check player_word length
	if (string_length(player_word) < limit)
	{
		// Word not long enough
		if (obj_player.languaje == 1)
		{
			response = "Too short.";
		}

		else
		{
			response = "Muy corta.";
		}
		
	}

	else if (string_length(player_word) >= limit)
	{
		// Check if word exists
		show_debug_message(player_word);
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
				if (obj_player.languaje == 1)
				{
					response = "You win!";
				}

				else
				{
					response = "¡Ganaste!";
				}
				obj_player.win_score++;
				obj_button_retry.visible = true;
			}
	
			else
			{
				
				// Check for lose state or next turn
				if (player_turn >= limit)
				{
					array_exist = [0, 0, 0, 0, 0];
					for (i = 1; i <= limit; i++)
					{
						for (j = 1; j <= limit; j++)
						{
							if (string_char_at(word, j) == string_char_at(player_word, i))
							{
								array_exist[i-1] = 1;
							}
						}
					}
					
					array_correct = [0, 0, 0, 0, 0];
					for (i = 1; i <= limit; i++)
					{
						if (string_char_at(word, i) == string_char_at(player_word, i))
						{
							array_correct[i-1] = 1;
						}
					}
					
					// Color letters in the alphabet
					for (j = 0; j < limit; j++)
					{
						position = scr_array_search(alphabet_letters, string_char_at(player_word, j+1));
						if (position != -1)
						{
							if (array_exist[j] == 0 && array_correct[j] == 0)
							{
								alphabet_objects[position].letter_color = c_black;
							}
							if (array_exist[j] == 1)
							{
								show_debug_message(string(alphabet_objects[position].letter_color));
								if (alphabet_objects[position].found == false)
								{
									alphabet_objects[position].letter_color = c_yellow;
								}
							}
							if (array_correct[j] == 1)
							{
								alphabet_objects[position].letter_color = c_lime;
								alphabet_objects[position].found = true;
							}
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
					if (obj_player.languaje == 1)
					{
						response = "You loose.";
					}

					else
					{
						response = "Perdiste.";
					}
					obj_player.lose_score++;
					obj_button_retry.visible = true;
				}
		
				else
				{
					// Check which letters are in the word
					array_exist = [0, 0, 0, 0, 0];
					for (i = 1; i <= limit; i++)
					{
						for (j = 1; j <= limit; j++)
						{
							if (string_char_at(word, j) == string_char_at(player_word, i))
							{
								array_exist[i-1] = 1;
							}
						}
					}
					
					array_correct = [0, 0, 0, 0, 0];
					for (i = 1; i <= limit; i++)
					{
						if (string_char_at(word, i) == string_char_at(player_word, i))
						{
							array_correct[i-1] = 1;
						}
					}
					
					// Color letters in the alphabet
					for (j = 0; j < limit; j++)
					{
						position = scr_array_search(alphabet_letters, string_char_at(player_word, j+1));
						if (position != -1)
						{
							if (array_exist[j] == 0 && array_correct[j] == 0)
							{
								alphabet_objects[position].letter_color = c_black;
							}
							if (array_exist[j] == 1)
							{
								show_debug_message(string(alphabet_objects[position].letter_color));
								if (alphabet_objects[position].found == false)
								{
									alphabet_objects[position].letter_color = c_yellow;
								}
							}
							if (array_correct[j] == 1)
							{
								alphabet_objects[position].letter_color = c_lime;
								alphabet_objects[position].found = true;
							}
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
					if (obj_player.languaje == 1)
					{
						response = "Try again.";
					}

					else
					{
						response = "De nuevo.";
					}
				}
			}
		}
		
		else
		{
			// Word doesnt exists
			if (obj_player.languaje == 1)
			{
				response = "Not a word.";
			}

			else
			{
				response = "No existe.";
			}
		}
	}

	else
	{
		// ERROR the word is too long!
	}
}

