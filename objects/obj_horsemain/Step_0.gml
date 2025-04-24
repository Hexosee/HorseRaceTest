if keyboard_check_pressed(vk_space) and instance_exists(obj_horsegate) {
	instance_create_depth(0,0,0,obj_horsebet)
}


if !instance_exists(obj_horsegate)
	timer+=delta_time / 1000000;

if keyboard_check_pressed(vk_space) and instance_exists(winner) {
	room_restart()
}

if keyboard_check_pressed(vk_escape) {
	room_goto(rm_init)	
}

if instance_exists(winner) {
	camera_set_view_pos(view_camera[0],x,y)	
	x = lerp(x,winner.x-room_width/4,0.05)
	y = lerp(y,winner.y-room_height/4,0.02)
	image_xscale = lerp(image_xscale,0.5,0.05)
	camera_set_view_size(view_camera[0],800*image_xscale,600*image_xscale)
	if not winscreen {
		fade+=0.01
		if fade > 1 {
			winscreen  = true	
			audio_play_sound(snd_horse,0,false,1,0,random_range(0.6,2))
			switch (winner.name) {
				default:
				
				break
				
				case "gerp":
					audio_play_sound(mus_gerptheme,0,false)
				break
			}
		}
	}
	else {
		fade-=0.01
	}
}
else {
	if room == rm_real {
		furthest = 0
		with (obj_horse) {
			if x > other.furthest {
				other.furthest = x
			}
		}
		x = lerp(x,furthest-400,0.05)
		camera_set_view_pos(view_camera[0],x,0)	
		image_xscale = 1.18
		camera_set_view_size(view_camera[0],800*image_xscale,600*image_xscale)
	}
}