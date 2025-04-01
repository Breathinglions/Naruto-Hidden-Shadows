mob/var
	watching = 0
	pname = ""
	Enma = 0
obj/var
	Enma = 0

mob/Hiruzen
	verb
		Search()
			set name = "Kanchi"
			set category = "NinJutsu"
			for(var/mob/M in world)
				if(M.client&&M.z==usr.z)
					usr<<"{\icon[M][M.name],Rank - [M.rank], health - [M.health],Chakra - [M.chakra]"
					usr<<"Tai - [M.tai],Nin - [M.nin],Gen - [M.gen]"
					usr<<"Location; [M.x],[M.y]"
				else
					return

mob/Hiruzen
	verb
		Watch()
			set name = "Toumegane no Jutsu"
			set category = "NinJutsu"
			if(usr.watching)
				var/mob/M = input("Who Would You Like To Watch","Watch")as null|anything in players
				if(!M) return
				else
					usr.client:perspective = EYE_PERSPECTIVE
					usr.client:eye = M
			else
				usr.client:perspective = MOB_PERSPECTIVE

obj
	KShu
		icon = 'kageshuriken.dmi'
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					del(src)
					return
				if(!M.PK)
					return
				if(M.counter)
					del(src)
					return
				var/damage = round(src.nin)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Shurikens for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


mob/Hiruzen
	verb
		Shuriken()
			set name = "Shuriken Kage Bunshin no Jutsu"
			set category = "NinJutsu"
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra<=100)
				usr<<"Not enough chakra."
				return
			if(usr.Froze||usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.captured||usr.caught)
				usr<<"Your captured"
				return
			if(usr.resting||usr.meditating)
				usr<<"Not while resting/meditating"
				return
			for(var/obj/Shuriken/S in view(10,usr))
				view(usr)<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Shuriken Kage Bunshin No Jutsu!"
				del(S)
				var/obj/KShu/A = new()
				var/obj/KShu/B = new()
				var/obj/KShu/C = new()
				var/obj/KShu/D = new()
				var/obj/KShu/E = new()
				A.nin = usr.nin*1.7
				B.nin = usr.nin*1.7
				C.nin = usr.nin*1.7
				D.nin = usr.nin*1.7
				E.nin = usr.nin*1.7
				A.Gowner = usr
				B.Gowner = usr
				C.Gowner = usr
				D.Gowner = usr
				E.Gowner = usr
				usr.firing=1
				usr.chakra-=100
				usr.Chakragain()
				usr.firing=0
				for(var/obj/Shuriken/O in usr.contents)
					O.ammount-=1
					if(O.ammount<=0)
						del(O)

obj
	Staff
		name = "Adamantine Staff"
		icon = 'Enma Staff.dmi'
		worn = 0
		verb
			Transformation()
				set name = "Henge Kongounyoi"
				set category = "NinJutsu"
				if(src.Gowner == src)
					if(src.worn&&!src.Enma)
						src.Enma = 1
						usr.Handseals()
						usr.Summoneffect()
						usr.overlays -= "Enma Staff.dmi"
						var/mob/Enma/P = new/mob/Enma
						P.health = usr.health
						P.name ="[usr]'s Monkey"
						P.tai = usr.tai
						P.original = "[usr]"
						src.worn = 0
						src.suffix = ""
					else
						usr<<"Wear the Staff"
						usr<<"You can only summon one!"
						return
			Untranform()
				set name = "Ura Henge Kongounyoi"
				set category = "NinJutsu"
				if(src.Gowner == src)
					if(src.Enma)
						usr.Handseals()
						src.Enma = 0
						for(var/mob/Enma/P in world)
							if(P.original == usr)
								del(P)
					else
						usr<<"You must summon [usr.pname] before!"
						return
			Wear()
				if(!src.worn)
					src.worn=1
					usr.overlays += 'Enma Staff.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
				else
					if(src.worn)
						src:worn = 0
						usr.overlays -= 'Enma Staff.dmi'
						usr << "You remove the [src.name]."
						src.suffix = ""
			Drop()

				if(src:worn == 0&&!src.Enma)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
				else
					usr<<"Not while being used!"
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

mob
	Enma
		icon='Enma.dmi'
		density=1
		NPC = 1
		proc/Die()
			flick("smoke2",src)
			del(src)
		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == original)
					return
				if(src.firing)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"NONE PK ZONE!!!"
					return
				else
					var/mob/P = M
					var/mob/O = src.original
					var/Damage = src.tai*1.5
					P.health -= Damage // Takes the players health
					view() << "[O.pname] attacks [M] for [Damage]!"
					P.Death(src)
					src.firing = 1
					sleep(10)
					src.firing = 0

mob/Hiruzen
	verb
		SummonTech()
			set name = "Kuchiyose no Jutsu"
			if(usr.chakra <= 30000)
				usr<<"Not enough chakra!!"
				return
			if(usr.Enma >= 1)
				for(var/obj/Staff/S in world)
					if(S.Gowner == usr)
						usr.chakra -= 30000
						usr.Handseals()
						usr.Summoneffect()
						S.loc = locate(usr.x,usr.y - 1,usr.z)
			if(usr.chakra>=30000)
				usr.chakra -= 30000
				usr.Handseals()
				usr.Summoneffect()
				var/obj/Staff/P = new/obj/Staff
				P.Gowner = usr
				P.loc = locate(usr.x,usr.y - 1,usr.z)
