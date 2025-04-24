randomize()

move_bounce_all(true)
bounces++
if bounces % 3 == 0 {
	direction+=irandom_range(-180,180)
}
audio_play_sound(snd_kerplunk,0,false,1,0,random_range(0.9,1.1))

speed = 2