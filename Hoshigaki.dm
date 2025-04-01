obj/
	Same
		icon = 'Sharks.dmi'
		icon_state="sharkattack"
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
				var/damage = round(src.nin*1.4)
				if(damage >= 1)
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

mob/Hoshigaki
	verb
		SharkAttack()
			set category = "NinJutsu"
			set name = "Suiton Single Same No Jutsu"
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
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=blue> Says: Single Suiton Same No Jutsu!</font>"
				var/obj/Same/S1 = new /obj/Same/
				S1.loc = usr.loc
				S1.nin = usr.nin
				S1.dir = usr.dir
				S1.name = "[usr]"
				S1.Gowner = usr
				walk(S1,usr.dir)
				sleep(10)
				usr.firing = 0
				sleep(45)
				del(S1)
mob/Hoshigaki
	verb
		Sharkz() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Suiton Same No Jutsu"
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
				usr.chakra -= 4500
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=blue> Says: <font size=1><font face=verdana><b><font color=blue> Suiton Same No Jutsu!!"
				usr.firing=1
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/Shark/A = new /obj/Shark/
					var/obj/Shark/B = new /obj/Shark/
					var/obj/Shark/C = new /obj/Shark/
					var/obj/Shark/D = new /obj/Shark/
					var/obj/Shark/E = new /obj/Shark/
					var/obj/Shark/F = new /obj/Shark/
					var/obj/Shark/G = new /obj/Shark/
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					D.loc = locate(usr.x+2, usr.y+1, usr.z)
					E.loc = locate(usr.x-2, usr.y+1, usr.z)
					F.loc = locate(usr.x+3, usr.y+1, usr.z)
					G.loc = locate(usr.x-3, usr.y+1, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					D.nin=usr.nin
					E.nin=usr.nin
					F.nin=usr.nin
					G.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					F.Gowner=usr
					G.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					D.dir = NORTH
					E.dir = NORTH
					F.dir = NORTH
					G.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					walk(F,usr.dir)
					walk(G,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					del(F)
					del(G)
					sleep(110)
				if(usr.dir == SOUTH)
					var/obj/Shark/A = new /obj/Shark/
					var/obj/Shark/B = new /obj/Shark/
					var/obj/Shark/C = new /obj/Shark/
					var/obj/Shark/D = new /obj/Shark/
					var/obj/Shark/E = new /obj/Shark/
					var/obj/Shark/F = new /obj/Shark/
					var/obj/Shark/G = new /obj/Shark/
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x+2, usr.y-1, usr.z)
					E.loc = locate(usr.x-2, usr.y-1, usr.z)
					F.loc = locate(usr.x+3, usr.y-1, usr.z)
					G.loc = locate(usr.x-3, usr.y-1, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					D.nin=usr.nin
					E.nin=usr.nin
					F.nin=usr.nin
					G.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					F.Gowner=usr
					G.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					D.dir = NORTH
					E.dir = NORTH
					F.dir = NORTH
					G.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					walk(F,usr.dir)
					walk(G,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					del(F)
					del(G)
					sleep(110)
				if(usr.dir == WEST)
					var/obj/Shark/A = new /obj/Shark/
					var/obj/Shark/B = new /obj/Shark/
					var/obj/Shark/C = new /obj/Shark/
					var/obj/Shark/D = new /obj/Shark/
					var/obj/Shark/E = new /obj/Shark/
					var/obj/Shark/F = new /obj/Shark/
					var/obj/Shark/G = new /obj/Shark/
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					D.loc = locate(usr.x-1, usr.y+2, usr.z)
					E.loc = locate(usr.x-1, usr.y-2, usr.z)
					F.loc = locate(usr.x-1, usr.y+3, usr.z)
					G.loc = locate(usr.x-1, usr.y-3, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					D.nin=usr.nin
					E.nin=usr.nin
					F.nin=usr.nin
					G.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					F.Gowner=usr
					G.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					D.dir = NORTH
					E.dir = NORTH
					F.dir = NORTH
					G.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					walk(F,usr.dir)
					walk(G,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					del(F)
					del(G)
					sleep(110)
				if(usr.dir == EAST)
					var/obj/Shark/A = new /obj/Shark/
					var/obj/Shark/B = new /obj/Shark/
					var/obj/Shark/C = new /obj/Shark/
					var/obj/Shark/D = new /obj/Shark/
					var/obj/Shark/E = new /obj/Shark/
					var/obj/Shark/F = new /obj/Shark/
					var/obj/Shark/G = new /obj/Shark/
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x+1, usr.y-1, usr.z)
					D.loc = locate(usr.x+1, usr.y+2, usr.z)
					E.loc = locate(usr.x+1, usr.y-2, usr.z)
					F.loc = locate(usr.x+1, usr.y+3, usr.z)
					G.loc = locate(usr.x+1, usr.y-3, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					D.nin=usr.nin
					E.nin=usr.nin
					F.nin=usr.nin
					G.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					F.Gowner=usr
					G.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					D.dir = NORTH
					E.dir = NORTH
					F.dir = NORTH
					G.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					walk(F,usr.dir)
					walk(G,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					del(F)
					del(G)
					sleep(110)
					return
				sleep(18)
				usr.firing=0
				return
mob/Hoshigaki
	verb
		Shark() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Suiton Goshokuzame"
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
				usr.chakra -= 14500
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=blue> Says: Suiton Goshokuzame!!"
				usr.Chakragain()
				var/obj/Sharks/A = new /obj/Sharks/
				var/obj/Sharks/B = new /obj/Sharks/
				var/obj/Sharks/C = new /obj/Sharks/
				var/obj/Sharks/D = new /obj/Sharks/
				var/obj/Sharks/E = new /obj/Sharks/
				var/obj/Sharks/F = new /obj/Sharks/
				var/obj/Sharks/G = new /obj/Sharks/
				var/obj/Sharks/H = new /obj/Sharks/
				var/obj/Sharks/I = new /obj/Sharks/
				var/obj/Sharks/J = new /obj/Sharks/
				var/obj/Sharks/K = new /obj/Sharks/
				var/obj/Sharks/L = new /obj/Sharks/
				A.loc = locate(usr.x, usr.y+2, usr.z)
				B.loc = locate(usr.x+2, usr.y+2, usr.z)
				C.loc = locate(usr.x-2, usr.y+2, usr.z)
				D.loc = locate(usr.x-2, usr.y, usr.z)
				E.loc = locate(usr.x+2, usr.y, usr.z)
				F.loc = locate(usr.x, usr.y-2, usr.z)
				G.loc = locate(usr.x-2, usr.y-2, usr.z)
				H.loc = locate(usr.x+2, usr.y-2, usr.z)
				I.loc = locate(usr.x, usr.y-3, usr.z)
				J.loc = locate(usr.x, usr.y+3, usr.z)
				K.loc = locate(usr.x+3, usr.y, usr.z)
				L.loc = locate(usr.x-3, usr.y, usr.z)
				A.nin=usr.nin
				B.nin=usr.nin
				C.nin=usr.nin
				D.nin=usr.nin
				E.nin=usr.nin
				F.nin=usr.nin
				G.nin=usr.nin
				H.nin=usr.nin
				I.nin=usr.nin
				J.nin=usr.nin
				K.nin=usr.nin
				L.nin=usr.nin
				A.Gowner=usr
				B.Gowner=usr
				C.Gowner=usr
				D.Gowner=usr
				E.Gowner=usr
				F.Gowner=usr
				G.Gowner=usr
				H.Gowner=usr
				I.Gowner=usr
				J.Gowner=usr
				K.Gowner=usr
				L.Gowner=usr
				sleep(60)
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
				del(K)
				del(L)
				sleep(25)
				usr.firing=0
				return