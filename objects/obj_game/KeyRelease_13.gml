// Check if gamestate is play
if (game_state == game_states.play)
{
	// Check player_word lengt
	if (string_length(player_word) == limit)
	{
		// Check if word exists in dictionary
		if (word_exists(DICTIONARY, player_word))
		{
			#region Correct Answer
			if (player_word == word)
			{
				// Play correct sound
				audio_play_sound(snd_correct, 100, false)
				
				#region Paint Letter Hints (Wrong, Correct or Exact)
				// Check which player letters are correct in the game word
				array_exist = [0, 0, 0, 0, 0]
				for (var i = 1; i <= limit; i++)
					for (var j = 1; j <= limit; j++)
						if (string_char_at(word, j) == string_char_at(player_word, i))
							array_exist[i-1] = 1
					
				// Check wich player letter is exact in the game word
				array_correct = [0, 0, 0, 0, 0]
				for (i = 1; i <= limit; i++)
					if (string_char_at(word, i) == string_char_at(player_word, i))
						array_correct[i-1] = 1

				// Color letters in the alphabet
				for (var j = 0; j < limit; j++)
				{
					// Get position of the alphabet to paint the letter hints
					position = array_search(alphabet_letters, string_char_at(player_word, j+1))
					if (position != -1)
					{
						// If the letter is not there paint wrong color
						if (array_exist[j] == 0 && array_correct[j] == 0)
							alphabet_objects[position].letter_color = letter_color_wrong
							
						// If the letter is correct paint good color (only if not found)
						if (array_exist[j] == 1)
							if (alphabet_objects[position].found == false)
								alphabet_objects[position].letter_color = letter_color_good
							
						// If the letter is exact paint ok color
						if (array_correct[j] == 1)
						{
							alphabet_objects[position].letter_color = letter_color_ok
							alphabet_objects[position].found = true
						}
					}
				}
				#endregion
				
				#region Show Letter Input
				// Put the correct word in the current line
				switch (player_turn)
				{
					// First line
					case 1:
						obj_letter_1x1.letter = string_char_at(player_word, 1)
						obj_letter_1x1.letter_color = letter_color_ok
						obj_letter_1x2.letter = string_char_at(player_word, 2)
						obj_letter_1x2.letter_color = letter_color_ok
						obj_letter_1x3.letter = string_char_at(player_word, 3)
						obj_letter_1x3.letter_color = letter_color_ok
						obj_letter_1x4.letter = string_char_at(player_word, 4)
						obj_letter_1x4.letter_color = letter_color_ok
						obj_letter_1x5.letter = string_char_at(player_word, 5)
						obj_letter_1x5.letter_color = letter_color_ok
						break
					// Second line
					case 2:
						obj_letter_2x1.letter = string_char_at(player_word, 1)
						obj_letter_2x1.letter_color = letter_color_ok
						obj_letter_2x2.letter = string_char_at(player_word, 2)
						obj_letter_2x2.letter_color = letter_color_ok
						obj_letter_2x3.letter = string_char_at(player_word, 3)
						obj_letter_2x3.letter_color = letter_color_ok
						obj_letter_2x4.letter = string_char_at(player_word, 4)
						obj_letter_2x4.letter_color = letter_color_ok
						obj_letter_2x5.letter = string_char_at(player_word, 5)
						obj_letter_2x5.letter_color = letter_color_ok
						break
					// Third line
					case 3:
						obj_letter_3x1.letter = string_char_at(player_word, 1)
						obj_letter_3x1.letter_color = letter_color_ok
						obj_letter_3x2.letter = string_char_at(player_word, 2)
						obj_letter_3x2.letter_color = letter_color_ok
						obj_letter_3x3.letter = string_char_at(player_word, 3)
						obj_letter_3x3.letter_color = letter_color_ok
						obj_letter_3x4.letter = string_char_at(player_word, 4)
						obj_letter_3x4.letter_color = letter_color_ok
						obj_letter_3x5.letter = string_char_at(player_word, 5)
						obj_letter_3x5.letter_color = letter_color_ok
						break
					// Fourth line
					case 4:
						obj_letter_4x1.letter = string_char_at(player_word, 1)
						obj_letter_4x1.letter_color = letter_color_ok
						obj_letter_4x2.letter = string_char_at(player_word, 2)
						obj_letter_4x2.letter_color = letter_color_ok
						obj_letter_4x3.letter = string_char_at(player_word, 3)
						obj_letter_4x3.letter_color = letter_color_ok
						obj_letter_4x4.letter = string_char_at(player_word, 4)
						obj_letter_4x4.letter_color = letter_color_ok
						obj_letter_4x5.letter = string_char_at(player_word, 5)
						obj_letter_4x5.letter_color = letter_color_ok
						break
					// Fifth line
					case 5:
						obj_letter_5x1.letter = string_char_at(player_word, 1)
						obj_letter_5x1.letter_color = letter_color_ok
						obj_letter_5x2.letter = string_char_at(player_word, 2)
						obj_letter_5x2.letter_color = letter_color_ok
						obj_letter_5x3.letter = string_char_at(player_word, 3)
						obj_letter_5x3.letter_color = letter_color_ok
						obj_letter_5x4.letter = string_char_at(player_word, 4)
						obj_letter_5x4.letter_color = letter_color_ok
						obj_letter_5x5.letter = string_char_at(player_word, 5)
						obj_letter_5x5.letter_color = letter_color_ok
						break
				}
				#endregion
				
				#region Set Game State and Default Variables
				// Change gamestate to win
				game_state = game_states.win
				
				// Add player win score
				obj_player.win_score++
				
				// Show game response win message
				response = win_message
				
				// Reset strings
				keyboard_string = ""
				player_word = ""
				
				// Show retry button
				obj_button_retry.visible = true
				#endregion
			}
			#endregion
			
			#region Incorrect Answer
			else
			{
				// Play incorrect sound
				audio_play_sound(snd_wrong, 100, false)
				
				#region Lose Game
				// Check for lose state in last player turn
				if (player_turn == limit)
				{
					#region Paint Letter Hints (Wrong, Correct or Exact)
					// Check which player letters are correct in the game word
					array_exist = [0, 0, 0, 0, 0]
					for (var i = 1; i <= limit; i++)
						for (var j = 1; j <= limit; j++)
							if (string_char_at(word, j) == string_char_at(player_word, i))
								array_exist[i-1] = 1
					
					// Check wich player letter is exact in the game word
					array_correct = [0, 0, 0, 0, 0]
					for (i = 1; i <= limit; i++)
						if (string_char_at(word, i) == string_char_at(player_word, i))
							array_correct[i-1] = 1

					// Color letters in the alphabet
					for (var j = 0; j < limit; j++)
					{
						// Get position of the alphabet to paint the letter hints
						position = array_search(alphabet_letters, string_char_at(player_word, j+1))
						if (position != -1)
						{
							// If the letter is not there paint wrong color
							if (array_exist[j] == 0 && array_correct[j] == 0)
								alphabet_objects[position].letter_color = letter_color_wrong
							
							// If the letter is correct paint good color (only if not found)
							if (array_exist[j] == 1)
								if (alphabet_objects[position].found == false)
									alphabet_objects[position].letter_color = letter_color_good
							
							// If the letter is exact paint ok color
							if (array_correct[j] == 1)
							{
								alphabet_objects[position].letter_color = letter_color_ok
								alphabet_objects[position].found = true
							}
						}
					}
					#endregion
					
					#region Show Letter Input
					// Set wrong color
					obj_letter_5x1.letter_color = letter_color_wrong
					obj_letter_5x2.letter_color = letter_color_wrong
					obj_letter_5x3.letter_color = letter_color_wrong
					obj_letter_5x4.letter_color = letter_color_wrong
					obj_letter_5x5.letter_color = letter_color_wrong
					
					// Check first letter
					obj_letter_5x1.letter = string_char_at(player_word, 1)
					if (array_exist[0] == 1)
						obj_letter_5x1.letter_color = letter_color_good
					if (array_correct[0] == 1)
						obj_letter_5x1.letter_color = letter_color_ok
						
					// Check second letter
					obj_letter_5x2.letter = string_char_at(player_word, 2)
					if (array_exist[1] == 1)
						obj_letter_5x2.letter_color = letter_color_good
					if (array_correct[1] == 1)
						obj_letter_5x2.letter_color = letter_color_ok
						
					// Check third letter
					obj_letter_5x3.letter = string_char_at(player_word, 3)
					if (array_exist[2] == 1)
						obj_letter_5x3.letter_color = letter_color_good
					if (array_correct[2] == 1)
						obj_letter_5x3.letter_color = letter_color_ok
						
					// Check fourth letter
					obj_letter_5x4.letter = string_char_at(player_word, 4)
					if (array_exist[3] == 1)
						obj_letter_5x4.letter_color = letter_color_good
					if (array_correct[3] == 1)
						obj_letter_5x4.letter_color = letter_color_ok
						
					// Check fifth letter
					obj_letter_5x5.letter = string_char_at(player_word, 5)
					if (array_exist[4] == 1)
						obj_letter_5x5.letter_color = letter_color_good
					if (array_correct[4] == 1)
						obj_letter_5x5.letter_color = letter_color_ok
					#endregion
					
					#region Set Game State and Default Variables
					// Change gamestate to lose
					game_state = game_states.lose
					
					// Add player lose score
					obj_player.lose_score++
					
					// Show game response lose message
					response = lose_message
					
					// Reset strings
					keyboard_string = ""
					player_word = ""
					
					// Show retry button
					obj_button_retry.visible = true
					#endregion
				}
				#endregion
				
				#region Try Again
				else
				{
					#region Paint Letter Hints (Wrong, Correct or Exact)
					// Check which player letters are correct in the game word
					array_exist = [0, 0, 0, 0, 0]
					for (var i = 1; i <= limit; i++)
						for (var j = 1; j <= limit; j++)
							if (string_char_at(word, j) == string_char_at(player_word, i))
								array_exist[i-1] = 1
					
					// Check wich player letter is exact in the game word
					array_correct = [0, 0, 0, 0, 0]
					for (i = 1; i <= limit; i++)
						if (string_char_at(word, i) == string_char_at(player_word, i))
							array_correct[i-1] = 1

					// Color letters in the alphabet
					for (var j = 0; j < limit; j++)
					{
						// Get position of the alphabet to paint the letter hints
						position = array_search(alphabet_letters, string_char_at(player_word, j+1))
						if (position != -1)
						{
							// If the letter is not there paint wrong color
							if (array_exist[j] == 0 && array_correct[j] == 0)
								alphabet_objects[position].letter_color = letter_color_wrong
							
							// If the letter is correct paint good color (only if not found)
							if (array_exist[j] == 1)
								if (alphabet_objects[position].found == false)
									alphabet_objects[position].letter_color = letter_color_good
							
							// If the letter is exact paint ok color
							if (array_correct[j] == 1)
							{
								alphabet_objects[position].letter_color = letter_color_ok
								alphabet_objects[position].found = true
							}
						}
					}
					#endregion
					
					#region Show Letter Input
					switch (player_turn)
					{
						// First try
						case 1:
							// Paint all wrong first
							obj_letter_1x1.letter_color = letter_color_wrong
							obj_letter_1x2.letter_color = letter_color_wrong
							obj_letter_1x3.letter_color = letter_color_wrong
							obj_letter_1x4.letter_color = letter_color_wrong
							obj_letter_1x5.letter_color = letter_color_wrong
							// First letter
							obj_letter_1x1.letter = string_char_at(player_word, 1)
							if (array_exist[0] == 1) obj_letter_1x1.letter_color = letter_color_good
							if (array_correct[0] == 1) obj_letter_1x1.letter_color = letter_color_ok
							// Second letter
							obj_letter_1x2.letter = string_char_at(player_word, 2)
							if (array_exist[1] == 1) obj_letter_1x2.letter_color = letter_color_good
							if (array_correct[1] == 1) obj_letter_1x2.letter_color = letter_color_ok
							// Third letter
							obj_letter_1x3.letter = string_char_at(player_word, 3)
							if (array_exist[2] == 1) obj_letter_1x3.letter_color = letter_color_good
							if (array_correct[2] == 1) obj_letter_1x3.letter_color = letter_color_ok
							// Fourth letter
							obj_letter_1x4.letter = string_char_at(player_word, 4)
							if (array_exist[3] == 1) obj_letter_1x4.letter_color = letter_color_good
							if (array_correct[3] == 1) obj_letter_1x4.letter_color = letter_color_ok
							// Fifth letter
							obj_letter_1x5.letter = string_char_at(player_word, 5)
							if (array_exist[4] == 1) obj_letter_1x5.letter_color = letter_color_good
							if (array_correct[4] == 1) obj_letter_1x5.letter_color = letter_color_ok
							break
						
						// Second try
						case 2:
							// Paint all wrong first
							obj_letter_2x1.letter_color = letter_color_wrong
							obj_letter_2x2.letter_color = letter_color_wrong
							obj_letter_2x3.letter_color = letter_color_wrong
							obj_letter_2x4.letter_color = letter_color_wrong
							obj_letter_2x5.letter_color = letter_color_wrong
							// First letter
							obj_letter_2x1.letter = string_char_at(player_word, 1)
							if (array_exist[0] == 1) obj_letter_2x1.letter_color = letter_color_good
							if (array_correct[0] == 1) obj_letter_2x1.letter_color = letter_color_ok
							// Second letter
							obj_letter_2x2.letter = string_char_at(player_word, 2)
							if (array_exist[1] == 1) obj_letter_2x2.letter_color = letter_color_good
							if (array_correct[1] == 1) obj_letter_2x2.letter_color = letter_color_ok
							// Third letter
							obj_letter_2x3.letter = string_char_at(player_word, 3)
							if (array_exist[2] == 1) obj_letter_2x3.letter_color = letter_color_good
							if (array_correct[2] == 1) obj_letter_2x3.letter_color = letter_color_ok
							// Fourth letter
							obj_letter_2x4.letter = string_char_at(player_word, 4)
							if (array_exist[3] == 1) obj_letter_2x4.letter_color = letter_color_good
							if (array_correct[3] == 1) obj_letter_2x4.letter_color = letter_color_ok
							// Fifth letter
							obj_letter_2x5.letter = string_char_at(player_word, 5)
							if (array_exist[4] == 1) obj_letter_2x5.letter_color = letter_color_good
							if (array_correct[4] == 1) obj_letter_2x5.letter_color = letter_color_ok
							break
						
						// Third try
						case 3:
							// Paint all wrong first
							obj_letter_3x1.letter_color = letter_color_wrong
							obj_letter_3x2.letter_color = letter_color_wrong
							obj_letter_3x3.letter_color = letter_color_wrong
							obj_letter_3x4.letter_color = letter_color_wrong
							obj_letter_3x5.letter_color = letter_color_wrong
							// First letter
							obj_letter_3x1.letter = string_char_at(player_word, 1)
							if (array_exist[0] == 1) obj_letter_3x1.letter_color = letter_color_good
							if (array_correct[0] == 1) obj_letter_3x1.letter_color = letter_color_ok
							// Second letter
							obj_letter_3x2.letter = string_char_at(player_word, 2)
							if (array_exist[1] == 1) obj_letter_3x2.letter_color = letter_color_good
							if (array_correct[1] == 1) obj_letter_3x2.letter_color = letter_color_ok
							// Third letter
							obj_letter_3x3.letter = string_char_at(player_word, 3)
							if (array_exist[2] == 1) obj_letter_3x3.letter_color = letter_color_good
							if (array_correct[2] == 1) obj_letter_3x3.letter_color = letter_color_ok
							// Fourth letter
							obj_letter_3x4.letter = string_char_at(player_word, 4)
							if (array_exist[3] == 1) obj_letter_3x4.letter_color = letter_color_good
							if (array_correct[3] == 1) obj_letter_3x4.letter_color = letter_color_ok
							// Fifth letter
							obj_letter_3x5.letter = string_char_at(player_word, 5)
							if (array_exist[4] == 1) obj_letter_3x5.letter_color = letter_color_good
							if (array_correct[4] == 1) obj_letter_3x5.letter_color = letter_color_ok
							break
						
						// Fourth try
						case 4:
							// Paint all wrong first
							obj_letter_4x1.letter_color = letter_color_wrong
							obj_letter_4x2.letter_color = letter_color_wrong
							obj_letter_4x3.letter_color = letter_color_wrong
							obj_letter_4x4.letter_color = letter_color_wrong
							obj_letter_4x5.letter_color = letter_color_wrong
							// First letter
							obj_letter_4x1.letter = string_char_at(player_word, 1)
							if (array_exist[0] == 1) obj_letter_4x1.letter_color = letter_color_good
							if (array_correct[0] == 1) obj_letter_4x1.letter_color = letter_color_ok
							// Second letter
							obj_letter_4x2.letter = string_char_at(player_word, 2)
							if (array_exist[1] == 1) obj_letter_4x2.letter_color = letter_color_good
							if (array_correct[1] == 1) obj_letter_4x2.letter_color = letter_color_ok
							// Third letter
							obj_letter_4x3.letter = string_char_at(player_word, 3)
							if (array_exist[2] == 1) obj_letter_4x3.letter_color = letter_color_good
							if (array_correct[2] == 1) obj_letter_4x3.letter_color = letter_color_ok
							// Fourth letter
							obj_letter_4x4.letter = string_char_at(player_word, 4)
							if (array_exist[3] == 1) obj_letter_4x4.letter_color = letter_color_good
							if (array_correct[3] == 1) obj_letter_4x4.letter_color = letter_color_ok
							// Fifth letter
							obj_letter_4x5.letter = string_char_at(player_word, 5)
							if (array_exist[4] == 1) obj_letter_4x5.letter_color = letter_color_good
							if (array_correct[4] == 1) obj_letter_4x5.letter_color = letter_color_ok
							break
						
						// Fifth line
						case 5:
							// Paint all wrong first
							obj_letter_5x1.letter_color = letter_color_wrong
							obj_letter_5x2.letter_color = letter_color_wrong
							obj_letter_5x3.letter_color = letter_color_wrong
							obj_letter_5x4.letter_color = letter_color_wrong
							obj_letter_5x5.letter_color = letter_color_wrong
							// First letter
							obj_letter_5x1.letter = string_char_at(player_word, 1)
							if (array_exist[0] == 1) obj_letter_5x1.letter_color = letter_color_good
							if (array_correct[0] == 1) obj_letter_5x1.letter_color = letter_color_ok
							// Second letter
							obj_letter_5x2.letter = string_char_at(player_word, 2)
							if (array_exist[1] == 1) obj_letter_5x2.letter_color = letter_color_good
							if (array_correct[1] == 1) obj_letter_5x2.letter_color = letter_color_ok
							// Third letter
							obj_letter_5x3.letter = string_char_at(player_word, 3)
							if (array_exist[2] == 1) obj_letter_5x3.letter_color = letter_color_good
							if (array_correct[2] == 1) obj_letter_5x3.letter_color = letter_color_ok
							// Fourth letter
							obj_letter_5x4.letter = string_char_at(player_word, 4)
							if (array_exist[3] == 1) obj_letter_5x4.letter_color = letter_color_good
							if (array_correct[3] == 1) obj_letter_5x4.letter_color = letter_color_ok
							// Fifth letter
							obj_letter_5x5.letter = string_char_at(player_word, 5)
							if (array_exist[4] == 1) obj_letter_5x5.letter_color = letter_color_good
							if (array_correct[4] == 1) obj_letter_5x5.letter_color = letter_color_ok
							break
					}
					#endregion
					
					#region Set Game State and Default Variables
					// Show try again message
					response = again_message
					
					// Next turn
					player_turn += 1;
					
					// Reset strings
					keyboard_string = "";
					#endregion
				}
				#endregion
			}
			#endregion
		}
		
		// Word is not in the dictionary
		else
		{
			response = nodict_message
			audio_play_sound(snd_miss, 100, false)
		}
	}

	// Word is too short
	else
	{
		response = short_message
		audio_play_sound(snd_miss, 100, false)
	}
}