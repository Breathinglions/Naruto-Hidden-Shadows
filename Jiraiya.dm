
mob/Jiraiya
	verb
		Kumite()
			set category = "TaiJutsu"
			set name = "Kawazu Kumite"
			for(var/mob/M in oview(1,usr))
				if (M.inspike)
					return
				if(usr.firing)
					return
				if (M.sphere)
					return
				if(M.PK==0)
					usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
					return
				if(usr.PK==0)
					usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [usr]"
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
					view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Kawazu Kumite!</FONT>"
					var/damage=usr.tai*1.5
					M.health -= damage
					M.Death(usr)
					usr.firing=1
					view()<<"[M] takes [damage] damage from Kawazu Kumite!"
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
					sleep(20)
					usr.firing=0
obj
	HTD
		icon = 'HTD.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
					return
				if(M.counter)
					del(src)
					return
				var/damage = round(src.nin)
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
mob/Jiraiya
	verb
		Toad_F() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Toad Flame Bomb"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 30)
				usr<<"You dont have enough chakra!"
				return
			if(usr.caught)
				usr<<"Your captured"
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
			if(usr.captured)
				usr<<"Your captured"
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
				if(usr.Katon4N >= 165)
					usr.chakra -= 30
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=red> Says: Toad Flame Bomb!"
					usr.Katon4N += 1
					var/obj/HTD/K = new /obj/HTD
					K.loc = usr.loc
					K.nin=usr.nin
					usr.Chakragain()
					K.dir = usr.dir
					K.name="[usr]"
					K.Gowner=usr
					walk(K,usr.dir)
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
								if(usr.ChakraC>=100)
									usr.ChakraC=100
									return
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
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
					sleep(10)
					usr.firing = 0
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 30
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						usr.Katon4N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=red> Says: Toad Flame Bomb!"
						var/obj/HTD/K = new /obj/HTD
						K.loc = usr.loc
						K.nin=usr.nin
						usr.Chakragain()
						K.dir = usr.dir
						K.name="[usr]"
						K.Gowner=usr
						walk(K,usr.dir)
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
									if(usr.ChakraC>=100)
										usr.ChakraC=100
										return
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
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
						sleep(10)
						usr.firing = 0
						usr.Move_Delay = usr.Savedspeed
						sleep(45)
						del(K)
					else
						usr<<"You failed to use Toad Flame Bomb."

mob/Jiraiya
	verb/DarkSwamp(mob/M in oview(4))
		set name = "Dark Swamp"
		set category = "NinJutsu"
		usr.Handseals()
		if(usr.firing)
			return
		if(usr.Frozen)
			usr<<"Your Frozen"
			return
		if(usr.caught)
			usr<<"Your captured"
			return
		if(!M:PK)
			usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
			return
		if(usr.captured)
			usr<<"Your captured"
			return
		if(usr.chakra <= 10)
			usr << "Not enough chakra!"
			return
		if(usr.inso)
			return
		if(usr.Kaiten||usr.counter)
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
		if(!usr.handseals)
			return
		if(src.ritual)
			usr<<"Now, let us savor the utmost suffering together!."
			src<<"Dude, that was weak!"
			usr.health -= src.Mnin
			Death(usr)
			return
		else
			if(M.captured == 1)
				usr<<"They are captured."
				return
			if(usr.chakra<=9999)
				return
			if(usr.chakra>=10000)
				usr.chakra -= 10000
				usr.firing =1
				view() << "<font color = red>[usr]:<FONT COLOR=#a52a2a> Dark Swamp!"
				sleep(20)
				usr.firing=0
				M.captured=1
				M.overlays += 'Swamp.dmi'
				usr.Chakragain()
				M.Frozen=1
				sleep(100)
				M.captured=0
				M.Frozen=0
				M.overlays -= 'Swamp.dmi'
				M.overlays -= 'Swamp.dmi'
				M.overlays -= 'Swamp.dmi'
				M.overlays -= 'Swamp.dmi'
				M.overlays -= 'Swamp.dmi'

mob/Jiraiya
	verb
		HTD(mob/M in get_step(src,src.dir)) // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Hell Toad Dance"
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
				usr << "Your attack bounces off of [M] because they are in gatsuuga.."
				return
			else
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Hell Toad Dance!!"
				var/damage=usr.tai*1.5
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from Hell Toad Dance!"
				sleep(14)
				usr.firing=0
mob/Jiraiya
	verb
		SM()
			set category = "SenJutsu"
			set name = "Sage Mode"
			if(!usr.PK||usr.caught||usr.resting||usr.meditating||usr.Kaiten)return
			if(!usr.Smode&&!usr.firing)
				view()<<"<font color=#FF8103>Time Begins to Slow, as Nature is being drawn in by [usr]!"
				usr.overlays += 'sageeye.dmi'
				usr.Smode =1
				usr.firing=1
				usr.nin = usr.nin*1.4
				usr.tai = usr.tai*1.4
				usr.gen = usr.gen*1.4
				usr.overlays+='SageModeEyes.dmi'
				usr.overlays+='SageModeEyes.dmi'
				usr.verbs += /mob/Jiraiya/verb/Kumite
				sleep(15)
				usr.firing=0
				usr.overlays-='SageModeEyes.dmi'
				usr.overlays-='SageModeEyes.dmi'
				fire
				if(usr.Smode)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'sageeye.dmi'
						usr.Smode = 0
						usr.nin = usr.Mnin
						usr.tai = usr.Mtai
						usr.gen = usr.Mnin
						return
					else
						sleep(4)
						goto fire
			else if(usr.Smode)
				usr.overlays -= 'sageeye.dmi'
				usr.Smode =0
				usr.nin = usr.Mnin
				usr.tai = usr.Mtai
				usr.gen = usr.Mgen
				usr.verbs -= /mob/Jiraiya/verb/Kumite
				usr<<"Time Begins to go normal speed...."

obj
	flameb
		icon = 'bigphoenixfire.dmi'//dont have a base icon so cant make weights icon!lol
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
					view(M) << "[M] was hit by Big Flame Bullet for [damage] damage!!"
					M.Death(O)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Jiraiya
	verb
		BFlame() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Big Flame Bullet"
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
				usr.chakra -= 39
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <font size=1><font face=verdana><b><font color=red> Big Flame Bullet!!"
				sleep(10)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/flameb/A = new /obj/flameb/
					var/obj/flameb/B = new /obj/flameb/
					var/obj/flameb/C = new /obj/flameb/
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
					sleep(400)
					del(A)
					del(B)
					del(C)
					sleep(110)
				if(usr.dir == SOUTH)
					var/obj/flameb/A = new /obj/flameb/
					var/obj/flameb/B = new /obj/flameb/
					var/obj/flameb/C = new /obj/flameb/
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
					sleep(400)
					del(A)
					del(B)
					del(C)
					sleep(110)
				if(usr.dir == WEST)
					var/obj/flameb/A = new /obj/flameb/
					var/obj/flameb/B = new /obj/flameb/
					var/obj/flameb/C = new /obj/flameb/
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
					sleep(400)
					del(A)
					del(B)
					del(C)
					sleep(110)
				if(usr.dir == EAST)
					var/obj/flameb/A = new /obj/flameb/
					var/obj/flameb/B = new /obj/flameb/
					var/obj/flameb/C = new /obj/flameb/
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
					sleep(400)
					del(A)
					del(B)
					del(C)
					sleep(110)
					return
				return
mob/Jiraiya
	verb
		TGP(mob/M in get_step(src,src.dir))
			set category = "NinJutsu"
			set name = "Toad Gourd Prison"
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
			if(usr.chakra <= 500000)
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
			else
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Toad Gourd Prison!!"
				var/damage=usr.nin
				usr.chakra -= 750000
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from Toad Gourd Prison and is trapped inside! Find a way out!!"
				if(M)
					if(usr.dir==NORTH)
						M.loc=locate(15,15,96)
					if(usr.dir==WEST)
						M.loc=locate(15,15,96)
					if(usr.dir==SOUTH)
						M.loc=locate(15,15,96)
					if(usr.dir==EAST)
						M.loc=locate(15,15,96)
				sleep(14)
				usr.firing=0
mob/Jiraiya
	verb
		HIAT()
			set category = "NinJutsu"
			set name = "Hide in a Toad Technique"
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
			if(usr.chakra <= 500000)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			else
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Hide in a Toad Technique!!"
				usr.chakra -= 350000
				usr.firing=1
				view()<<"You hide within a toad's stomache and escape from battle!"
				usr.loc=locate(15,15,96)
				sleep(14)
				usr.firing=0