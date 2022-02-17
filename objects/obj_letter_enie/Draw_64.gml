/// @description Insert description here
// You can write your code in this editor

if (dictionary.words = dictionary.words_esp)
{
	//draw_sprite_ext(spr_letter_show, 0, x - 18, y - 18, 7.8, 7.8, 0, c_white, 1);
	draw_set_font(fontBuilder.font_16Bit_P);
	draw_set_halign(fa_left);
	draw_text_transformed_color(x, y, letter, font_size, font_size, image_angle, letter_color, letter_color, letter_color, letter_color, 1);
}