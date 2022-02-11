/// @description Load game initial settings
// You can write your code in this editor

// Fix the viewport - x,y issue
view_x_diff = view_get_wport(view_camera[0]) / camera_get_view_width(view_camera[0]);
view_y_diff = view_get_hport(view_camera[0]) / camera_get_view_height(view_camera[0]);
x = view_x_diff * x;
y = view_y_diff * y;

input_prompt = "|";
alarm_set(0, 30);

font_size = 8;
char_color = c_white;

// Load settings
player_turn = 1;
player_word = "";
limit = 5;

state = "0";
response = "Enter your word";

pos = random(4);
word = dictionary.words[pos];
game_word = "";

state = "1";