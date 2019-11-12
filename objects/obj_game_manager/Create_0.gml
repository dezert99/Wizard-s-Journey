camera_y = room_height-view_hport[0] // starting camera height

timer = 300 // 3 seconds countdown to start game

window_set_fullscreen(true)

globalvar WIN_ORDER;
WIN_ORDER = [0,0,0] // [RED, BLUE, YELLOW]
globalvar WIN_POS;
WIN_POS = 1;

globalvar LIVING;
LIVING = 0;

globalvar GAME_STATE;
GAME_STATE = 1 // 0 = menu 1 = playing 2 = game over

audio_play_sound(snd_background_music,1,true);

reset = false;