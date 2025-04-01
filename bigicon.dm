atom/proc/bigicon(icon/I,state)
	var
		obj/O = new()
		list/L
		maxx
	if(isfile(I))
		L = list(I)
	else
		L = I
	src.overlays = null
	src.pixel_x =  0
	O.layer = FLOAT_LAYER
	for(var/X in L)
		O.icon = X
		for(var/i in icon_states(O.icon))
			if(findtext(i,","))
				O.icon_state = copytext(i,1,4)+((!L[X]) ? state : L[X])
				O.pixel_x = 32*text2num(copytext(i,1,findtext(i,",")))
				maxx = max(maxx,text2num(copytext(i,1,findtext(i,","))))
				O.pixel_y = 32*text2num(copytext(i,findtext(i,",")+1))
				src.overlays += O
	src.pixel_x -= maxx*16
	spawn del(O)

proc/importspritesheet(source,target,size_x=1,size_y=1,iconstate,moving,delay)
	var/maxx
	var/maxy
	for(var/i in icon_states(source))
		if(findtext(i,","))
			maxx = max(maxx,text2num(copytext(i,1,findtext(i,","))))
			maxy = max(maxy,text2num(copytext(i,findtext(i,",")+1)))
	if((maxx+1)%size_x||(maxy+1)%size_y)
		CRASH("Invalid Spritesheet! ([size_x]/[maxx]) ([size_y]/[maxy]) [source])")
	var/icon/I = icon(target)
	for(var/i in icon_states(source))
		if(findtext(i,","))
			var/thisx = text2num(copytext(i,1,findtext(i,",")))
			var/thisy = text2num(copytext(i,findtext(i,",")+1))
			var/thisdir
			var/thisframe = 1
			if(thisx != 0)
				thisframe = 1+round(thisx/size_x)
			if(maxy > size_y)
				if(thisy == 0)
					thisdir = WEST
				else switch(round(thisy/size_y))
					if(3) thisdir = SOUTH
					if(2) thisdir = NORTH
					if(1) thisdir = EAST
					else thisdir = WEST
			I.Insert(icon(source,icon_state=i),"[thisx%size_x],[thisy%size_x][iconstate]",thisdir,thisframe,moving,delay)
	I.SwapColor(rgb(255,0,255),null)
	return I