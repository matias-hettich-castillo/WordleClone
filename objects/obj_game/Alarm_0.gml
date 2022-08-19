// Prompt character animation cycle
input_prompt = show_prompt ? "|" : " "
	
// Animation boolean cycle
show_prompt = !show_prompt
	
// Reset animation alarm
alarm_set(0, 15);