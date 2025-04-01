mob/Minato
	verb
		Space() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Jikkukan Kekkai"
			usr.Handseals()
			if(usr.firing) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
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
			if(usr.chakra <= 4000)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				usr.DoryuuN += 1
				usr.firing=1
				usr.chakra -= 34500
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=yellow> Says: Jikkukan Kekkai!!"
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/Kamui/A = new /obj/Kamui/
					var/obj/Kamui/B = new /obj/Kamui/
					var/obj/Kamui/C = new /obj/Kamui/
					A.loc = locate(usr.x, usr.y+2, usr.z)
					C.loc = locate(usr.x+1, usr.y+2, usr.z)
					B.loc = locate(usr.x-1, usr.y+2, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					sleep(45)
					del(A)
					del(B)
					del(C)
					sleep(100)
				if(usr.dir == SOUTH)
					var/obj/Kamui/A = new /obj/Kamui/
					var/obj/Kamui/B = new /obj/Kamui/
					var/obj/Kamui/C = new /obj/Kamui/
					A.loc = locate(usr.x, usr.y-2, usr.z)
					C.loc = locate(usr.x+1, usr.y-2, usr.z)
					B.loc = locate(usr.x-1, usr.y-2, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = SOUTH
					B.dir = SOUTH
					C.dir = SOUTH
					sleep(45)
					del(A)
					del(B)
					del(C)
					sleep(100)
				if(usr.dir == WEST)
					var/obj/Kamui/A = new /obj/Kamui/
					var/obj/Kamui/B = new /obj/Kamui/
					var/obj/Kamui/C = new /obj/Kamui/
					A.loc = locate(usr.x-2, usr.y, usr.z)
					C.loc = locate(usr.x-2, usr.y-1, usr.z)
					B.loc = locate(usr.x-2, usr.y+1, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = EAST
					B.dir = EAST
					C.dir = EAST
					sleep(45)
					del(A)
					del(B)
					del(C)
					sleep(100)
				if(usr.dir == EAST)
					var/obj/Kamui/A = new /obj/Kamui/
					var/obj/Kamui/B = new /obj/Kamui/
					var/obj/Kamui/C = new /obj/Kamui/
					A.loc = locate(usr.x+2, usr.y, usr.z)
					C.loc = locate(usr.x+2, usr.y-1, usr.z)
					B.loc = locate(usr.x+2, usr.y+1, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = EAST
					B.dir = EAST
					C.dir = EAST
					sleep(45)
					del(A)
					del(B)
					del(C)
					sleep(100)
					return
				sleep(25)
				usr.firing=0
				return
mob/Minato
	verb
		Seal(mob/M in get_step(src,src.dir))
			set category = "NinJutsu"
			set name = "Hiraishin Shiki"
			usr.Handseals()
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
			if(usr.konchdelay)
				return
			if(M)
				if(M.havekonchuu)
					usr<<"You already have the Hiraishin Seal on [M]."
					return
			if(usr.firing)
				return
			if(M.Kaiten||M.sphere||M.counter)
				usr << "You won't be able to place your seal while they are using that jutsu!"
				return
			if(usr.chakra <= 25000)
				usr<<"Not enough Chakra!"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			else
				view()<<"<font color=yellow><B>[usr] has placed the Hiraishin Seal on [M]!!"
				usr.chakra-=25000
				M.havekonchuu = 1
				M.konchuuperson="[usr]"
				sleep(600)
				if(M)
					M.havekonchuu=0
					M.konchuuperson=""

mob/Minato
	verb
		FlyingThunderGod()
			set category = "NinJutsu"
			set name = "Hiraishin No Jutsu"
			usr.Handseals()
			if(usr.konchdelay)
				return
			if(!usr.handseals)
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
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
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			for(var/mob/M in world)
				if(M.havekonchuu&&M.konchuuperson=="[usr]")
					view()<<"<font color = yellow><B>[usr] has used the Hiraishin No Jutsu and teleports to [M]!!"
					usr.loc=locate(M.x,M.y,M.z)
					M.havekonchuu=0
					M.konchuuperson=null
					usr.Chakragain()
			sleep(30)
			usr.konchdelay=0

obj/
	MKunai
		icon = 'Kunai.dmi'
		icon_state="note"
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(!M.PK)
					usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
					return
				if(M.counter)
					del(src)
					return
				var/damage = round(src.nin*1.6)
				if(damage >= 1)
					M.teleport=1
					M.health -= damage
					view(M) << "[M] was hit for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

mob/Minato
	verb
		FTGKunai()
			set category = "NinJutsu"
			set name = "Hiraishin Kunai"
			usr.Handseals()
			if(!usr.handseals||usr.firing||usr.sphere||usr.Kaiten||src.Kaiten)return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
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
			if(!src.PK)
				usr<<"NON PK ZONE!"
				return
			if(src.captured)
				usr<<"He is already caught!"
				return
			if(src.counter)
				usr<<"They copy and reflect it back at you."
				src<<"You copy and reflect it back at them."
				usr.health -= src.Mnin/5
				Death(usr)
				return
			else // If the firing var isn't 1...
				usr.chakra -= 10000
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=yellow> Says: Flying Thunder God Kunai!!</font>"
				var/obj/MKunai/S1 = new /obj/MKunai/
				S1.loc = usr.loc
				S1.nin = usr.nin
				S1.dir = usr.dir
				S1.name = "[usr]"
				S1.Gowner = usr
				walk(S1,usr.dir)
				sleep(15)
				usr.firing = 0
				sleep(15)
				del(S1)
				for(var/mob/M in world)
					if(M.teleport)
						usr.loc=locate(M.x,M.y,M.z)
						M.teleport=0
						view()<<"<font color=yellow><center>[usr] teleports to [M] using the Flying Thunder God Kunai!!"