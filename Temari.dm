obj//ERROR
	windst
		density=1
		icon='dragonstorm.dmi'
		icon_state="2"
		New()
			..()
			spawn()
				src.delete()
		proc/delete()
			spawn(10)
				del(src)
obj//ERROR
	windtu
		density=1
		icon='dragonstorm.dmi'
		icon_state=""
		Move()
			..()
			var/obj/windst/T = new /obj/windst
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
				var/damage = round(src.nin*1.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Daikamaitachi No Jutsu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Temari
	verb
		WD()
			set category = "NinJutsu"
			set name = "Daikamaitachi no jutsu"
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
				view()<<"<font color=silver><b><font face=verdana>[usr]: Daikamaitachi No Jutsu!!"
				usr.chakra -= 500
				var/obj/windtu/B = new /obj/windtu
				B.Gowner=usr
				B.nin = usr.nin
				B.loc = usr.loc
				B.Move_Delay=0
				usr.Chakragain()
				walk(B,usr.dir)
				sleep(15)
				usr.firing=0
				sleep(15)
				del(B)

obj
	Wind_S
		icon = 'WindStrike.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*1.4)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by your wind for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


mob/Temari
	verb
		Wind_GTD() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Great Task of the Dragon"
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
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
			else // If the firing var isn't 1...
				if(!usr.hyoushou)
					usr.chakra -= 4500
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.SensatsuN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Wind Style: Great Task of the Dragon!!"
					var/obj/Wind_S/S1 = new /obj/Wind_S
					var/obj/Wind_S/S2 = new /obj/Wind_S
					var/obj/Wind_S/S3 = new /obj/Wind_S
					var/obj/Wind_S/S4 = new /obj/Wind_S
					var/obj/Wind_S/S5 = new /obj/Wind_S
					var/obj/Wind_S/S6 = new /obj/Wind_S
					var/obj/Wind_S/S7 = new /obj/Wind_S
					var/obj/Wind_S/S8 = new /obj/Wind_S
					usr.Chakragain()
					S1.loc = usr.loc
					S1.nin=usr.nin
					S1.dir = NORTH
					S1.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S1.Gowner=usr
					walk(S1,NORTH)
					S2.loc = usr.loc
					S2.nin=usr.nin
					S2.dir = SOUTH
					S2.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S2.Gowner=usr
					walk(S2,SOUTH)
					S3.loc = usr.loc
					S3.nin=usr.nin
					S3.dir = WEST
					S3.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S3.Gowner=usr
					walk(S3,WEST)
					S4.loc = usr.loc
					S4.nin=usr.nin
					S4.dir = EAST
					S4.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S4.Gowner=usr
					walk(S4,EAST)
					S5.loc = usr.loc
					S5.nin=usr.nin
					S5.dir = NORTH
					S5.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S5.Gowner=usr
					walk(S5,NORTH)
					S6.loc = usr.loc
					S6.nin=usr.nin
					S6.dir = SOUTH
					S6.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S6.Gowner=usr
					walk(S6,SOUTH)
					S7.loc = usr.loc
					S7.nin=usr.nin
					S7.dir = WEST
					S7.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S7.Gowner=usr
					walk(S7,WEST)
					S8.loc = usr.loc
					S8.nin=usr.nin
					S8.dir = EAST
					S8.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S8.Gowner=usr
					walk(S8,EAST)
					sleep(20)
					usr.firing = 0
					sleep(45)
					del(S1)
					del(S2)
					del(S3)
					del(S4)
					del(S5)
					del(S6)
					del(S7)
					del(S8)
					return
mob/Temari
	verb
		WindStorm(mob/M in oview(1)) // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Wind Storm"
			if(usr.firing)
				return
			if(M.PK==0)
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M)
				if(M.Froze)
					usr << "Their already Froze.."
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
			else // If the firing var isn't 1...
				M<<"Your Frozen by [usr]'s Wind Storm."
				usr<<"You Froze [M] with your Wind Storm"
				var/Sleeptime = round(usr.nin/150)
				if(Sleeptime <= 1)
					Sleeptime = 55
					M.overlays += 'WaterStrom.dmi'
					M.Frozen = 1
					M.Froze = 1
					sleep(Sleeptime)
					if(M)
						M.Frozen=0
						M<<"You break out of [usr]'s Wind Storm."
						M.overlays -= 'WaterStrom.dmi'
						usr<<"[M] is free from your Wind Storm!"
						M.Froze = 0
					sleep(8)
				else
					M.overlays += 'WaterStrom.dmi'
					M.Frozen=1
					M.Froze = 1
					sleep(Sleeptime)
					if(M)
						M.Frozen=0
						M<<"You break out of [usr]'s Wind Storm."
						M.overlays -= 'WaterStrom.dmi'
						usr<<"[M] is free from your Wind Storm!"
						M.Froze = 0
					sleep(8)
				sleep(100)
				if(M)
					M.Froze=0

mob/Temari
	verb
		Sickle_S() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Fusajin No Jutsu"
			if(usr.firing)
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.counter==0||usr.Temari)
				usr.firing=1
				usr.counter=1
				view()<<"<font color=silver><b><font face=verdana>[usr]: Fusajin No Jutsu!!"
				usr.overlays += 'WaterStrom.dmi'
				sleep(30)
				usr.counter=0
				usr.overlays -= 'WaterStrom.dmi'
				usr.firing=0
				return
			else
				usr<<"Your wind is already protecting you"

ob/var
	TEM = 0
mob/Temari
	verb
		WindStrike(mob/M)
			set category = "NinJutsu"
			set name = "Wind Strike"
			usr.Handseals()
			if(usr.firing||usr.counter) // If the mob's firing var is one...
				return
			if(M.PK==0)
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
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 24)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
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
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return

			else // If the firing var isn't 1...
				if(usr.YSU >= 100)
					usr.firing = 24 // Sets the firing var to 1, so he cant fire another beam
					usr.YSU += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#8b0000>K</FONT><FONT COLOR=#980000>a</FONT><FONT COLOR=#a50000>t</FONT><FONT COLOR=#b20000>o</FONT><FONT COLOR=#bf0000>n</FONT><FONT COLOR=#cc0000>:</FONT><FONT COLOR=#d90000> </FONT><FONT COLOR=#e60000>K</FONT><FONT COLOR=#f30000>a</FONT><FONT COLOR=#ff0000>r</FONT><FONT COLOR=#fc0206>y</FONT><FONT COLOR=#f9040c>u</FONT><FONT COLOR=#f50612>u</FONT><FONT COLOR=#f20818> </FONT><FONT COLOR=#ee0b1f>E</FONT><FONT COLOR=#ea0d25>n</FONT><FONT COLOR=#e70f2b>d</FONT><FONT COLOR=#e31131>a</FONT><FONT COLOR=#e01337>n</FONT><FONT COLOR=#dc143c>!</FONT>"
					var/obj/WindStrike/K = new /obj/WindStrike
					usr.target=M
					K.loc = usr.loc
					K.nin=usr.nin
					K.name="[usr]"
					K.Gowner=usr
					usr.Chakragain()
					K.Move_Delay=2
					walk_towards(K,M)
					sleep(1)
					usr.move = 1
					sleep(10)
					usr.firing = 0
					sleep(21)
					del(K)
					if (target == null)
						del(K)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.ninexp += rand(1,10)
							usr.Nin()
							usr.Skills()
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								usr.ChakraC+=ccgain
								if(usr.ChakraC>100)
									usr.ChakraC=100
								usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							return
					else
						usr.random = rand(1,20)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								usr.ChakraC+=ccgain
								if(usr.ChakraC>100)
									usr.ChakraC=100
								usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.firing = 24 // Sets the firing var to 1, so he cant fire another beam
						usr.YSU += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#3a3a3a>W</FONT><FONT COLOR=#484848>i</FONT><FONT COLOR=#565656>n</FONT><FONT COLOR=#656565>d</FONT><FONT COLOR=#737373>S</FONT><FONT COLOR=#808080>t</FONT><FONT COLOR=#737373>r</FONT><FONT COLOR=#656565>i</FONT><FONT COLOR=#565656>k</FONT><FONT COLOR=#484848>e</FONT><FONT COLOR=#3a3a3a></FONT> "
						var/obj/WindStrike/K = new /obj/WindStrike
						usr.target=M
						K.loc = usr.loc
						K.nin=usr.nin
						usr.Chakragain()
						K.name="[usr]"
						K.Move_Delay=2
						K.Gowner=usr
						walk_towards(K,M)
						sleep(1)
						sleep(10)
						usr.firing = 0
						sleep(21)
						del(K)
						if (target == null)
							del(K)
						if(usr.Mnin <= usr.cap)
							usr.random = rand(1,6)
							if(random == 5||random==1)
								usr.ninexp += rand(1,10)
								usr.Nin()
								usr.Skills()
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									usr.ChakraC+=ccgain
									if(usr.ChakraC>100)
										usr.ChakraC=100
									usr<<"[usr] you gained [ccgain] Chakra control..."
							else
								return
						else
							usr.random = rand(1,20)
							if(random == 5||random==1)
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									usr.ChakraC+=ccgain
									if(usr.ChakraC>100)
										usr.ChakraC=100
									usr<<"[usr] you gained [ccgain] Chakra control..."
							else
								return
					else
						usr<<"You failed to use Wind Strike"

obj
	Quick_BD
		icon = 'WindStrike.dmi'//dont have a base icon so cant make weights icon!lol
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				var/mob/O = src.Gowner
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*1.3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Kirikiri Mai for [damage] damage!!"
					M.Death(O)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Temari
	verb
		QuickBeheading() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Kirikiri Mai"
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
			if(usr.chakra <= 40)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				usr.DoryuuN += 1
				usr.chakra -= 3900
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <font size=1><font face=verdana><b><font color=silver> Fuuton: Kirikiri Mai!!"
				usr.firing=1
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/Wind_S/A = new /obj/Wind_S/
					var/obj/Wind_S/B = new /obj/Wind_S/
					var/obj/Wind_S/C = new /obj/Wind_S/
					var/obj/Wind_S/D = new /obj/Wind_S/
					var/obj/Wind_S/E = new /obj/Wind_S/
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					D.loc = locate(usr.x-2, usr.y+1, usr.z)
					E.loc = locate(usr.x+2, usr.y+1, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					D.nin=usr.nin
					E.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					D.dir = NORTH
					E.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					sleep(110)
				if(usr.dir == SOUTH)
					var/obj/Wind_S/A = new /obj/Wind_S/
					var/obj/Wind_S/B = new /obj/Wind_S/
					var/obj/Wind_S/C = new /obj/Wind_S/
					var/obj/Wind_S/D = new /obj/Wind_S/
					var/obj/Wind_S/E = new /obj/Wind_S/
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-2, usr.y-1, usr.z)
					E.loc = locate(usr.x+2, usr.y-1, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					D.nin=usr.nin
					E.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = SOUTH
					B.dir = SOUTH
					C.dir = SOUTH
					D.dir = SOUTH
					E.dir = SOUTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					sleep(110)
				if(usr.dir == WEST)
					var/obj/Wind_S/A = new /obj/Wind_S/
					var/obj/Wind_S/B = new /obj/Wind_S/
					var/obj/Wind_S/C = new /obj/Wind_S/
					var/obj/Wind_S/D = new /obj/Wind_S/
					var/obj/Wind_S/E = new /obj/Wind_S/
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-2, usr.z)
					D.loc = locate(usr.x-1, usr.y+1, usr.z)
					E.loc = locate(usr.x-1, usr.y+2, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					D.nin=usr.nin
					E.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = WEST
					B.dir = WEST
					C.dir = WEST
					D.dir = WEST
					E.dir = WEST
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					sleep(110)
				if(usr.dir == EAST)
					var/obj/Wind_S/A = new /obj/Wind_S/
					var/obj/Wind_S/B = new /obj/Wind_S/
					var/obj/Wind_S/C = new /obj/Wind_S/
					var/obj/Wind_S/D = new /obj/Wind_S/
					var/obj/Wind_S/E = new /obj/Wind_S/
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x+1, usr.y-2, usr.z)
					D.loc = locate(usr.x+1, usr.y+1, usr.z)
					E.loc = locate(usr.x+1, usr.y+2, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					D.nin=usr.nin
					E.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					A.dir = EAST
					B.dir = EAST
					C.dir = EAST
					D.dir = EAST
					E.dir = EAST
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					sleep(110)
					return
				sleep(20)
				usr.firing=0
				return