mob/Akimichi
	verb
		Chodan(mob/M in get_step(src,src.dir))
			set category = "TaiJutsu"
			set name = "Chodan Bakugeki"
			if (M.inspike)
				return
			if(usr.firing)
				return
			if (M.sphere)
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(M.PK==0)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
				return
			if(usr.PK==0)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [usr]"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(M.drunk&&M.Lee)
				view()<<"[M] dodges [usr]'s attack"
				return
			if (M.Kaiten)
				usr <<"You attack [M] but their kaiten reflects the damage back at you."
				M <<"You reflect [usr]'s attack causing them to hurt themself."
				usr.health -= 10
				if(src.health<=0)
					usr.Death(M)
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			if (M.ingat == 1)
				usr << "Your attack bounces off of [M] because they are in gatsuuga..."
				return
			else
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Chodan Bakugeki!!!</FONT>"
				var/damage=usr.tai*2
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from Chodan Bakugeki!"
				if(M)
					if(usr.dir==NORTH)
						step(M,NORTH)
						sleep(2)
						step(M,NORTH)
						sleep(2)
						step(M,NORTH)
						sleep(2)
						step(M,NORTH)
						sleep(2)
						step(M,NORTH)
						sleep(2)
					if(usr.dir==SOUTH)
						step(M,SOUTH)
						sleep(2)
						step(M,SOUTH)
						sleep(2)
						step(M,SOUTH)
						sleep(2)
						step(M,SOUTH)
						sleep(2)
						step(M,SOUTH)
						sleep(2)
					if(usr.dir==EAST)
						step(M,EAST)
						sleep(2)
						step(M,EAST)
						sleep(2)
						step(M,EAST)
						sleep(2)
						step(M,EAST)
						sleep(2)
						step(M,EAST)
						sleep(2)
					if(usr.dir==WEST)
						step(M,WEST)
						sleep(2)
						step(M,WEST)
						sleep(2)
						step(M,WEST)
						sleep(2)
						step(M,WEST)
						sleep(2)
						step(M,WEST)
						sleep(2)
				usr.health-=usr.health/3
				usr.chakra-=usr.chakra/3
				sleep(14)
				usr.firing=0
mob/Akimichi
	verb
		BabunBaikaNoJutsu()
			set category = "TaiJutsu"
			set name = "Bubun Baika No Jutsu"
			usr.Handseals()
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(!usr.handseals)
				return
			if(usr.intank)
				return
			if(usr.chakra <= 500)
				return
			if(usr.calories <= 1000)
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else
				usr.firing=1
				view()<<"<font color=silver><b><font face=verdana>[usr]: Bubun Baika No Jutsu!!"
				usr.chakra -= 500
				var/obj/babunfist/B = new /obj/babunfist
				B.Gowner=usr
				B.tai = usr.tai
				B.loc = usr.loc
				B.Move_Delay=0
				usr.Chakragain()
				walk(B,usr.dir)
				sleep(10)
				usr.firing=0
				sleep(15)
				del(B)
mob/Akimichi
	verb
		NikudanHariSensha()
			set category = "NinJutsu"
			set name = "Nikudan Hari Sensha"
			usr.kunai=0
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			for(var/obj/kunai in usr.contents)
				usr.kunai+=1
			if(usr.kunai < 5)
				usr<<"<font color=silver><b><font face=verdana>You must have atleast 5 kunais!"
				if(usr.kunai<=0)
					usr.kunai=0
				return
			if(!usr.inbaika)
				usr<<"<font color=silver><b><font face=verdana>You must first use baika no jutsu!"
				return
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else .
				if(usr.SpikeN >= 34)
					var/list/O = usr.overlays.Copy()
					view()<<"<font color=blue><b><font face=verdana>[usr]:Nikudan Hari Sensha!"
					usr.SpikeN += 1
					usr.inspike = 1
					usr.overlays = usr.overlays.Remove(usr.overlays)
					usr.icon='meattank.dmi'
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					usr.firing = 1
					sleep(300)
					usr.icon = usr.Oicon
					usr.overlays = O.Copy()
					usr.inspike = 0
					usr.Move_Delay = usr.Savedspeed
					usr.firing = 0
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						view()<<"<font color=blue><b><font face=verdana>[usr]:Nikudan Hari Sensha"
						usr.MN += 1
						usr.inspike= 1
						usr.icon='meattank.dmi'
						usr.Savedspeed = usr.Move_Delay
						usr.Move_Delay = usr.Speed2
						usr.firing = 1
						usr.overlays += 'meattank.dmi'
						sleep(300)
						usr.icon = usr.Oicon
						usr.inspike = 0
						usr.overlays -= 'meattank.dmi'
						usr.Move_Delay = usr.Savedspeed
						usr.firing = 0
mob/Akimichi
	verb
		NikudanSensha()
			set category = "NinJutsu"
			set name = "Nikudan Sensha"
			if(usr.inbaika == 0)
				usr<<"<font color=silver><b><font face=verdana>You must first use baika no jutsu!"
			if(usr.ingat == 1||usr.Kaiten == 1||usr.intank == 1||usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else .
				if(usr.MN >= 34)
					var/list/O = usr.overlays.Copy()
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Nikudan Sensha!"
					usr.MN += 1
					usr.intank = 1
					usr.overlays = usr.overlays.Remove(usr.overlays)
					usr.icon='MTS.dmi'
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed3
					usr.firing = 1
					sleep(300)
					usr.icon = usr.Oicon
					usr.overlays = O.Copy()
					usr.intank = 0
					usr.Move_Delay = usr.Savedspeed
					usr.firing = 0
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Nikudan Sensha!"
						usr.MN += 1
						usr.intank = 1
						usr.icon='MTS.dmi'
						usr.Savedspeed = usr.Move_Delay
						usr.Move_Delay = usr.Speed3
						usr.firing = 1
						usr.overlays += 'MTS.dmi'
						sleep(300)
						usr.icon = usr.Oicon
						usr.intank = 0
						usr.overlays -= 'MTS.dmi'
						usr.Move_Delay = usr.Savedspeed
						usr.firing = 0
mob/Akimichi
	verb
		BaikaNoJutsu() // Verb used for firing the beam
			set category = "TaiJutsu"
			set name = "Baika No Jutsu"
			usr.Handseals()
			if(usr.Henge)
				return
			if(usr.firing)
				return
			if(usr.Kaiten)
				return
			if(usr.chakra <= 11)
				return
			if(usr.calories <= 1000)
				return
			if(!usr.handseals)
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.inbaika==0)
				view()<<"<font color=silver><b><font face=Tahoma>[usr]: Baika No Jutsu!!"
				usr.chakra -= 11
				usr.inbaika = 1
				usr.tai = usr.tai*1.1
				usr.Chakragain()
				if(usr.icon=='Human Icon Vamp.dmi')
					usr.overlays+='Human Icon VampS.dmi'
				if(usr.icon=='Human Icon White.dmi')
					usr.overlays+='Human Icon WhiteS.dmi'
				if(usr.icon=='Human Icon Tan.dmi')
					usr.overlays+='Human Icon TanS.dmi'
				if(usr.icon=='Human Icon Black.dmi')
					usr.overlays+='Human Icon BlackS.dmi'
				if(usr.icon=='Human Icon Blue.dmi')
					usr.overlays+='Human Icon BlueS.dmi'
				if(usr.icon=='Human Icon Red.dmi')
					usr.overlays+='Human Icon RedS.dmi'
				if(usr.icon=='Human Icon Yellow.dmi')
					usr.overlays+='Human Icon YellowS.dmi'
			else
				usr.tai = usr.Mtai
				usr.inbaika = 0
				if(usr.icon=='Human Icon Vamp.dmi')
					usr.overlays-='Human Icon VampS.dmi'
				if(usr.icon=='Human Icon White.dmi')
					usr.overlays-='Human Icon WhiteS.dmi'
				if(usr.icon=='Human Icon Tan.dmi')
					usr.overlays-='Human Icon TanS.dmi'
				if(usr.icon=='Human Icon Black.dmi')
					usr.overlays-='Human Icon BlackS.dmi'
				if(usr.icon=='Human Icon Blue.dmi')
					usr.overlays-='Human Icon BlueS.dmi'
				if(usr.icon=='Human Icon Red.dmi')
					usr.overlays-='Human Icon RedS.dmi'
				if(usr.icon=='Human Icon Yellow.dmi')
					usr.overlays-='Human Icon YellowS.dmi'
mob/Akimichi
	verb
		EatP()
			set category = "TaiJutsu"
			set name = "Butterfly Chakra"
			if(usr.Henge)
				usr<<"Not While Your In Henge"
				return
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.firing)
				usr<<"Not now."
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(!usr.Barmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Butterfly Chakra!"
				usr.overlays += 'BFly.dmi'
				usr.Barmor =1
				usr.nin = usr.nin*1.1
				usr.tai = usr.tai*1.1
				usr.gen = usr.gen*1.1
				sand
				if(usr.Barmor)
					usr.chakra -=500
					if(usr.chakra <= 4)
						usr.overlays -= 'BFly.dmi'
						usr.Barmor = 0
						usr.nin = usr.Mnin
						usr.tai = usr.Mtai
						usr.gen = usr.Mgen
						return
					else
						sleep(4)
						goto sand
			else if(usr.Barmor)
				usr.overlays -= 'BFly.dmi'
				usr.Barmor =0
				usr.nin = usr.Mnin
				usr.tai = usr.Mtai
				usr.gen = usr.Mgen
				usr<<"You take down your Butterfly Chakra."
obj//ERROR
	babunarm
		density=1
		icon='babun.dmi'
		icon_state="arm"
		New()
			..()
			spawn()
				src.delete()
		proc/delete()
			spawn(15)
				del(src)
obj//ERROR
	babunfist
		density=1
		icon='babun.dmi'
		icon_state="fist"
		Move()
			..()
			var/obj/babunarm/T = new /obj/babunarm
			if(src.dir == NORTH)
				T.loc = src.loc
				T.y = src.y-1
				T.dir = src.dir
			if(src.dir == SOUTH)
				T.loc = src.loc
				T.y = src.y+1
				T.dir = src.dir
			if(src.dir == WEST)
				T.loc = src.loc
				T.x = src.x+1
				T.dir = src.dir
			if(src.dir == EAST)
				T.loc = src.loc
				T.x = src.x-1
				T.dir = src.dir
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					del(src)
					return
				if(!M.PK)
					return
				var/damage = round(src.tai*1.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Babun Baika No Jutsu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)