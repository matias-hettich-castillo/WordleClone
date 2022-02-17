/// @description Insert description here
// You can write your code in this editor

// Fix the viewport - x,y issue
view_x_diff = view_get_wport(view_camera[0]) / camera_get_view_width(view_camera[0]);
view_y_diff = view_get_hport(view_camera[0]) / camera_get_view_height(view_camera[0]);
x = view_x_diff * x;
y = view_y_diff * y;

font_size = 8;

about_text = "Wordle Clone " + string(GM_version) + "\n\n"
			+"MIT License Copyright\n(c) 2022 Matias Hettich.\n"
			+"Valdivia, Chile.\n\n\n\n"
			+"Thank you for playing!";