if not stop {
	speed+=0.05
	speed = clamp(speed,0,5)
}
else
	speed=  0
	
if place_meeting(x,y,obj_horse) {
	audio_play_sound(snd_horse,0,false,1,0,random_range(0.6,2))
	move_outside_solid(irandom_range(-360,360),5)
}


if place_meeting(x,y,obj_horsecol) {
	/*
	stuck++
	if stuck > 50 {
		x = obj_horsespawner.x
		y = obj_horsespawner.y
		stuck = 0
	}
	*/
}