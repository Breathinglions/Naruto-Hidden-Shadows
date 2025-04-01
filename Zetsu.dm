obj
	Mountain
		icon= 'mountains.dmi'
		layer = MOB_LAYER+2
		density = 0

mob/var
	Stone = 0
	StoneOn = 0
	Mclick = 0
	MaxStone = 0
	delayed = 0
	stoneside1
	stoneside2
	stoneside3
	stoneside4

mob
	npc
		ZBunshin
			NPC = 1
			proc/Die()
				flick("break",src)
				del(src)
			Bump(atom/M)
				if(istype(M,/mob/)) // If they run into the player
					if(M == bowner||M == src.original||M.name==src.name)
						return
					else
						if(src.firing)
							return
						var/mob/P = M
						var/Damage = src.tai
						var/mob/O = src.original
						src.firing=1
						if(P.Kaiten)
							del(src)
						if(P.drunk&&P.Lee)
							view()<<"[M] dodges [src]'s attack"
							sleep(13)
							src.firing=0
							return
						P.health -= Damage
						view() << "[O] attacks [M] for [Damage]!"
						P.Death(O)
						sleep(10)
						src.firing=0



obj
	Stone
		icon = 'stone.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					flick("break",src)
					del(src)
					return
				if(!M.PK)
					usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
					del(src)
					return
				if(M.counter)
					flick("break",src)
					del(src)
					return
				var/damage = round(src.nin)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Stone Blast for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
					flick("break",src)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	proc
		ExplodeMissle()
			for(var/mob/M in oview(2,src))
				var/mob/O = src.Gowner
				var/damage = round(src.nin*1.35)
				M.health -= damage
				flick("explode",src)
				view(usr) << "[M] was hit by [O]'s missiles for [damage] damage!!"
				O.Mclick = 0
				M.Death(O)
				del(src)
obj
	EMissle
		name = "Earth Missle"
		icon = 'doryuumissle.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				var/mob/O = src.Gowner
				if(M.Kaiten||M.sphere)
					flick("explode",src)
					O.Mclick = 0
					return
				if(M.counter)
					flick("explode",src)
					O.Mclick = 0
					del(src)
					return
				if(M.PK==0)
					O.Mclick = 0
					return
				var/damage = round(src.nin*1.35)
				if(damage >= 1)
					flick("explode",src)
					M.health -= damage
					view(M) << "[M] was hit by [O]'s missiles for [damage] damage!!"
					M.Death(O)
					O.Mclick = 0
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					var/mob/O = src.Gowner
					O.Mclick = 0
					del(src)
			if(istype(A,/obj/))
				var/mob/O = src.Gowner
				O.Mclick = 0
				del(src)
			var/mob/O = src.Gowner
			O.Mclick = 0

mob/Zetsu/verb/Switch()
	set name = "Doton Karada Sokui no Jutsu"
	set category = "NinJutsu"
	for(var/mob/npc/ZBunshin/C in world)
		if(C.original == usr)
			usr.chakra-=50
			var/Loc1 = usr.loc
			var/Loc2 = C.loc
			usr.loc = Loc2;C.loc = Loc1
mob/var/Mayfly
mob/Zetsu
	verb
		Mayfly()
			set category = "NinJutsu"
			set name = "Hijutsu Kagerou no Jutsu"
			usr.Handseals()
			if(usr.chakra <= 30)
				usr << "Not enough chakra!"
				return
			if (usr.firing)
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
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(!usr.handseals)
				return
			else
				var/list/O = usr.overlays.Copy()
				if(!usr.Flight&&!usr.Mayfly)
					usr.density = 0
					usr.Flight = 1
					usr.Mayfly = 1
					usr.icon = null
					usr.firing=1
					usr.overlays = usr.overlays.Remove(usr.overlays)
					return
				else
					if(usr.Flight&&usr.Mayfly)
						usr.density = 1
						usr.Flight = 0
						usr.Mayfly = 0
						usr.icon = usr.Oicon
						usr.overlays = O.Copy()
						return


mob/var/jaw
mob/Zetsu
	verb
		Jaws()
			set category = "NinJutsu"
			set name = "Doton Shichi no Jutsu"
			for(var/mob/M in oview(1,usr))
				if(M.drunk&M.Lee)
					view()<<"[M] dodges [usr]'s attack"
					return
				if(usr.jaw)
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.Froze|usr.Frozen)
					usr<<"Your Frozen"
					return
				if(usr.resting|usr.meditating)
					usr<<"Not while resting/meditating"
					return
				if(usr.caught|usr.captured)
					usr<<"Your captured"
					return
				if (M.sphere)
					usr<<"Your attack bounces off of the sand!"
					return
				if(usr.firing)
					return
				if (M.Kaiten)
					var/damage = round(usr.tai)
					if(damage <= 1)
						damage = 1
						usr <<"You attack [M] but their kaiten hakkeshou reflects the damage back at you."
						M <<"You reflect [usr]'s attack causing them to hurt themselfs."
						usr.health -= damage/2
					if(usr.health<=0)
						usr.Death(M)
						return
					else
						usr <<"You attack [M] but their kaiten hakkeshou reflects the damage back at you."
						M <<"You reflect [usr]'s attack causing them to hurt themselfs."
						usr.health -= damage
						if(usr.health<=0)
							usr.Death(M)
							return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					Death(usr)
					return
				else
					usr.jaw = 1
					var/damage = round(usr.tai*1.35)
					usr.firing=1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR='#b8860b'>D</FONT><FONT COLOR='#94800a'>o</FONT><FONT COLOR='#6f7907'>t</FONT><FONT COLOR='#4a7205'>o</FONT><FONT COLOR='#256b02'>n</FONT><FONT COLOR='#006400'> </FONT><FONT COLOR='#256b02'>S</FONT><FONT COLOR='#4a7205'>h</FONT><FONT COLOR='#6f7907'>i</FONT><FONT COLOR='#94800a'>c</FONT><FONT COLOR='#b8860b'>h</FONT><FONT COLOR='#94800a'>i</FONT><FONT COLOR='#6f7907'> </FONT><FONT COLOR='#4a7205'>n</FONT><FONT COLOR='#256b02'>o</FONT><FONT COLOR='#006400'> </FONT><FONT COLOR='#256b02'>J</FONT><FONT COLOR='#4a7205'>u</FONT><FONT COLOR='#6f7907'>t</FONT><FONT COLOR='#94800a'>s</FONT><FONT COLOR='#b8860b'>u</FONT>"
					view()<<"[M] has been hit by Jaws of Death and become slow for [damage] Damage"
					M.health -= damage
					if(M.health<=0)
						M.Death(usr)
					sleep(17)
					usr.firing=0
					if(M)
						M.Move_Delay=10
						sleep(60)
						M.Move_Delay=1
						usr.jaw = 0
mob/var/Zbunshin
obj
	bunshins
		IshiBunshinnojutsu
			verb/IshiBunshinNoJutsu()
				set name = "Ishi Bunshin no Jutsu"
				set desc = "Create a clone of Rock that can attack"
				set category = "NinJutsu"
				usr.Handseals()
				if(usr.chakra <= 30)
					usr << "Not enough chakra!"
					return
				if (usr.firing)
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
				if(usr.Frozen)
					usr<<"Your Frozen"
					return
				if(usr.caught)
					usr<<"Your captured"
					return
				if(usr.captured)
					usr<<"Your captured"
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(!usr.handseals)
					return
				else
					usr.KillBunshin()
					usr.firing=1
					view() << "<font color=silver><b><font face=verdana>[usr] says: Ichi Bunshin No Jutsu!!"
					var/mob/npc/ZBunshin/S = new /mob/npc/ZBunshin
					usr.Chakragain()
					usr.Zbunshin += 1
					if(S)
						S.original = usr
						S.name = "[usr.name]"
						S.icon = usr.icon
						S.overlays += usr.overlays
						S.loc = locate(usr.x, usr.y - 1, usr.z)
						S.tai = usr:tai/8
						S.health = usr.health
						usr.chakra -= 17
					sleep(20)
					usr.firing=0
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.ninexp += rand(1,10)
							usr.Nin()
							usr.Skills()
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
					else
						usr.random = rand(1,20)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."

mob/var/misuse=0

mob/Zetsu
	verb
		Missle()
			set name = "Doton Kasui Dangan no Jutsu"
			set category = "NinJutsu"
			usr.Handseals()
			if(usr.firing&&!usr.Mclick)
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.misuse)
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(usr.Froze||usr.Frozen)
				usr<<"You're Frozen"
				return
			if(usr.resting||usr.meditating)
				usr<<"Not while resting/meditating"
				return
			if(usr.caught||usr.captured)
				usr<<"You're captured"
				return
			else
				if(usr.Mclick)
					for(var/obj/EMissle/E in world)
						E.ExplodeMissle()
						return
				else
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR='#a52a2a'>D</FONT><FONT COLOR='#af423a'>o</FONT><FONT COLOR='#b85a49'>t</FONT><FONT COLOR='#c27259'>o</FONT><FONT COLOR='#cc8969'>n</FONT><FONT COLOR='#d5a178'> </FONT><FONT COLOR='#deb887'>K</FONT><FONT COLOR='#e0b486'>a</FONT><FONT COLOR='#e1af84'>s</FONT><FONT COLOR='#e3aa82'>u</FONT><FONT COLOR='#e5a580'>i</FONT><FONT COLOR='#e7a07e'> </FONT><FONT COLOR='#e89b7c'>D</FONT><FONT COLOR='#e9967a'>a</FONT><FONT COLOR='#e89b7c'>n</FONT><FONT COLOR='#e7a07e'>g</FONT><FONT COLOR='#e5a580'>a</FONT><FONT COLOR='#e3aa82'>n</FONT><FONT COLOR='#e1af84'> </FONT><FONT COLOR='#e0b486'>n</FONT><FONT COLOR='#deb887'>o</FONT><FONT COLOR='#d5a178'> </FONT><FONT COLOR='#cc8969'>J</FONT><FONT COLOR='#c27259'>u</FONT><FONT COLOR='#b85a49'>t</FONT><FONT COLOR='#af423a'>s</FONT><FONT COLOR='#a52a2a'>u</FONT>"
					usr.chakra -= 4000
					usr.firing=1
					usr.misuse = 1
					usr.Mclick = 1
					usr.Chakragain()
					if(usr.dir == NORTH)
						var/obj/EMissle/A = new /obj/EMissle/
						var/obj/EMissle/B = new /obj/EMissle/
						var/obj/EMissle/C = new /obj/EMissle/
						A.loc = locate(usr.x, usr.y+1, usr.z)
						C.loc = locate(usr.x+1, usr.y+1, usr.z)
						B.loc = locate(usr.x-1, usr.y+1, usr.z)
						A.nin=usr.nin
						B.nin=usr.nin
						C.nin=usr.nin
						A.Gowner=usr
						B.Gowner=usr
						C.Gowner=usr
						A.dir = NORTH
						B.dir = NORTH
						C.dir = NORTH
						walk(A,usr.dir)
						walk(B,usr.dir)
						walk(C,usr.dir)
						usr.firing=0
						sleep(600)
						usr.Mclick = 0
						del(A)
						del(B)
						del(C)
						sleep(110)
					if(usr.dir == SOUTH)
						var/obj/EMissle/A = new /obj/EMissle/
						var/obj/EMissle/B = new /obj/EMissle/
						var/obj/EMissle/C = new /obj/EMissle/
						A.loc = locate(usr.x, usr.y-1, usr.z)
						C.loc = locate(usr.x+1, usr.y-1, usr.z)
						B.loc = locate(usr.x-1, usr.y-1, usr.z)
						A.nin=usr.nin
						B.nin=usr.nin
						C.nin=usr.nin
						A.Gowner=usr
						B.Gowner=usr
						C.Gowner=usr
						A.dir = SOUTH
						B.dir = SOUTH
						C.dir = SOUTH
						walk(A,usr.dir)
						walk(B,usr.dir)
						walk(C,usr.dir)
						usr.firing=0
						sleep(600)
						usr.Mclick = 0
						del(A)
						del(B)
						del(C)
						sleep(110)
					if(usr.dir == WEST)
						var/obj/EMissle/A = new /obj/EMissle/
						var/obj/EMissle/B = new /obj/EMissle/
						var/obj/EMissle/C = new /obj/EMissle/
						A.loc = locate(usr.x-1, usr.y, usr.z)
						C.loc = locate(usr.x-1, usr.y-1, usr.z)
						B.loc = locate(usr.x-1, usr.y+1, usr.z)
						A.nin=usr.nin
						B.nin=usr.nin
						C.nin=usr.nin
						A.Gowner=usr
						B.Gowner=usr
						C.Gowner=usr
						A.dir = WEST
						B.dir = WEST
						C.dir = WEST
						walk(A,usr.dir)
						walk(B,usr.dir)
						walk(C,usr.dir)
						usr.firing=0
						sleep(600)
						del(A)
						del(B)
						del(C)
						usr.Mclick = 0
						sleep(110)
					if(usr.dir == EAST)
						var/obj/EMissle/A = new /obj/EMissle/
						var/obj/EMissle/B = new /obj/EMissle/
						var/obj/EMissle/C = new /obj/EMissle/
						A.loc = locate(usr.x+1, usr.y, usr.z)
						C.loc = locate(usr.x+1, usr.y-1, usr.z)
						B.loc = locate(usr.x+1, usr.y+1, usr.z)
						A.nin=usr.nin
						B.nin=usr.nin
						C.nin=usr.nin
						A.Gowner=usr
						B.Gowner=usr
						C.Gowner=usr
						A.dir = EAST
						B.dir = EAST
						C.dir = EAST
						walk(A,usr.dir)
						walk(B,usr.dir)
						walk(C,usr.dir)
						usr.firing=0
						sleep(600)
						del(A)
						del(B)
						del(C)
						usr.Mclick = 0
						sleep(110)
						return
					sleep(10)
					usr.firing=0
					sleep(100)
					usr.misuse=0
					return
		StoneBlast()
			set name = "Doton Ishi Bakufou no Jutsu"
			set category = "NinJutsu"
			usr.Handseals()
			if(usr.firing)
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(usr.Froze||usr.Frozen)
				usr<<"You're Frozen"
				return
			if(usr.resting||usr.meditating)
				usr<<"Not while resting/meditating"
				return
			if(usr.caught||usr.captured)
				usr<<"You're captured"
				return
			else
				if(usr.Stone)
					usr.Stone = 0
					var/E = usr.stoneside1
					var/B = usr.stoneside2
					var/C = usr.stoneside3
					var/D = usr.stoneside4
					for(var/obj/Stone/A in view())
						if(E != 0)
							A.nin=usr.nin
							A.Gowner=usr
							A.dir = E
							walk(A,E)
							usr.stoneside1 = 0
						if(B != 0)
							A.nin=usr.nin
							A.Gowner=usr
							A.dir = B
							walk(A,B)
							usr.stoneside2 = 0
						if(C != 0)
							A.nin=usr.nin
							A.Gowner=usr
							A.dir = C
							walk(A,C)
							usr.stoneside3 = 0
						if(D != 0)
							A.nin=usr.nin
							A.Gowner=usr
							A.dir = D
							walk(A,D)
							usr.stoneside4 = 0
				else
					usr<<"You must use Stone Barrier first!"
		StoneBarrier()
			set name = "Doton Ishi Shoheki no Jutsu"
			set category = "NinJutsu"
			usr.Handseals()
			if(usr.firing||usr.delayed)
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.MaxStone >= 4)
				usr<<"You can only summon 4 rocks!"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(usr.Froze||usr.Frozen)
				usr<<"You're Frozen"
				return
			if(usr.resting||usr.meditating)
				usr<<"Not while resting/meditating"
				return
			if(usr.caught||usr.captured)
				usr<<"You're captured"
				return
			else
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR='#90ee90'>D</FONT><FONT COLOR='#94e394'>o</FONT><FONT COLOR='#99d899'>t</FONT><FONT COLOR='#9dcc9d'>o</FONT><FONT COLOR='#a1c0a1'>n</FONT><FONT COLOR='#a6b5a6'> </FONT><FONT COLOR='#a9a9a9'>I</FONT><FONT COLOR='#a6aca6'>s</FONT><FONT COLOR='#a2afa2'>h</FONT><FONT COLOR='#9eb29e'>i</FONT><FONT COLOR='#9bb49b'> </FONT><FONT COLOR='#97b797'>S</FONT><FONT COLOR='#93ba93'>h</FONT><FONT COLOR='#8fbc8f'>o</FONT><FONT COLOR='#93ba93'>h</FONT><FONT COLOR='#97b797'>e</FONT><FONT COLOR='#9bb49b'>k</FONT><FONT COLOR='#9eb29e'>i</FONT><FONT COLOR='#a2afa2'> </FONT><FONT COLOR='#a6aca6'>n</FONT><FONT COLOR='#a9a9a9'>o</FONT><FONT COLOR='#a6b5a6'> </FONT><FONT COLOR='#a1c0a1'>J</FONT><FONT COLOR='#9dcc9d'>u</FONT><FONT COLOR='#99d899'>t</FONT><FONT COLOR='#94e394'>s</FONT><FONT COLOR='#90ee90'>u</FONT>"
				usr.Stone = 1
				usr.delayed = 1
				usr.MaxStone +=1
				if(usr.MaxStone == 1)
					usr.stoneside1 = usr.dir
				if(usr.MaxStone == 2)
					usr.stoneside2 = usr.dir
				if(usr.MaxStone == 3)
					usr.stoneside3 = usr.dir
				if(usr.MaxStone == 4)
					usr.stoneside4 = usr.dir
				if(usr.dir == NORTH)
					var/obj/Stone/A = new /obj/Stone/
					A.loc = locate(usr.x, usr.y+1, usr.z)
					A.Gowner = usr
					flick("rise",A)
				if(usr.dir == SOUTH)
					var/obj/Stone/A = new /obj/Stone/
					A.loc = locate(usr.x, usr.y-1, usr.z)
					A.Gowner = usr
					flick("rise",A)
				if(usr.dir == WEST)
					var/obj/Stone/A = new /obj/Stone/
					A.loc = locate(usr.x-1, usr.y, usr.z)
					A.Gowner = usr
					flick("rise",A)
				if(usr.dir == EAST)
					var/obj/Stone/A = new /obj/Stone/
					A.loc = locate(usr.x+1, usr.y, usr.z)
					A.Gowner = usr
					flick("rise",A)
				sleep(100)
				usr.delayed = 0
		Mountain()
			set name = "Doton Yama Tatsu no Jutsu"
			set category = "NinJutsu"
			usr.Handseals()
			if(usr.firing)
				return
			if(usr.Mountain)
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(usr.Froze||usr.Frozen)
				usr<<"You're Frozen"
				return
			if(usr.resting||usr.meditating)
				usr<<"Not while resting/meditating"
				return
			if(usr.caught||usr.captured)
				usr<<"You're captured"
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else
				usr.Mountain = 1
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR='#a52a2a'>D</FONT><FONT COLOR='#a63f3f'>o</FONT><FONT COLOR='#a75555'>t</FONT><FONT COLOR='#a86a6a'>o</FONT><FONT COLOR='#a87f7f'>n</FONT><FONT COLOR='#a99595'> </FONT><FONT COLOR='#a9a9a9'>Y</FONT><FONT COLOR='#8e9e8e'>a</FONT><FONT COLOR='#719371'>m</FONT><FONT COLOR='#558755'>a</FONT><FONT COLOR='#397b39'> </FONT><FONT COLOR='#1c701c'>T</FONT><FONT COLOR='#006400'>a</FONT><FONT COLOR='#1c701c'>t</FONT><FONT COLOR='#397b39'>s</FONT><FONT COLOR='#558755'>u</FONT><FONT COLOR='#719371'> </FONT><FONT COLOR='#8e9e8e'>n</FONT><FONT COLOR='#a9a9a9'>o</FONT><FONT COLOR='#a99595'> </FONT><FONT COLOR='#a87f7f'>J</FONT><FONT COLOR='#a86a6a'>u</FONT><FONT COLOR='#a75555'>t</FONT><FONT COLOR='#a63f3f'>s</FONT><FONT COLOR='#a52a2a'>u</FONT>"
				var/obj/Mountain/F = new /obj/Mountain/
				var/obj/Mountain/G = new /obj/Mountain/
				var/obj/Mountain/H = new /obj/Mountain/
				var/obj/Mountain/I = new /obj/Mountain/
				var/obj/Mountain/J = new /obj/Mountain/
				var/obj/Mountain/L = new /obj/Mountain/
				var/obj/Mountain/A = new /obj/Mountain/
				var/obj/Mountain/B = new /obj/Mountain/
				var/obj/Mountain/M2 = new /obj/Mountain/
				var/obj/Mountain/N = new /obj/Mountain/
				var/obj/Mountain/O = new /obj/Mountain/
				var/obj/Mountain/P = new /obj/Mountain/
				var/obj/Mountain/D = new /obj/Mountain/
				var/obj/Mountain/E = new /obj/Mountain/
				var/obj/Mountain/C = new /obj/Mountain/
				var/obj/Mountain/K = new /obj/Mountain/
				var/obj/Mountain/Q = new /obj/Mountain/
				var/obj/Mountain/R = new /obj/Mountain/
				var/obj/Mountain/S = new /obj/Mountain/
				var/obj/Mountain/T = new /obj/Mountain/
				var/obj/Mountain/W = new /obj/Mountain/
				var/obj/Mountain/X = new /obj/Mountain/
				var/obj/Mountain/Y = new /obj/Mountain/
				var/obj/Mountain/Z = new /obj/Mountain/
				var/obj/Mountain/AB = new /obj/Mountain/
				var/obj/Mountain/AC = new /obj/Mountain/
				var/obj/Mountain/AD = new /obj/Mountain/
				var/obj/Mountain/AE = new /obj/Mountain/
				var/obj/Mountain/AF = new /obj/Mountain/
				var/obj/Mountain/AG = new /obj/Mountain/
				var/obj/Mountain/AH = new /obj/Mountain/
				var/obj/Mountain/AI = new /obj/Mountain/
				var/obj/Mountain/AJ = new /obj/Mountain/
				var/obj/Mountain/AK = new /obj/Mountain/
				var/obj/Mountain/AL = new /obj/Mountain/
				var/obj/Mountain/AM = new /obj/Mountain/
				var/obj/Mountain/AN = new /obj/Mountain/
				var/obj/Mountain/AO = new /obj/Mountain/
				var/obj/Mountain/AP = new /obj/Mountain/
				var/obj/Mountain/AQ = new /obj/Mountain/
				var/obj/Mountain/AR = new /obj/Mountain/
				var/obj/Mountain/AS = new /obj/Mountain/
				var/obj/Mountain/AT = new /obj/Mountain/
				var/obj/Mountain/AU = new /obj/Mountain/
				var/obj/Mountain/AV = new /obj/Mountain/
				var/obj/Mountain/AW = new /obj/Mountain/
				var/obj/Mountain/AX= new /obj/Mountain/
				var/obj/Mountain/AY = new /obj/Mountain/
				var/obj/Mountain/AZ = new /obj/Mountain/
				usr.chakra -= 10000
				A.owner=usr
				B.owner=usr
				C.owner=usr
				D.owner=usr
				E.owner=usr
				F.owner=usr
				G.owner=usr
				H.owner=usr
				I.owner=usr
				J.owner=usr
				K.owner=usr
				L.owner=usr
				M2.owner=usr
				N.owner=usr
				O.owner=usr
				P.owner=usr
				Q.owner=usr
				R.owner=usr
				S.owner=usr
				T.owner=usr
				W.owner=usr
				X.owner=usr
				Y.owner=usr
				Z.owner=usr
				AB.owner=usr
				AC.owner=usr
				AD.owner=usr
				AE.owner=usr
				AF.owner=usr
				AG.owner=usr
				AH.owner=usr
				AI.owner=usr
				AJ.owner=usr
				AK.owner=usr
				AL.owner=usr
				AM.owner=usr
				AN.owner=usr
				AO.owner=usr
				AP.owner=usr
				AQ.owner=usr
				AR.owner=usr
				AS.owner=usr
				AV.owner=usr
				AW.owner=usr
				AX.owner=usr
				AY.owner=usr
				AZ.owner=usr
				AU.owner=usr
				AV.owner=usr
				A.tai=usr.tai
				B.tai=usr.tai
				C.tai=usr.tai
				D.tai=usr.tai
				E.tai=usr.tai
				F.tai=usr.tai
				G.tai=usr.tai
				H.tai=usr.tai
				I.tai=usr.tai
				J.tai=usr.tai
				K.tai=usr.tai
				L.tai=usr.tai
				M2.tai=usr.tai
				N.tai=usr.tai
				O.tai=usr.tai
				P.tai=usr.tai
				Q.tai=usr.tai
				R.tai=usr.tai
				S.tai=usr.tai
				T.tai=usr.tai
				W.tai=usr.tai
				X.tai=usr.tai
				Y.tai=usr.tai
				Z.tai=usr.tai
				AB.tai=usr.tai
				AC.tai=usr.tai
				AD.tai=usr.tai
				AE.tai=usr.tai
				AF.tai=usr.tai
				AG.tai=usr.tai
				AH.tai=usr.tai
				AI.tai=usr.tai
				AJ.tai=usr.tai
				AK.tai=usr.tai
				AL.tai=usr.tai
				AM.tai=usr.tai
				AN.tai=usr.tai
				AO.tai=usr.tai
				AP.tai=usr.tai
				AQ.tai=usr.tai
				AR.tai=usr.tai
				AS.tai=usr.tai
				AV.tai=usr.tai
				AW.tai=usr.tai
				AX.tai=usr.tai
				AY.tai=usr.tai
				AZ.tai=usr.tai
				AU.tai=usr.tai
				AV.tai=usr.tai
				K.loc = locate(usr.x,usr.y,usr.z)
				K.Mountain=1
				A.loc = locate(usr.x+1,usr.y,usr.z)
				A.Mountain=1
				C.loc = locate(usr.x-1,usr.y,usr.z)
				C.Mountain=1
				B.loc = locate(usr.x,usr.y+1,usr.z)
				B.Mountain=1
				D.loc = locate(usr.x,usr.y-1,usr.z)
				D.Mountain=1
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				E.Mountain=1
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				F.Mountain=1
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				G.Mountain=1
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				H.Mountain=1
				I.loc = locate(usr.x+2,usr.y,usr.z)
				I.Mountain=1
				J.loc = locate(usr.x-2,usr.y,usr.z)
				J.Mountain=1
				L.loc = locate(usr.x,usr.y+2,usr.z)
				L.Mountain=1
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				M2.Mountain=1
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				N.Mountain=1
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
				O.Mountain=1
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				P.Mountain=1
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				Q.Mountain=1
				R.loc = locate(usr.x+3,usr.y,usr.z)
				R.Mountain=1
				S.loc = locate(usr.x-3,usr.y,usr.z)
				S.Mountain=1
				T.loc = locate(usr.x,usr.y+3,usr.z)
				T.Mountain=1
				W.loc = locate(usr.x,usr.y-3,usr.z)
				W.Mountain=1
				X.loc = locate(usr.x+3,usr.y+3,usr.z)
				X.Mountain=1
				Y.loc = locate(usr.x-3,usr.y-3,usr.z)
				Y.Mountain=1
				Z.loc = locate(usr.x-3,usr.y+3,usr.z)
				Z.Mountain=1
				AB.loc = locate(usr.x-3,usr.y-2,usr.z)
				AB.Mountain=1
				AC.loc = locate(usr.x+3,usr.y+2,usr.z)
				AC.Mountain=1
				AD.loc = locate(usr.x+3,usr.y-2,usr.z)
				AD.Mountain=1
				AE.loc = locate(usr.x-3,usr.y+2,usr.z)
				AE.Mountain=1
				AF.loc = locate(usr.x+2,usr.y+3,usr.z)
				AF.Mountain=1
				AG.loc = locate(usr.x-2,usr.y-3,usr.z)
				AG.Mountain=1
				AH.loc = locate(usr.x-2,usr.y+3,usr.z)
				AH.Mountain=1
				AI.loc = locate(usr.x+2,usr.y-3,usr.z)
				AI.Mountain=1
				AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
				AJ.Mountain=1
				AK.loc = locate(usr.x+1,usr.y+2,usr.z)
				AK.Mountain=1
				AL.loc = locate(usr.x+1,usr.y-2,usr.z)
				AL.Mountain=1
				AM.loc = locate(usr.x-1,usr.y+2,usr.z)
				AM.Mountain=1
				AN.loc = locate(usr.x+2,usr.y+1,usr.z)
				AN.Mountain=1
				AO.loc = locate(usr.x-2,usr.y-1,usr.z)
				AO.Mountain=1
				AP.loc = locate(usr.x-2,usr.y+1,usr.z)
				AP.Mountain=1
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AQ.Mountain=1
				AR.loc = locate(usr.x-1,usr.y-3,usr.z)
				AR.Mountain=1
				AS.loc = locate(usr.x+1,usr.y+3,usr.z)
				AS.Mountain=1
				AT.loc = locate(usr.x+1,usr.y-3,usr.z)
				AT.Mountain=1
				AU.loc = locate(usr.x-1,usr.y+3,usr.z)
				AU.Mountain=1
				AV.loc = locate(usr.x+3,usr.y+1,usr.z)
				AV.Mountain=1
				AW.loc = locate(usr.x-3,usr.y-1,usr.z)
				AW.Mountain=1
				AX.loc = locate(usr.x-3,usr.y+1,usr.z)
				AX.Mountain=1
				AY.loc = locate(usr.x+3,usr.y-1,usr.z)
				AY.Mountain=1
				AZ.loc = locate(usr.x+3,usr.y-3,usr.z)
				AZ.Mountain=1
				flick("rise",A)
				flick("rise",B)
				flick("rise",C)
				flick("rise",D)
				flick("rise",E)
				flick("rise",F)
				flick("rise",G)
				flick("rise",H)
				flick("rise",I)
				flick("rise",J)
				flick("rise",K)
				flick("rise",L)
				flick("rise",M2)
				flick("rise",N)
				flick("rise",O)
				flick("rise",P)
				flick("rise",Q)
				flick("rise",R)
				flick("rise",S)
				flick("rise",T)
				flick("rise",W)
				flick("rise",X)
				flick("rise",Y)
				flick("rise",Z)
				flick("rise",AB)
				flick("rise",AC)
				flick("rise",AD)
				flick("rise",AE)
				flick("rise",AF)
				flick("rise",AG)
				flick("rise",AH)
				flick("rise",AI)
				flick("rise",AJ)
				flick("rise",AK)
				flick("rise",AL)
				flick("rise",AM)
				flick("rise",AN)
				flick("rise",AO)
				flick("rise",AP)
				flick("rise",AQ)
				flick("rise",AR)
				flick("rise",AS)
				flick("rise",AT)
				flick("rise",AU)
				flick("rise",AV)
				flick("rise",AW)
				flick("rise",AX)
				flick("rise",AY)
				flick("rise",AZ)
				for(var/mob/M in oview(3,usr))
					var/damage=round(usr.tai*1.3)
					if(M.Flight||!M.density) //that's why, loool
						M.density = 1
						M.Flight = 0
						M.overlays -= 'Flight.dmi'
					view()<<"[M] has taken [damage] damage from [usr]'s Mountain No Mai"
					M.health-=damage
					if(M.health<=0)
						M.Death(usr)
				sleep(100)
				del(K)
				del(A)
				del(B)
				del(C)
				del(D)
				del(E)
				del(F)
				del(G)
				del(H)
				del(I)
				del(J)
				del(L)
				del(M2)
				del(N)
				del(O)
				del(P)
				del(Q)
				del(R)
				del(S)
				del(T)
				del(W)
				del(X)
				del(Y)
				del(Z)
				del(AB)
				del(AC)
				del(AD)
				del(AE)
				del(AF)
				del(AG)
				del(AH)
				del(AI)
				del(AJ)
				del(AK)
				del(AL)
				del(AM)
				del(AN)
				del(AO)
				del(AP)
				del(AQ)
				del(AR)
				del(AS)
				del(AT)
				del(AU)
				del(AV)
				del(AW)
				del(AX)
				del(AY)
				del(AZ)
				usr.firing = 1
				sleep(1200)
				usr.Mountain = 1