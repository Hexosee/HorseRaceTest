var lastsel = sel

if keyboard_check_pressed(vk_enter) {
	room_goto(maps[sel][1])
	global.mapname = maps[sel][0]
}

if keyboard_check_pressed(vk_up) {
	sel--
}

if keyboard_check_pressed(vk_down) {
	sel++
}

sel=clamp(sel,0,array_length(maps)-1)

if lastsel != sel
	audio_play_sound(snd_clickfast,0,false)