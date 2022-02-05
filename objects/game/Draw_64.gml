/// @description Insert description here
// You can write your code in this editor

//draw_self();
//draw_set_valign(fa_top);
draw_set_font(fontBuilder.font_8Bit);
draw_set_halign(fa_left);
draw_text_transformed(10,10,"Turn: " + string(player_turn),font_size,font_size,image_angle);
draw_text_transformed(10,50,"Player: " + string(player_word),font_size,font_size,image_angle);
draw_text_transformed(10,90,"State: " + string(state),font_size,font_size,image_angle);
draw_text_transformed(10,130,"Word: " + string(word),font_size,font_size,image_angle);
draw_text_transformed(10,170,"Status: " + string(response),font_size,font_size,image_angle);
/*draw_text_transformed(0,210,"This is a long text" + chr(10) + 
							"To try the font i'm making." + chr(10) +
							"(Looks fine, right?)",font_size,font_size,image_angle);
*/
//draw_set_valign(fa_middle);
draw_set_font(fontBuilder.font_8Bit_P);
draw_set_halign(fa_middle);
//draw_text_transformed(x, y, game_word,font_size,font_size,image_angle);
draw_text_transformed_color(x, y, game_word,font_size,font_size,image_angle, char_color, char_color, char_color, char_color, 1);