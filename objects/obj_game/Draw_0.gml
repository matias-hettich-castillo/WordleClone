
// Font and Color
draw_set_font(FONT);
draw_set_color(letter_color);

// Draw Variables
var pos_x, pos_y, player_score, player_input, game_response
player_score = "W: " + string(obj_player.win_score) + "-L: " + string(obj_player.lose_score);
player_input = string(player_word) + string(input_prompt)
game_response = response

// Draw Game Response
pos_x = x
pos_y = y
draw_set_halign(fa_left);
draw_text(pos_x, pos_y, game_response)

// Draw Win-Loose Score
pos_x = room_width - 3
draw_set_halign(fa_right);
draw_text(pos_x, pos_y, player_score)

// Draw Player Input
pos_x = room_width / 2
pos_y = y + string_height(" ") + 2
draw_set_halign(fa_middle);
draw_text(pos_x, pos_y, player_input)