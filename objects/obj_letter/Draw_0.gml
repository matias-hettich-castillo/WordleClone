// Set drawing settings
draw_set_font(FONT);
draw_set_halign(fa_left);

// Set white letter displacement
var d = 0
if (letter_color == c_white) d = 1

// Draw colored letter
draw_text_color(x+d, y+d, letter, letter_color, letter_color, letter_color, letter_color, letter_alpha)