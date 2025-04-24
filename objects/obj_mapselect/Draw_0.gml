y=sel*20
draw_set_halign(fa_left)
for (var i=0;i<array_length(maps);i++) {
	var stupid
	if sel == i
		stupid = "> "
	else
		stupid = ""
	draw_set_valign(fa_middle)
	draw_text(10,300+i*20-y,$"{stupid}{maps[i][0]}")	
}