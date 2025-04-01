mob/proc/FixKunai()
	for(var/obj/Kunai/O in usr.contents)
		if(O.ammount>=10000)
			src.Kucounter = 9999
			O.ammount = src.Kucounter
			O.name= "[O.name] ([O.ammount])"
		else
			if(src.Kucounter>=10000)
				src.Kucounter = O.ammount
				return
			return
/*
mob/proc/FixKunai1()
	for(var/obj/Kunai/B in usr.contents)
		if(src.Kucounter>0)
			var/obj/Kunai/O = new/obj/Kunai
			O.loc = src
			O.ammount = src.Kucounter
			O.name= "[O.name] ([O.ammount])"
			return
*/