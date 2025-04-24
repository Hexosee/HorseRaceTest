draw_set_color(c_black)
draw_set_valign(fa_bottom)
if instance_exists(obj_horsegate) {
	draw_set_halign(fa_left)
	draw_text(10,590,"press space to begin")
}
else {
	draw_set_halign(fa_left)
	draw_text(10,590,global.mapname)
	draw_set_halign(fa_right)
	
	var minutes = timer div 60;
	var seconds = timer mod 60;
	var s_form
	if seconds < 10
		s_form = $"0{seconds}"
	else
		s_form = seconds
	draw_text(790,590,$"{minutes}:{s_form}")
}
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_white)

if winscreen {
	draw_sprite(spr_winscreen,0,0,0)
	draw_sprite_ext(spr_winscreen,1,0,0,1,1,0,winner.col,1)
	draw_set_font(fnt_name)
	draw_set_halign(fa_right)
	draw_text_transformed(790,10,winner.name,namesc,namesc/1.5,0)
	draw_set_font(fnt_default)
	namesc+=0.03
	namesc=clamp(namesc,0,3)
}

draw_set_alpha(fade)
draw_rectangle(0,0,800,600,false)
draw_set_alpha(1)