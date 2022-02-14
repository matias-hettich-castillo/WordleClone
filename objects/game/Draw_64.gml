/// @description Insert description here
// You can write your code in this editor

draw_set_font(fontBuilder.font_16Bit);

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(x - (15 * 8 * view_x_diff), y - (4 * 8 * view_y_diff), string(response), font_size, font_size, image_angle);

draw_set_halign(fa_left);
draw_set_color(c_white);
player_score = "W: " + string(obj_player.win_score) + " / L: " + string(obj_player.lose_score);
draw_text_transformed(x + (2 * 8 * view_x_diff), y - (4 * 8 * view_y_diff), player_score, font_size, font_size, image_angle);

draw_set_halign(fa_middle);
draw_set_color(c_white);
draw_text_transformed(x, y, string(player_word) + string(input_prompt), font_size, font_size, image_angle);
