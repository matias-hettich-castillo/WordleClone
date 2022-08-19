// If game is on PC restart on F1
switch (os_type)
{
	case os_windows:
	case os_linux:
	case os_macosx:
		game_restart()
		break
}