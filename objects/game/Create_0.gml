/// @description Load game initial settings
// You can write your code in this editor

x = room_width / 2;
y = room_height / 2;
font_size = 1;
char_color = c_white;

// Load settings
player_turn = 1;
player_word = "";
limit = 5;

state = "0";
response = "";

pos = random(4);
word = dictionary.words[pos];
game_word = "";

state = "1";