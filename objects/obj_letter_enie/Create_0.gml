/// @description Insert description here
// You can write your code in this editor

if (dictionary.words = dictionary.words_esp)
{
	instance_create_layer(x - 2, y - 2,"Instances" , obj_letter_enie_show);
}

// Fix the viewport - x,y issue
view_x_diff = view_get_wport(view_camera[0]) / camera_get_view_width(view_camera[0]);
view_y_diff = view_get_hport(view_camera[0]) / camera_get_view_height(view_camera[0]);
x = view_x_diff * x;
y = view_y_diff * y;

font_size = 8;
letter = "Ñ";
found = false;
letter_color = c_white;