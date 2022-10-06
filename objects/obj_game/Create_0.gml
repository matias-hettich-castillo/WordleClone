// Prompt Variables
input_prompt = "|"
show_prompt = true
	
// Animation start
alarm_set(0, 15)
	
// Set Letter Colors
letter_color = $AA9D80
letter_color_ok = c_lime
letter_color_good = c_orange
letter_color_wrong = $312B25

// Game Settings
keyboard_string = ""// Reset keyboard string
player_turn = 1		// Player attempts counter
player_word = ""	// Player input word
limit = 5			// Max input word limit

// Turn arrows handling
turn_arrows = array_create(0)
array_push(turn_arrows, instance_create_layer(64, 30, "Instances", obj_turn_arrow))
array_push(turn_arrows, instance_create_layer(64, 41, "Instances", obj_turn_arrow))
array_push(turn_arrows, instance_create_layer(64, 52, "Instances", obj_turn_arrow))
array_push(turn_arrows, instance_create_layer(64, 63, "Instances", obj_turn_arrow))
array_push(turn_arrows, instance_create_layer(64, 74, "Instances", obj_turn_arrow))
turn_arrows[0].set_visible(true)

// Choose Random Game Word
randomize()
var position = random(array_length(DICTIONARY))
word = DICTIONARY[position]
//show_debug_message(word)

// Game Responses
response = "Type word."		// Game start message
win_message = "Correct!"		// You win the game message
lose_message = "Word: "		// You lose the game message
again_message = "Try again!"	// Wrong word, try again message
nodict_message = "Not in dict."	// Word not in dictionary message
short_message = "Too short."	// Word too short message

// Set Alphabet Letter Hints
alphabet_letters = ["A","B","C","D","E", "F","G","H","I","J", "K","L","M","N","O", "P","Q","R","S","T", "U","V","W","X","Y","Z"]
alphabet_objects = [obj_letter_a, obj_letter_b, obj_letter_c, obj_letter_d, obj_letter_e, obj_letter_f, obj_letter_g, obj_letter_h,
					obj_letter_i, obj_letter_j,	obj_letter_k, obj_letter_l, obj_letter_m, obj_letter_n,	obj_letter_o, obj_letter_p,
					obj_letter_q, obj_letter_r, obj_letter_s, obj_letter_t, obj_letter_u, obj_letter_v, obj_letter_w, obj_letter_x,
					obj_letter_y, obj_letter_z ]

// Set Game States
enum game_states {
	play,
	win,
	lose
}

// Set Initial Game State
game_state = game_states.play