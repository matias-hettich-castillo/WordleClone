// Set switch state to switch_active_on or off
if (position_meeting(mouse_x, mouse_y, id) and !global.mid_transition)
{
	if (switch_state == switch_states.switch_idle_off)
		switch_state = switch_states.switch_active_off
	if (switch_state == switch_states.switch_idle_on)
		switch_state = switch_states.switch_active_on
}

if (!position_meeting(mouse_x, mouse_y, id) and !global.mid_transition)
{
	if (switch_state == switch_states.switch_active_off)
		switch_state = switch_states.switch_idle_off
	if (switch_state == switch_states.switch_active_on)
		switch_state = switch_states.switch_idle_on
}