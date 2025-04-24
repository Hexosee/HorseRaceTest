if count != "GO"
	count--

if count == "GO" {
	instance_destroy()
	obj_horsegate.die = true
	with (obj_horse) {
		stop = false	
	}
	audio_play_sound(snd_glassbreak,0,false)
	return
}

if count < 0
	count = "GO"
	
audio_play_sound(snd_bass,0,false)	
	
alarm[0] = 60