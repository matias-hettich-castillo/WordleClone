#region Font size 8
	// Set up font_size_8 font
	var font_sprite, proportional, separation, map_string

	font_sprite = spr_font8
	map_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@¡!¿?\'\"#$%&()*-+.,/\\<>=[]|:; "
	proportional = true
	separation = 1

	font_size_8 = font_add_sprite_ext(font_sprite, map_string, proportional, separation)
#endregion

#region Font size 7
	// Set up font_size_7 font

	font_sprite = spr_font7
	map_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@¡!¿?\'\"#$%&()*-+.,/\\<>=[]|:; "
	proportional = true
	separation = 1

	font_size_7 = font_add_sprite_ext(font_sprite, map_string, proportional, separation)
#endregion

#region Font
	// Set up default font
	font = font_size_8
	font_small = font_size_7
	
	// Set font macro
	#macro FONT obj_font_builder.font
	#macro FONT_SMALL obj_font_builder.font_small
#endregion