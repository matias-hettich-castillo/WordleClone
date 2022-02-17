/// @description Insert description here
// You can write your code in this editor

draw_set_font(fontBuilder.font_16Bit);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text_transformed(x, y, about_text, font_size, font_size, image_angle);