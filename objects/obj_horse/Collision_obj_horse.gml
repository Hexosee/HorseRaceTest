randomize()

move_bounce_all(true)
bounces++
if bounces % 3 == 0 {
	direction+=irandom_range(-180,180)
}
audio_play_sound(snd_kerplunk,0,false,1,0,random_range(0.9,1.1))

speed = 2

with(other) {
	move_bounce_all(true)
	speed = 2
	bounces++
		
	if bounces % 3 == 0
		direction+=irandom_range(-180,180)
}