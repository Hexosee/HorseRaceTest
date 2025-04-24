sprite = spr_horse
horses = [

	["Big Jerry",#BA4655],
	["PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP",#FF00DC],
	["Plant",#67EFA6],
	["Sandcastle",#D3D381],
	["Smelly Garbage",#7C8C5D],
	["gerp",#6133A3],
	["Crazy Meat",#523A4A],

]

switch (room) {
	default:
		wspacing = 32
		hspacing = 50
		rows = 4
	break
	case rm_hell:
		wspacing = 16
		hspacing = 35
		rows = 2	
	break
	case rm_real:
		wspacing = 0
		hspacing = 100
		rows = 100
	break
	case rm_newcomer:
		wspacing = 10
		hspacing = 50
		rows = 4
		sprite = spr_horsenewcomers
		
		horses = [

			["90 Degrees",#FFFE91],
			["Stapler",#880015],
			["Paper Jones",#EFE4B0],
			["",#00A2E8],
			["\"my horse\"",#C8BFE7],
			["Stick Horse",#000000],
			["scr_default",#000000]

		]	
	
	break
}

for (var i=0;i<array_length(horses);i++) {
	var myhorse = instance_create_depth(x+(wspacing*i)-(i%rows)*wspacing,y+(i%rows)*hspacing,0,obj_horse)
	myhorse.image_index = i
	myhorse.name = horses[i][0]
	myhorse.sprite_index = sprite
	
	myhorse.stop = true
	myhorse.col = horses[i][1]
}