/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);

//draw_self();
//draw_set_valign(fa_top);
draw_set_font(fontBuilder.font_16Bit);
draw_set_halign(fa_middle);
draw_set_color(c_white);
//draw_text_transformed(10,10,"Turn: " + string(player_turn),font_size,font_size,image_angle);
draw_text_transformed(x, y, string(player_word) + string(input_prompt), font_size, font_size, image_angle);
//draw_text_transformed(10,90,"State: " + string(state),font_size,font_size,image_angle);
//draw_text_transformed(10,130,"Word: " + string(word),font_size,font_size,image_angle);
draw_text_transformed(x, y - (4 * 8 * view_y_diff), string(response), font_size, font_size, image_angle);
//draw_text_transformed(10,10,"This is a LONG text" + chr(10) +
//							"To TrY ThE font i'm" + chr(10) + "Making." + chr(10) +
//							"(!\"#$%&\\,.;:/=?¡<" + chr(10) +">*-+|)",font_size,font_size,image_angle);

//draw_set_valign(fa_middle);
draw_set_font(fontBuilder.font_16Bit_P);
draw_set_halign(fa_middle);
//draw_text_transformed(x, y, game_word,font_size,font_size,image_angle);
draw_text_transformed_color(x, y + (7 * 8 * view_y_diff), game_word,font_size,font_size,image_angle, char_color, char_color, char_color, char_color, 1);