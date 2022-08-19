// If game is on PC exit on ESC
switch (os_type)
{
	case os_windows:
	case os_linux:
	case os_macosx:
		game_end()
		break
}