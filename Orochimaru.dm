mob/Orochimaru
	verb
		Bite(mob/M in oview(usr))
			set category = "GenJutsu"
			set name = "Bite"
			usr.Handseals()
			if(usr.firing||usr.Kaiten||usr.counter) // If the mob's firing var is one...
				return
			if(!usr.handseals)
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else
				usr.loc = locate(M.x,M.y+1,M.z)
				usr.dir = SOUTH
				if(M.Kyuubi)
					M.health -= 100000
					usr<<"You can't give [M] CS! He has a demon inside him! All you did was damage him! You could always seal his kyuubi's power...."
					if(M.health <=1)
						M.Death()
					return
				if(!M.Kyuubi&&!M.CS)
					M.random=rand(1,100)
					if(M.random==100)
						M.bit=1
						M.CS=1
						M<<"You have been bitten my [usr]! You have been given the gift of curse seal. However, he is also able to steal your body! RUN! FAST!!"
						usr<<"You have managed to bite [M]! He now has your cursed seal power, and his body is ripe for the taking."
						M.mob = "[usr]"
						M.health -= 10000
						if(M.health <=5000)
							M.Death()
						return


mob/Orochimaru
	verb
		BodyChange(mob/M in oview(usr))
			set category = "GenJutsu"
			set name = "Body Change"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.BChange >= 5)
				usr<<"You Can Only Use This Move 5 Times"
				return
			if(M.client&&usr.BChange < 5)
				usr.BChange += 1
				usr.loc = locate(M.x,M.y-1,M.z)
				usr.dir = NORTH
				M.Frozen = 1
				M.Froze = 1
				view<<"<B><font color=white>[usr]<font color=green> says:</font> It's about time I took your body, [M]. It's ripe for the picking and I WILL have you!!"
				view<<"<B><font color=red>[usr] says:<font color=blue> BODY CHANGE!!!!"
				(view) << sound(null)
				view<<'Evil.mid'
				usr.overlays -= usr.overlays
				sleep(10)
				usr.icon = M.icon
				sleep(10)
				usr.overlays += M.overlays
				sleep(15)
				usr.health += 30000
				usr.chakra += 10000
				usr.tai += 12000
				usr.nin += 12000
				usr.gen += 12000
				usr.loc = M.loc
				M.Death()
				M.Frozen = 0
				M.Froze = 0
				return

obj
	Cobra
		icon = 'Cobra.dmi'//dont have a base icon so cant make weights icon!lol
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
					view(M) << "[M] was hit by [usr]'s Snakes for [damage] damage!!"
					M.Death(O)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Orochimaru
	verb
		Snake() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Mandara No Jin"
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
				usr.chakra -= 4500
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <font size=1><font face=verdana><b><font color=red> Formation of a Thousand Snakes!!"
				sleep(10)
				usr.firing=1
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/Cobra/A = new /obj/Cobra/
					var/obj/Cobra/B = new /obj/Cobra/
					var/obj/Cobra/C = new /obj/Cobra/
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
					var/obj/Cobra/A = new /obj/Cobra/
					var/obj/Cobra/B = new /obj/Cobra/
					var/obj/Cobra/C = new /obj/Cobra/
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
					var/obj/Cobra/A = new /obj/Cobra/
					var/obj/Cobra/B = new /obj/Cobra/
					var/obj/Cobra/C = new /obj/Cobra/
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
					var/obj/Cobra/A = new /obj/Cobra/
					var/obj/Cobra/B = new /obj/Cobra/
					var/obj/Cobra/C = new /obj/Cobra/
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
				sleep(8)
				usr.firing=0
				return

mob/Orochimaru
	verb
		KusanagiGO() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Kusanagi Dageki"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
				return
			if(usr.PK==0)
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
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				if(usr.Fuuton2N >= 25)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.Fuuton2N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Kusanagi Dageki!!"
					var/obj/kusanagi/K = new /obj/kusanagi
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					usr.Chakragain()
					K.name="[usr]"
					K.Gowner=usr
					walk(K,usr.dir)
					if(target == null)
						del(K)
					sleep(10)
					usr.firing = 0
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 15
						usr.Fuuton2N += 1
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Kusanagi Dageki!!"
						var/obj/kusanagi/K = new /obj/kusanagi
						K.loc = usr.loc
						K.nin=usr.nin
						K.dir = usr.dir
						K.name="[usr]"
						K.Gowner=usr
						walk(K,usr.dir)
						if(target == null)
							del(K)
						sleep(10)
						usr.firing = 0
						sleep(45)
						del(K)
mob/Orochimaru
	verb
		Summon_IWR(mob/M in world)
			set popup_menu = 0
			set category = "NinJutsu"
			set name = "Impure World Reincarnation"
			usr.Handseals()
			if(usr.firing)
				return
			if(usr.hyoushou)
				return
			if(usr.chakra <= 750000)
				usr<<"Not enough Chakra!"
				return
			if(!usr.handseals)
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
			if(usr.jailtime)
				return
			if(!usr.PK)
				return
			if(!M.PK)
				return
			else
				usr.chakra -= 750000
				usr.firing=1
				usr.Frozen=1
				Chakragain()
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=red> Says:Summoning: Impure World Reincarnation!!"
				usr << "You summon [M] with Impure World Reincarnation"
				M.loc = locate(usr.x,usr.y-1,usr.z)
				src.dir = SOUTH // face them
				src.health-= src.health/2
				view() << "You have been summoned with [usr]'s Impure World Reincarnation Jutsu!!"
				sleep(200)
				usr.firing=0
				usr.Frozen=0
mob/Orochimaru
	verb
		Element(mob/M in get_step(src,src.dir))
			set category = "NinJutsu"
			set name = "Gogyo Fuin"
			usr.Handseals()
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
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=red> Says: Five Elements Seal!!!</FONT>"
				var/damage=usr.nin*1.5
				usr.chakra -= 200000
				M.health -= damage
				M.chakra = 0
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from Five Elements Seal!"
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
mob/Orochimaru
	verb
		Twin_S(mob/M in get_step(src,src.dir))
			set category = "NinJutsu"
			set name = "Twin Snakes Mutual Death Technique"
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
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=red> Says: Twin Snakes Mutual Death Technique!!"
				var/damage = usr.health
				usr.firing=1
				usr.Frozen=1
				M.Frozen=1
				usr.health -= damage
				M.health -= damage
				M.Death(usr)
				usr.Death(M)
				view()<<"[M] takes [damage] damage from Twin Snakes Mutual Death Technique!"
				usr.firing=0
				usr.Frozen=0
				M.Frozen=0
obj
	Rashomon
		icon = 'doryuumissle.dmi'//dont have a base icon so cant make weights icon!lol
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
					view(M) << "[M] was hit by Suiton Doryuudan for [damage] damage!!"
					M.Death(O)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Orochimaru
	verb
		Summoning_R() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Summoning Rashomon"
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
				usr.firing=1
				usr.chakra -= 39
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=red> Says: Summoning Rashomon!!"
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/Rashomon/A = new /obj/Rashomon/
					var/obj/Rashomon/B = new /obj/Rashomon/
					var/obj/Rashomon/C = new /obj/Rashomon/
					var/obj/Rashomon/D = new /obj/Rashomon/
					var/obj/Rashomon/E = new /obj/Rashomon/
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
					sleep(45)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					sleep(100)
				if(usr.dir == SOUTH)
					var/obj/Rashomon/A = new /obj/Rashomon/
					var/obj/Rashomon/B = new /obj/Rashomon/
					var/obj/Rashomon/C = new /obj/Rashomon/
					var/obj/Rashomon/D = new /obj/Rashomon/
					var/obj/Rashomon/E = new /obj/Rashomon/
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
					sleep(45)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					sleep(100)
				if(usr.dir == WEST)
					var/obj/Rashomon/A = new /obj/Rashomon/
					var/obj/Rashomon/B = new /obj/Rashomon/
					var/obj/Rashomon/C = new /obj/Rashomon/
					var/obj/Rashomon/D = new /obj/Rashomon/
					var/obj/Rashomon/E = new /obj/Rashomon/
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
					A.dir = EAST
					B.dir = EAST
					C.dir = EAST
					D.dir = EAST
					E.dir = EAST
					sleep(45)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					sleep(100)
				if(usr.dir == EAST)
					var/obj/Rashomon/A = new /obj/Rashomon/
					var/obj/Rashomon/B = new /obj/Rashomon/
					var/obj/Rashomon/C = new /obj/Rashomon/
					var/obj/Rashomon/D = new /obj/Rashomon/
					var/obj/Rashomon/E = new /obj/Rashomon/
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
					sleep(45)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					sleep(100)
					return
				sleep(25)
				usr.firing=0
				return
mob/Orochimaru
	verb
		Temp_Paralysis(mob/M in oview(1)) // Verb used for firing the beam
			set category = "GenJutsu"
			set name = "Temporary Paralysis Technique"
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
				M<<"Your Frozen by [usr]'s Temporary Paralysis Technique."
				usr<<"You Froze [M] with your Temporary Paralysis Technique"
				var/Sleeptime = round(usr.gen/20)
				if(Sleeptime <= 1)
					M.Frozen = 1
					M.Froze = 1
					sleep(50)
					if(M)
						M.Frozen=0
						M<<"You break out of [usr]'s Temporary Paralysis Technique."
						usr<<"[M] is free from your Temporary Paralysis Technique!"
						M.Froze = 0
					sleep(8)
				else
					M.Frozen=1
					M.Froze = 1
					sleep(50)
					if(M)
						M.Frozen=0
						M<<"You break out of [usr]'s Temporary Paralysis Technique."
						usr<<"[M] is free from your Temporary Paralysis Technique!"
						M.Froze = 0
					sleep(8)
				sleep(50)
				if(M)
					M.Froze=0