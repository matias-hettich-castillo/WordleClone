/// @description Load game initial settings
// You can write your code in this editor

// Fix the viewport - x,y issue
view_x_diff = view_get_wport(view_camera[0]) / camera_get_view_width(view_camera[0]);
view_y_diff = view_get_hport(view_camera[0]) / camera_get_view_height(view_camera[0]);
x = view_x_diff * x;
y = view_y_diff * y;

input_prompt = "|";
alarm_set(0, 15);

font_size = 8;

// Load settings
player_turn = 1;
player_word = "";
limit = 5;
obj_button_retry.visible = false;

state = "0";
response = "Enter word";

randomize();
pos = random(300);
word = dictionary.words[pos];
game_word = word;

state = "1";

alphabet_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","Ñ","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
alphabet_objects = [
	obj_letter_a, obj_letter_b, obj_letter_c, obj_letter_d, obj_letter_e,
	obj_letter_f, obj_letter_g, obj_letter_h, obj_letter_i, obj_letter_j, 
	obj_letter_k, obj_letter_l, obj_letter_m, obj_letter_n, obj_letter_enie, 
	obj_letter_o, obj_letter_p, obj_letter_q, obj_letter_r, obj_letter_s, 
	obj_letter_t, obj_letter_u, obj_letter_v, obj_letter_w, obj_letter_x, 
	obj_letter_y, obj_letter_z 
];