if solid
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,image_blend,1)
else
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_xscale,0,image_blend,0.5)
	
if name == "scr_default" {
	var xx,yy
	for (xx=-16;xx<16;xx++) {
		for (yy=-16;yy<16;yy++) {
			draw_point_color(x+xx,y+yy,make_color_hsv(irandom_range(0,255),255,255))
		}
	}
}

draw_set_halign(fa_center)
draw_set_color(c_black)
draw_set_color(c_white)