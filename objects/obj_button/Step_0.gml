// Set button state to button_active
if (position_meeting(mouse_x, mouse_y, id) and !global.mid_transition)
	button_state = button_states.button_active

if (!position_meeting(mouse_x, mouse_y, id) and !global.mid_transition)
	button_state = button_states.button_idle;