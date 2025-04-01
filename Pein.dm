obj
	bunshins
		Paths
			verb/Paths()
				set name = "Paths of Pain"
				set desc = "Create a clone that can attack"
				set category = "NinJutsu"
				usr.Handseals()
				if(usr.chakra <= 15000)
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
					usr.chakra-=15000
					usr.firing=1
					view() << "<font color=white><b><font face=verdana>[usr] says:Witness Pain and Suffering!!"
					usr.sunaU += 1
					usr.Chakragain()
					usr.Sbunshin += 1
					usr.random=rand(1,5)
					if(random==1)
						var/mob/npc/KBunshin/S = new /mob/npc/KBunshin
						if(S)
							S.original = usr
							S.name = "Asura"
							S.icon = 'Asura.dmi'
							S.loc = locate(usr.x, usr.y - 1, usr.z)
							S.tai = usr:tai*1.2
							S.health = 200000
					if(random==2)
						var/mob/npc/KBunshin/T = new /mob/npc/KBunshin
						if(T)
							T.original=usr
							T.name="Preta"
							T.icon='Preta.dmi'
							T.loc=locate(usr.x,usr.y+1,usr.z)
							T.tai = usr:tai*1.2
							T.health=200000
					if(random==3)
						var/mob/npc/KBunshin/U=new /mob/npc/KBunshin
						if(U)
							U.original=usr
							U.name="Naraka"
							U.icon='Naraka.dmi'
							U.loc=locate(usr.x,usr.x-1,usr.z)
							U.tai=usr:tai*1.2
							U.health=200000
					if(random==4)
						var/mob/npc/KBunshin/V= new /mob/npc/KBunshin
						if(V)
							V.original=usr
							V.name="Animal"
							V.icon='Animal.dmi'
							V.loc=locate(usr.x-1,usr.y,usr.z)
							V.tai=usr:tai*1.2
							V.health=200000
					if(random==5)
						var/mob/npc/KBunshin/W = new /mob/npc/KBunshin
						if(W)
							W.original=usr
							W.name="Human"
							W.icon='Human.dmi'
							W.loc=locate(usr.x+1,usr.y,usr.z)
							W.tai=usr:tai*1.2
							W.health=200000
						sleep(20)
						usr.firing=0
						return
mob/Pein
	verb
		Rinnegan()
			set category = "Doujutsu"
			set name = "Rinnegan"
			if(!usr.rinne)
				usr.overlays+='rinnenganmove.dmi'
				usr.icon_state="1"
				usr.overlays +=	'sharingan.dmi'
				view()<<"[usr]: As god of this world, I will teach the world the Meaning Of Power!"
				view()<<"[usr]'s pupils spiral as they form Rinnegan!"
				usr.rinne=1
				usr.see_invisible = 1
				usr.verbs += /mob/Uchiha/verb/Sharinganilluminate
				usr.nin=usr.nin*1.35
				usr.gen=usr.gen*1.35
				usr.tai=usr.tai*1.35
				sleep(20)
				usr.overlays-='rinnenganmove.dmi'
				usr.overlays-='rinnenganmove.dmi'
				usr.overlays-='rinnenganmove.dmi'
				usr.overlays-='rinnenganmove.dmi'
			else
				view()<<"[usr]'s pupils become normal again."
				usr.verbs -= /mob/Uchiha/verb/Sharinganilluminate
				usr.rinne=0
				usr.nin=usr.Mnin
				usr.gen=usr.Mgen
				usr.tai=usr.Mtai
				usr.overlays -=	'sharingan.dmi'
				usr.overlays -= 'rinnenganmove.dmi'

mob/Pein/verb
	PathofPreta()
		set category = "NinJutsu"
		set name = "Path of Preta"
		if(usr.firing)
			return
		if(usr.resting)
			usr<<"Not while resting"
			return
		if(usr.meditating)
			usr<<"Not while meditating"
			return
		if(usr.counter==0||usr.Nagato)
			usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
			usr.chakra -= 30000
			view()<<"<font color=silver><b><font face=verdana>[usr]: Absorption Seal!!"
			usr.overlays +='sixthgate.dmi'
			usr.counter=1
			sleep(30)
			usr.overlays -= 'sixthgate.dmi'
			usr.counter=0
			usr.firing=0
			sleep(30)
			return
		else
			usr<<"Absorption Seal is already active"
mob/Pein
	verb
		PathofHuman(mob/M in get_step(src,src.dir))
			set category = "NinJutsu"
			set name = "Path of Human"
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			if (M.ingat == 1)
				usr << "Your attack bounces off of [M] because they are in gatsuuga..."
				return
			else
				view()<<"<font size=1><font face=Tahoma><b><font color=silver>[usr]<font color=green> Says: Soul Removal!!!</FONT>"
				var/damage=usr.tai*1.6
				M.health -= damage
				M.chakra -= damage
				usr.chakra -= 20000
				M.Death(usr)
				usr.firing=1
				sleep(20)
				view()<<"[M] takes [damage] damage from Soul Removal!"
				if(M)
					if(usr.dir==NORTH)
						M.dir=NORTH
					if(usr.dir==WEST)
						M.dir=WEST
					if(usr.dir==SOUTH)
						M.dir=SOUTH
					if(usr.dir==EAST)
						M.dir=EAST
				sleep(14)
				usr.firing=0
obj
	animalp
		icon = 'Animals.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state = "Wolf"
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
				var/damage = round(src.nin*1.4)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by the fangs and claws of your animals for [damage] damage!!"
					M.Death(O)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Pein
	verb
		PathofAnimal() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Path of Animal"
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else // If the firing var isn't 1...
				usr.DoryuuN += 1
				usr.chakra -= 3900
				usr.firing=1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says:<font size=1><font face=verdana><b><font color=green> Amplification Summoning Technique!!"
				sleep(10)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/animalp/A = new /obj/animalp/
					var/obj/animalp/B = new /obj/animalp/
					var/obj/animalp/C = new /obj/animalp/
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
					sleep(40)
					del(A)
					del(B)
					del(C)
					sleep(15)
				if(usr.dir == SOUTH)
					var/obj/animalp/A = new /obj/animalp/
					var/obj/animalp/B = new /obj/animalp/
					var/obj/animalp/C = new /obj/animalp/
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
					sleep(40)
					del(A)
					del(B)
					del(C)
					sleep(15)
				if(usr.dir == WEST)
					var/obj/animalp/A = new /obj/animalp/
					var/obj/animalp/B = new /obj/animalp/
					var/obj/animalp/C = new /obj/animalp/
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
					sleep(40)
					del(A)
					del(B)
					del(C)
					sleep(15)
				if(usr.dir == EAST)
					var/obj/animalp/A = new /obj/animalp/
					var/obj/animalp/B = new /obj/animalp/
					var/obj/animalp/C = new /obj/animalp/
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
					sleep(40)
					del(A)
					del(B)
					del(C)
					sleep(15)
				sleep(10)
				usr.firing=0
				return
mob/Pein/verb
	PathofNaraka(mob/M in view(1))
		set category = "NinJutsu"
		set name = "Path of Naraka"
		usr.Handseals()
		if(usr.firing)
			usr<<"This cannot be done"
			return
		if(M.health >= M.Mhealth)
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
		if(usr.Frozen)
			usr<<"Your Frozen"
			return
		if(usr.caught)
			usr<<"Your captured"
			return
		if(usr.captured)
			usr<<"Your captured"
			return
		else
			usr.firing=1
			src.overlays+=/obj/Naraka
			M<<"[usr] begins to use his chakra to heal you."
			usr<<"You begin to heal [M]"
			usr.chakra -= 20000
			usr.firing=0
			sleep(250)
			src.overlays-=/obj/Naraka
			if(M)
				M.health += M.Mhealth/2
				if(M.health > M.Mhealth)
					M.health = M.Mhealth
mob/Pein
	verb
		PathofAsura()
			set category = "NinJutsu"
			set name = "Path of Asura"
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
				view()<<"<font color=blue><b><font face=verdana>[usr]: Chakra Explosion!!"
				usr.chakra -= 5000
				var/obj/icefist/B = new /obj/icefist
				B.Gowner=usr
				B.nin = usr.nin
				B.loc = usr.loc
				B.Move_Delay=0
				usr.Chakragain()
				walk(B,usr.dir)
				sleep(10)
				usr.firing=0
				sleep(15)
				del(B)

obj
	Mushi
		icon='invis.dmi'
		layer = MOB_LAYER+2
mob/Pein/verb
	ShinraTensei()
		set category = "NinJutsu"
		set name = "Path of Deva"
		if(usr.firing)
			return
		if(usr.caught)
			usr<<"Your captured"
			return
		if(usr.Frozen)
			usr<<"Your Frozen"
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
		if(src.ritual)
			usr<<"Now, let us savor the utmost suffering together!."
			src<<"Dude, that was weak!"
			usr.health -= src.Mnin
			Death(usr)
			return
		else // If the firing var isn't 1...
			usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
			view()<<"[usr]: Shinra Tensei!"
			usr.chakra -= 45000
			var/obj/Mushi/K = new /obj/Mushi/
			K.owner=usr
			K.nin=usr.nin
			K.loc = locate(usr.x,usr.y,usr.z)
			K.jukai=1
			flick("rise",K)
			for(var/mob/M in oview(3,usr))
				var/damage=round(usr.nin*1.6)
				view()<<"[M] has taken [damage] damage from [usr]'s Shinra Tensei!"
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
				M.health-=damage
				if(M.health<=0)
					M.Death(usr)
			sleep(200)
			del(K)
			usr.firing=0


mob/Pein
	verb
		Chibaku(mob/M in oview(5))
			set category = "NinJutsu"
			set name = "Path of Deva 2"
			if (M.inspike)
				return
			if(usr.firing)
				return
			if (M.sphere)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			if(usr.chakra <= 40)
				usr<<"You dont have enough chakra!"
				return
			else
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Chibaku Tensei"
				var/damage=usr.nin*1.9
				usr.chakra -= 50000
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				M.loc=locate(usr.x,usr.y-1,usr.z)
				view()<<"[M] takes [damage] damage from Chibaku Tensei!"
				sleep(14)
				usr.firing=0





