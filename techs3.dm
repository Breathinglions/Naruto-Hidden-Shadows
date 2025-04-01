mob/lightning
	verb
		Kaminari()
			set category = "TaiJutsu"
			set name = "Kaminari"
			for(var/mob/M in oview(1,usr))
				if(M.drunk&&M.Lee)
					view()<<"[M] dodges [usr]'s attack"
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
				if(M.PK==0)
					usr<<"NON PK ZONE!"
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
				if (M.ingat)
					usr << "Your attack bounces off of [M] because they are in gatsuuga.."
					return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					Death(usr)
					return
				else
					var/damage = round(usr.tai*1.35)
					usr.firing=1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=yellow> Says: Kaminari!"
					view()<<"[M] has been hit by Kaminari and stunned for [damage] Damage"
					M.health -= damage
					if(M.health<=0)
						M.Death(usr)
					sleep(17)
					usr.firing=0
					if(M)
						M.Move_Delay=5
						sleep(60)
						M.Move_Delay=1
mob/wind
	verb
		Sickle_S() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Kaze U Oka"
			if(usr.firing)
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.chakra<=5000)
				usr<<"Not enough chakra"
				return
			if(usr.jailtime)
				return
			else
				usr.firing=1
				usr.YT=1
				view()<<"<font color=silver><b><font face=verdana>[usr]: Kaze U Oka!!"
				usr.overlays += 'WaterStrom.dmi'
				sleep(20)
				usr.YT=0
				usr.overlays -= 'WaterStrom.dmi'
				usr.firing=0
				usr<<"You must wait to use this jutsu again"
				sleep(15)
				return
mob/earth
	verb
		Shake()
			set category = "NinJutsu"
			set name = "Doton Jishin No Jutsu"
			if(usr.firing) // If the mob's firing var is one...
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
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.chakra <= 9999)
				usr<<"You dont have enough chakra!"
				return
			else
				usr.firing=1
				usr.chakra-=35000
				view()<<"<font color = green><B> Doton Jishin No Jutsu!!"
				var/obj/Mushi/K = new /obj/Mushi/
				K.owner=usr
				K.tai=usr.tai
				K.loc = locate(usr.x,usr.y,usr.z)
				K.jukai=1
				flick("rise",K)
				for(var/mob/M in oview(5,usr))
					var/damage=round(usr.tai*1.6)
					view()<<"[M] has taken [damage] damage from [usr]'s Jishin No Jutsu!"
					M.density=1
					M.Move_Delay=6
					M.health-=damage
					if(M.health<=0)
						M.Death(usr)
					sleep(100)
					M.Move_Delay=1
				sleep(120)
				del(K)
				usr.firing=0
mob/water
	verb
		Shark() // Verb used for firing the beam
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
					var/obj/Shark/A = new /obj/Shark/
					var/obj/Shark/B = new /obj/Shark/
					var/obj/Shark/C = new /obj/Shark/
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
					var/obj/Shark/A = new /obj/Shark/
					var/obj/Shark/B = new /obj/Shark/
					var/obj/Shark/C = new /obj/Shark/
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
					var/obj/Shark/A = new /obj/Shark/
					var/obj/Shark/B = new /obj/Shark/
					var/obj/Shark/C = new /obj/Shark/
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
				sleep(18)
				usr.firing=0
				return
obj
	Flame
		icon = 'FRing.dmi'
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
				var/damage = round(src.nin*1.3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit for [damage] damage!!"
					sleep(2)
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/fire
	verb
		FlameRing()
			set category = "NinJutsu"
			set name = "Katon Honoo No Ringu No Jutsu"
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
			if(src.chakra<=11000)
				usr<<"Not enough chakra!!"
				return
			else // If the firing var isn't 1...
				usr.chakra -= 10000
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=red> Says: Katon Honno No Ringu No Jutsu!</font>"
				var/obj/Flame/S1 = new /obj/Flame/
				S1.loc = usr.loc
				S1.nin = usr.nin
				S1.dir = usr.dir
				S1.name = "[usr]"
				S1.Gowner = usr
				walk(S1,usr.dir)
				sleep(4)
				walk(S1,usr.dir)
				sleep(4)
				walk(S1,usr.dir)
				sleep(4)
				walk(S1,usr.dir)
				sleep(4)
				walk(S1,usr.dir)
				sleep(4)
				walk(S1,usr.dir)
				sleep(4)
				walk(S1,usr.dir)
				sleep(4)
				walk(S1,usr.dir)
				sleep(4)
				usr.firing = 0
				sleep(80)
				del(S1)

mob/Kenjutsu
	verb
		Nuibari(mob/M in get_step(src,src.dir))
			set category = "TaiJutsu"
			set name = "Nuibari"
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
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=blue> Says: Swordsmen Style!</FONT>"
				var/damage=usr.tai*1.2
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from Nuibari!"
				if(M)
					if(usr.dir==NORTH)
						M.dir=NORTH
					if(usr.dir==WEST)
						M.dir=WEST
					if(usr.dir==SOUTH)
						M.dir=SOUTH
					if(usr.dir==EAST)
						M.dir=EAST
				sleep(8)
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from Nuibari!"
				if(M)
					if(usr.dir==NORTH)
						M.dir=NORTH
					if(usr.dir==WEST)
						M.dir=WEST
					if(usr.dir==SOUTH)
						M.dir=SOUTH
					if(usr.dir==EAST)
						M.dir=EAST
				sleep(8)
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from Nuibari!"
				if(M)
					if(usr.dir==NORTH)
						M.dir=NORTH
					if(usr.dir==WEST)
						M.dir=WEST
					if(usr.dir==SOUTH)
						M.dir=SOUTH
					if(usr.dir==EAST)
						M.dir=EAST
				sleep(8)
				usr.firing=0
mob/Kenjutsu
	verb
		Shibuki()
			set category = "TaiJutsu"
			set name = "Shibuki"
			for(var/mob/M in oview(2,usr))
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
				if (M.ingat == 1)
					usr << "Your attack bounces off of [M] because they are in gatsuuga..."
					return
				else
					view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=blue> Says: Swordsmen Style!</FONT>"
					var/damage=usr.tai*1.7
					var/obj/GoukakyuuNorth/K = new /obj/GoukakyuuNorth
					var/obj/GoukakyuuCenter/L = new /obj/GoukakyuuCenter
					var/obj/GoukakyuuSouth/M1 = new /obj/GoukakyuuSouth
					var/obj/GoukakyuuEast/N = new /obj/GoukakyuuEast
					var/obj/GoukakyuuWest/E = new /obj/GoukakyuuWest
					var/obj/GoukakyuuNorthEast/TR = new /obj/GoukakyuuNorthEast
					var/obj/GoukakyuuSouthEast/BR = new /obj/GoukakyuuSouthEast
					var/obj/GoukakyuuNorthWest/TL = new /obj/GoukakyuuNorthWest
					var/obj/GoukakyuuSouthWest/BL = new /obj/GoukakyuuSouthWest
					view(src)<<"<font color=red><B>Explosion!!"
					if(K){K.loc = src.loc;K.y+=1}
					if(L)L.loc = src.loc
					if(M1){M1.loc = src.loc;M1.y-=1}
					if(E){E.loc = src.loc;E.x-=1}
					if(N){N.loc = src.loc;N.x+=1}
					if(TR){TR.loc = src.loc;TR.y+=1;TR.x+=1}
					if(TL){TL.loc = src.loc;TL.y+=1;TL.x-=1}
					if(BR){BR.loc = src.loc;BR.y-=1;BR.x+=1}
					if(BL){BL.loc = src.loc;BL.y-=1;BL.x-=1}
					M.health -= damage
					M.Death(usr)
					usr.firing=1
					view()<<"[M] takes [damage] damage from Shibuki!"
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

mob/Kenjutsu
	verb
		Samehada(mob/M in get_step(src,src.dir))
			set category = "TaiJutsu"
			set name = "Samehada"
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
			if(usr.chakra>=1500000)
				usr<<"You already have the maximum amount of chakra!"
				return
			if (M.ingat == 1)
				usr << "Your attack bounces off of [M] because they are in gatsuuga..."
				return
			else
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=blue> Says: Swordsmen Style!</FONT>"
				var/damage=usr.tai*1.5
				usr.chakra+=damage
				M.chakra -= damage
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from Samehada!"
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
mob/Kenjutsu
	verb
		Kiba()
			set category = "TaiJutsu"
			set name = "Kiba"
			if(usr.firing)
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
			else
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=blue> Says: Swordsmen Style!</FONT>"
				usr.firing=1
				usr.inkiba=1
				usr.overlays+='Liger.dmi'
				sleep(30)
				usr.firing=0
				usr.inkiba=0
				usr.overlays-='Liger.dmi'
mob/Kenjutsu
	verb
		Hirameikarei(mob/M in get_step(src,src.dir))
			set category = "TaiJutsu"
			set name = "Hirameikarei"
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
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=blue> Says: Swordsmen Style!</FONT>"
				var/damage=usr.tai*1.5
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from Hirameikarei!"
				if(M)
					if(usr.dir==NORTH)
						usr.overlays += 'firstgate.dmi'
						step(M,NORTH)
						sleep(1)
						step(M,NORTH)
						sleep(1)
						step(M,NORTH)
						sleep(1)
						step(M,NORTH)
						sleep(1)
						step(M,NORTH)
						sleep(1)
						step(M,NORTH)
						sleep(1)
						step(M,NORTH)
						sleep(1)
						step(M,NORTH)
						sleep(1)
						step(M,NORTH)
						sleep(1)
						step(M,NORTH)
						sleep(1)
						usr.overlays -= 'firstgate.dmi'
					if(usr.dir==SOUTH)
						usr.overlays += 'firstgate.dmi'
						step(M,SOUTH)
						sleep(1)
						step(M,SOUTH)
						sleep(1)
						step(M,SOUTH)
						sleep(1)
						step(M,SOUTH)
						sleep(1)
						step(M,SOUTH)
						sleep(1)
						step(M,SOUTH)
						sleep(1)
						step(M,SOUTH)
						sleep(1)
						step(M,SOUTH)
						sleep(1)
						step(M,SOUTH)
						sleep(1)
						step(M,SOUTH)
						sleep(1)
						usr.overlays -= 'firstgate.dmi'
					if(usr.dir==EAST)
						usr.overlays += 'firstgate.dmi'
						step(M,EAST)
						sleep(1)
						step(M,EAST)
						sleep(1)
						step(M,EAST)
						sleep(1)
						step(M,EAST)
						sleep(1)
						step(M,EAST)
						sleep(1)
						step(M,EAST)
						sleep(1)
						step(M,EAST)
						sleep(1)
						step(M,EAST)
						sleep(1)
						step(M,EAST)
						sleep(1)
						step(M,EAST)
						sleep(1)
						usr.overlays -= 'firstgate.dmi'
					if(usr.dir==WEST)
						usr.overlays += 'firstgate.dmi'
						step(M,WEST)
						sleep(1)
						step(M,WEST)
						sleep(1)
						step(M,WEST)
						sleep(1)
						step(M,WEST)
						sleep(1)
						step(M,WEST)
						sleep(1)
						step(M,WEST)
						sleep(1)
						step(M,WEST)
						sleep(1)
						step(M,WEST)
						sleep(1)
						step(M,WEST)
						sleep(1)
						step(M,WEST)
						sleep(1)
						usr.overlays -= 'firstgate.dmi'
				sleep(14)
				usr.firing=0
mob/Kenjutsu
	verb
		Kabutowari(mob/M in get_step(src,src.dir))
			set category = "TaiJutsu"
			set name = "Kabutowari"
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
			else
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=blue> Says: Swordsmen Style!</FONT>"
				var/damage=usr.tai*2.5
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from Kabutowari!"
				if(M)
					if(usr.dir==NORTH)
						M.dir=NORTH
					if(usr.dir==WEST)
						M.dir=WEST
					if(usr.dir==SOUTH)
						M.dir=SOUTH
					if(usr.dir==EAST)
						M.dir=EAST
					if(usr.dir==NORTHWEST)
						M.dir=NORTHWEST
					if(usr.dir==SOUTHWEST)
						M.dir=SOUTHWEST
					if(usr.dir==SOUTHEAST)
						M.dir=SOUTHEAST
					if(usr.dir==NORTHEAST)
						M.dir=NORTHEAST
				sleep(14)
				usr.firing=0
mob/Kenjutsu
	verb
		Kubikiribocho(mob/M in get_step(src,src.dir))
			set category = "TaiJutsu"
			set name = "Kubikiribocho"
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
			if(usr.health>=950000)
				usr<<"You can only use the effects of the Kubikiribocho while your health and sharpness of your sword has diminished"
				return
			else
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=blue> Says: Swordsmen Style!</FONT>"
				var/damage=usr.tai*1.5
				usr.health+=usr.Mhealth/6
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from Kubikiribocho!"
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

mob/fuuton
	verb
		FuutonRenkuudan() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Fuuton Renkuudan No Jutsu"
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
			if(!usr.handseals) return
			else // If the firing var isn't 1...
				if(usr.Fuuton2N >= 25)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.Fuuton2N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Fuuton: Renkuudan No Jutsu!"
					var/obj/FuutonRenkuudan/K = new /obj/FuutonRenkuudan
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					usr.Chakragain()
					K.name="[usr]"
					K.Gowner=usr
					walk(K,usr.dir)
					if(target == null)
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
						usr.chakra -= 15
						usr.Fuuton2N += 1
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Fuuton: Renkuudan No Jutsu!"
						var/obj/FuutonRenkuudan/K = new /obj/FuutonRenkuudan
						K.loc = usr.loc
						K.nin=usr.nin
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
mob/fuuton
	verb
		Fuuton_Daitoppa(mob/M in oview(usr)) // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Fuuton Daitoppa No Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
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
			if(!usr.handseals)
				return
			if(!M:PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 20)
				usr<<"You dont have enough chakra!"
				return
			else // If the firing var isn't 1...
				if(usr.Fuuton3N >= 40)
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.Fuuton3N += 1
					usr.chakra -= 20
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Fuuton Daitoppa No Jutsu!"
					var/obj/Fdaitoppa/D = new /obj/Fdaitoppa
					var/obj/Fdaitoppa/S = new /obj/Fdaitoppa
					var/obj/Fdaitoppa/K = new /obj/Fdaitoppa
					usr.target=M
					K.loc = usr.loc
					K.nin=usr.nin
					K.name="[usr]"
					usr.Chakragain()
					K.Move_Delay=2
					K.Gowner=usr
					walk_towards(K,M)
					sleep(5)
					D.loc = usr.loc
					D.nin=usr.nin
					D.Move_Delay=2
					D.name="[usr]"
					D.Gowner=usr
					walk_towards(D,M)
					sleep(5)
					S.loc = usr.loc
					S.nin=usr.nin
					S.Move_Delay=2
					S.name="[usr]"
					S.Gowner=usr
					walk_towards(S,M)
					sleep(1)
					usr.move = 1
					sleep(10)
					usr.firing = 0
					sleep(21)
					del(D)
					del(S)
					del(K)
					if (target == null)
						del(D)
						del(S)
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
							return
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
						else
							return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.move = 0 // Disables the mob's movement
						usr.chakra -= 20
						usr.Fuuton3N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Fuuton Daitoppa No Jutsu!"
						var/obj/Fdaitoppa/D = new /obj/Fdaitoppa
						var/obj/Fdaitoppa/S = new /obj/Fdaitoppa
						var/obj/Fdaitoppa/K = new /obj/Fdaitoppa
						usr.target=M
						K.loc = usr.loc
						K.nin=usr.nin
						K.name="[usr]"
						K.Move_Delay=2
						K.Gowner=usr
						walk_towards(K,M)
						sleep(5)
						D.loc = usr.loc
						usr.Chakragain()
						D.nin=usr.nin
						D.Move_Delay=2
						D.name="[usr]"
						D.Gowner=usr
						walk_towards(D,M)
						sleep(5)
						S.loc = usr.loc
						S.nin=usr.nin
						S.Move_Delay=2
						S.name="[usr]"
						S.Gowner=usr
						walk_towards(S,M)
						sleep(1)
						usr.move = 1
						sleep(10)
						usr.firing = 0
						sleep(21)
						del(D)
						del(S)
						del(K)
						if (target == null)
							del(D)
							del(S)
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
								return
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
							else
								return
					usr<<"You failed to use Fuuton Daitoppa"
mob/fuuton
	verb
		FuutonKazeDangan() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Fuuton Kaze Dangan No Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
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


			else // If the firing var isn't 1...
				if(usr.Fuuton1N >= 25)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.Fuuton1N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Fuuton: Kaze Dangan No Jutsu!"
					var/obj/kazedangan/K = new /obj/kazedangan
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					usr.Chakragain()
					K.name="[usr]"
					K.Move_Delay=0.5
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
						usr.chakra -= 15
						usr.Fuuton1N += 1
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Fuuton: Kaze Dangan No Jutsu!"
						var/obj/kazedangan/K = new /obj/kazedangan
						K.loc = usr.loc
						K.nin=usr.nin
						usr.Chakragain()
						K.Move_Delay=0.5
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




//RAIKYUU IS THE FIRST OF THE RAI JUTSUS
mob/rai
	verb
		Raikyuu() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Raikyuu No Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
				return
			if(!usr.handseals)
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
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			else // If the firing var isn't 1...
				if(usr.Rai1N >= 25)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.Rai1N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Raikyuu!"
					var/obj/Raikyuu/K = new /obj/Raikyuu
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					K.Move_Delay=0.5
					K.name="[usr]"
					K.Gowner=usr
					usr.Chakragain()
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
						usr.chakra -= 15
						usr.Rai1N += 1
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Raikyuu!"
						var/obj/Raikyuu/K = new /obj/Raikyuu
						K.loc = usr.loc
						K.nin=usr.nin
						K.dir = usr.dir
						K.name="[usr]"
						usr.Chakragain()
						K.Move_Delay=0.5
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
mob/rai
	verb
		Ikazuchi_No_Kiba() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Izazuchi No Kiba"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
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
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			else // If the firing var isn't 1...
				if(usr.Rai3N >= 25)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.Rai3N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Ikazuchi No Kiba!"
					var/obj/Ikazuchi/K = new /obj/Ikazuchi
					K.loc = usr.loc
					usr.Chakragain()
					K.nin=usr.nin
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
						usr.chakra -= 15
						usr.Rai3N += 1
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Ikazuchi No Kiba!"
						var/obj/Ikazuchi/K = new /obj/Ikazuchi
						K.loc = usr.loc
						K.nin=usr.nin
						K.dir = usr.dir
						usr.Chakragain()
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
mob/rai
	verb
		RairyuuNoTatsumaki(mob/M in oview(usr)) // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Rairyuu No Tatsumaki"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
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
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			else // If the firing var isn't 1...
				if(usr.Rai2N >= 52)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.Rai2N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Rairyuu No Tatsumaki!"
					var/obj/RairyuuTatsumaki/R = new /obj/RairyuuTatsumaki
					usr.target=M
					R.loc = usr.loc
					R.Move_Delay=2
					R.nin=usr.nin
					R.name="[usr]"
					usr.Chakragain()
					R.Gowner=usr
					walk_towards(R,M)
					sleep(1)
					usr.move = 1
					sleep(8)
					usr.firing = 0
					sleep(21)
					del(R)
					if (target == null)
						del(R)
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
							return
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
						else
							return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 15
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.move = 0 // Disables the mob's movement
						usr.Rai2N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Rairyuu No Tatsumaki!"
						var/obj/RairyuuTatsumaki/R = new /obj/RairyuuTatsumaki
						usr.target=M
						R.loc = usr.loc
						R.Move_Delay=2
						R.nin=usr.nin
						R.name="[usr]"
						usr.Chakragain()
						R.Gowner=usr
						walk_towards(R,M)
						sleep(1)
						usr.move = 1
						sleep(8)
						usr.firing = 0
						sleep(21)
						del(R)
						if (target == null)
							del(R)
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
								return
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
							else
								return
obj
	DemonMirror
		icon='mirror.dmi'
		icon_state=""
		density=1
obj
	DenseThing
		density=1
obj
	bunshins
		ClayBunshinnojutsu
			verb/ClayBunshinNoJutsu()
				set name = "Clay Bunshin no jutsu"
				set desc = "Create a clone of clay that can attack"
				set category = "NinJutsu"
				usr.Handseals()
				if(usr.chakra <= 17)
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
					view() << "<font color=silver><b><font face=verdana>[usr] says:Clay Art: Clay Bunshin No Jutsu!!"
					var/mob/npc/KBunshin/S = new /mob/npc/KBunshin
					usr.sunaU += 1
					usr.Chakragain()
					usr.Sbunshin += 1
					if(S)
						S.original = usr
						S.name = "[usr.name]"
						S.icon = usr.icon
						S.overlays += usr.overlays
						S.loc = locate(usr.x, usr.y - 1, usr.z)
						S.tai = usr:tai/8
						S.health = 1
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
obj
	bunshins
		SunaBunshinnojutsu
			verb/SunaBunshinNoJutsu()
				set name = "Suna Bunshin no jutsu"
				set desc = "Create a clone of sand that can attack"
				set category = "NinJutsu"
				usr.Handseals()
				if(usr.chakra <= 17)
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
					view() << "<font color=silver><b><font face=verdana>[usr] says:Suna Bunshin No Jutsu!!"
					var/mob/npc/KBunshin/S = new /mob/npc/KBunshin
					usr.sunaU += 1
					usr.Chakragain()
					usr.Sbunshin += 1
					if(S)
						S.original = usr
						S.name = "[usr.name]"
						S.icon = usr.icon
						S.overlays += usr.overlays
						S.loc = locate(usr.x, usr.y - 1, usr.z)
						S.tai = usr:tai/8
						S.health = 1
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

obj
	bunshins
		KekkaiKonchuuBunshinnoJutsu
			verb/KekkaiKonchuuBunshinnoJutsu()
				set name = "Kekkai Konchuu Bunshin no jutsu"
				set desc = "Create a clone out of bugs"
				set category = "NinJutsu"
				usr.Handseals()
				if(usr.Konchuu <= 10)
					usr << "Not enough bugs!"
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
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.chakra <= 25)
					usr << "Not enough chakra!"
					return
				if (usr.firing)
					return
				if(!usr.handseals)

					return
				else
					usr.KillBunshin()
					view() << "<font color=silver><b><font face=verdana>[usr] says:Kekkai Konchuu Bunshin No Jutsu!!"
					usr.firing = 1
					var/mob/npc/KBunshin/S = new /mob/npc/KBunshin
					usr.KKbunshin += 1
					usr.Chakragain()
					usr.Konchuu -= 5
					if(S)
						S.original = usr
						S.name = "[usr.name]"
						S.icon = usr.icon
						S.overlays += usr.overlays
						S.loc = locate(usr.x, usr.y - 1, usr.z)
						S.tai = usr.Mtai/2
						S.health = usr.Mhealth/2
						usr.chakra -= 17
					sleep(30)
					usr.firing = 0
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,5)
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
						usr.random = rand(1,7)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."

mob/jutsu
	verb
		JourouSenbon(mob/M in oview(3))
			set category="TaiJutsu"
			set name="Jourou Senbon"
			if(usr.firing)
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
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra>=50)
				usr.firing=1
				sleep(10)
				usr.random=rand(1,4)
				if(usr.random==1)
					var/damage=usr.tai
					usr<<"You hit [M]'s leg with Jourou Senbon ([damage] damage)"
					M<<"Your leg has been hit by [usr]'s Jourou Senbon slowing your movements ([damage] damage)!"
					M.Move_Delay=10
					M.health-=damage
					if(M.health<=0)
						M.Death(usr)
						usr.firing=0
						return
					usr.firing=0
					sleep(300)
					M.Move_Delay=0
					return
				if(usr.random==2)
					var/damage=usr.tai*1.3
					usr<<"You hit [M]'s torso with Jourou Senbon causing significant damage ([damage] damage)!"
					M<<"Your torso has been hit by [usr]'s Jourou Senbon causing significant damage ([damage] damage)!"
					M.health-=damage
					if(M.health<=0)
						M.Death(usr)
						usr.firing=0
						return
					usr.firing=0
					sleep(300)
					return
				if(usr.random==4)
					var/damage=usr.tai*1.4
					usr<<"You hit [M]'s eyes with Jourou Senbon causing coordination loss ([damage] damage)!"
					M<<"Your eyes have been hit by [usr]'s Jourou Senbon causing coordination loss ([damage] damage)!"
					M.screwed=1
					M.health-=damage
					if(M.health<=0)
						M.Death(usr)
						usr.firing=0
						return
					usr.firing=0
					sleep(300)
					M.screwed=0
					return
				else
					usr.firing=1
					usr<<"You missed!"
					sleep(20)
					usr.firing=0
					return
			else
				usr<<"Not enough Chakra"
				return
mob/jutsu
	verb
		BakuretsuBunshin()
			set category = "NinJutsu"
			set name="Bakuretsu Kage Bunshin"
			usr.Handseals()
			if(usr.firing)
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
			if(!usr.handseals)
				return
			if(usr.bakuretsuuse)
				return
			for(var/mob/npc/Bunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*1.4
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npc/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*1.5
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npc/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*1.3
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npc/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*1.4
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return
			for(var/mob/npc/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*1.4
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
					return


mob/flight
	verb
		Fly()
			set category = "NinJutsu"
			set name = "Flight"
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
			if(usr.chakra<=2000)
				usr<<"Not enough chakra"
				return
			if(!usr.Flight)
				usr.Flight=1
				usr.density=0
				usr.overlays += 'Flight.dmi'
				flying
				if(usr.Flight)
					usr.chakra -= 3250
					if(usr.chakra <= 1100)
						usr.density = 1
						usr.overlays -= 'Flight.dmi'
						usr.Flight = 0
						return
					else
						sleep(4)
						goto flying
			else if(usr.Flight)
				usr.overlays-= 'Flight.dmi'
				usr.density = 1
				usr.Flight = 0
mob/flight
	verb
		Cloud()
			set category = "NinJutsu"
			set name = "Summon Cloud"
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
			if(usr.chakra<=2000)
				usr<<"Not enough chakra!!"
				return
			if(!usr.Flight)
				usr.Flight=1
				usr.density=0
				usr.overlays += 'Cloud.dmi'
				flying
				if(usr.Flight)
					usr.chakra -= 3250
					if(usr.chakra <= 1100)
						usr.density = 1
						usr.overlays -= 'Cloud.dmi'
						usr.Flight = 0
						return
					else
						sleep(4)
						goto flying
			else if(usr.Flight)
				usr.overlays-= 'Cloud.dmi'
				usr.density = 1
				usr.Flight = 0

mob/flight
	verb
		TemariFan()
			set category = "NinJutsu"
			set name = "Summon Fan"
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
			if(usr.Flight)
				usr.density = 1
				usr.overlays -= 'Temari Fan.dmi'
				usr.icon_state= ""
				usr.Flight = 0
			else
				usr.overlays+= 'Temari Fan.dmi'
				usr.icon_state= "Ride"
				usr.density = 0
				usr.Flight = 1
mob/SandF
	verb
		Fly()
			set category = "NinJutsu"
			set name = "Sabaku Fuyu"
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
			if(usr.chakra<=2000)
				usr<<"Not enough chakra!!"
				return
			if(!usr.Flight)
				usr.Flight=1
				usr.density=0
				usr.overlays += 'SandF.dmi'
				flying
				if(usr.Flight)
					usr.chakra -= 3250
					if(usr.chakra <= 1100)
						usr.density = 1
						usr.overlays -= 'SandF.dmi'
						usr.Flight = 0
						return
					else
						sleep(4)
						goto flying
			else if(usr.Flight)
				usr.overlays-= 'SandF.dmi'
				usr.density = 1
				usr.Flight = 0

mob/Beeflight
	verb
		Fly()
			set category = "NinJutsu"
			set name = "Bee Wings"
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
			if(usr.chakra<=2000)
				usr<<"Not enough chakra!!"
				return
			if(!usr.Flight)
				usr.Flight=1
				usr.density=0
				usr.overlays += 'wings.dmi'
				flying
				if(usr.Flight)
					usr.chakra -= 3250
					if(usr.chakra <= 1100)
						usr.density = 1
						usr.overlays -= 'wings.dmi'
						usr.Flight = 0
						return
					else
						sleep(4)
						goto flying
			else if(usr.Flight)
				usr.overlays-= 'wings.dmi'
				usr.density = 1
				usr.Flight = 0
mob/suiton
	verb
		SuirouNoJutsu(mob/M in oview(1)) // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Suirou no Jutsu"
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
				M<<"Your Frozen by [usr]'s Suirou."
				usr<<"You Froze [M] with your Suirou"
				var/Sleeptime = round(usr.gen/10)
				if(Sleeptime <= 1)
					M.overlays += 'Wprison.dmi'
					M.Frozen = 1
					M.Froze = 1
					sleep(50)
					if(M)
						M.Frozen=0
						M<<"You break out of [usr]'s Suirou freeze."
						M.overlays -= 'Wprison.dmi'
						usr<<"[M] is free from your Suirou!"
						M.Froze = 0
					sleep(8)
				else
					M.overlays += 'Wprison.dmi'
					M.Frozen=1
					M.Froze = 1
					sleep(50)
					if(M)
						M.Frozen=0
						M<<"You break out of [usr]'s Suirou freeze."
						M.overlays -= 'Wprison.dmi'
						usr<<"[M] is free from your Suirou!"
						M.Froze = 0
					sleep(8)
				sleep(50)
				if(M)
					M.Froze=0
obj
	Senban
		icon='daitoppa.dmi'
		layer = MOB_LAYER+2
mob/rain
	verb
		JouroSenban()
			set category = "NinJutsu"
			set name = "Jouro Senban"
			if(usr.firing) // If the mob's firing var is one...
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
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.chakra <= 9999)
				usr<<"You dont have enough chakra!"
				return
			else // If the firing var isn't 1...
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
				view()<<"[usr]: Jouro Senban!"
				var/obj/Senban/F = new /obj/Senban/
				var/obj/Senban/G = new /obj/Senban/
				var/obj/Senban/H = new /obj/Senban/
				var/obj/Senban/I = new /obj/Senban/
				var/obj/Senban/J = new /obj/Senban/
				var/obj/Senban/L = new /obj/Senban/
				var/obj/Senban/A = new /obj/Senban/
				var/obj/Senban/B = new /obj/Senban/
				var/obj/Senban/M2 = new /obj/Senban/
				var/obj/Senban/N = new /obj/Senban/
				var/obj/Senban/O = new /obj/Senban/
				var/obj/Senban/P = new /obj/Senban/
				var/obj/Senban/D = new /obj/Senban/
				var/obj/Senban/E = new /obj/Senban/
				var/obj/Senban/C = new /obj/Senban/
				var/obj/Senban/K = new /obj/Senban/
				var/obj/Senban/Q = new /obj/Senban/
				var/obj/Senban/R = new /obj/Senban/
				var/obj/Senban/S = new /obj/Senban/
				var/obj/Senban/T = new /obj/Senban/
				var/obj/Senban/W = new /obj/Senban/
				var/obj/Senban/X = new /obj/Senban/
				var/obj/Senban/Y = new /obj/Senban/
				var/obj/Senban/Z = new /obj/Senban/
				var/obj/Senban/AB = new /obj/Senban/
				var/obj/Senban/AC = new /obj/Senban/
				var/obj/Senban/AD = new /obj/Senban/
				var/obj/Senban/AE = new /obj/Senban/
				var/obj/Senban/AF = new /obj/Senban/
				var/obj/Senban/AG = new /obj/Senban/
				var/obj/Senban/AH = new /obj/Senban/
				var/obj/Senban/AI = new /obj/Senban/
				var/obj/Senban/AJ = new /obj/Senban/
				var/obj/Senban/AK = new /obj/Senban/
				var/obj/Senban/AL = new /obj/Senban/
				var/obj/Senban/AM = new /obj/Senban/
				var/obj/Senban/AN = new /obj/Senban/
				var/obj/Senban/AO = new /obj/Senban/
				var/obj/Senban/AP = new /obj/Senban/
				var/obj/Senban/AQ = new /obj/Senban/
				var/obj/Senban/AR = new /obj/Senban/
				var/obj/Senban/AS = new /obj/Senban/
				var/obj/Senban/AT = new /obj/Senban/
				var/obj/Senban/AU = new /obj/Senban/
				var/obj/Senban/AV = new /obj/Senban/
				var/obj/Senban/AW = new /obj/Senban/
				var/obj/Senban/AX= new /obj/Senban/
				var/obj/Senban/AY = new /obj/Senban/
				var/obj/Senban/AZ = new /obj/Senban/
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
				M2.nin=usr.nin
				N.nin=usr.nin
				O.nin=usr.nin
				P.nin=usr.nin
				Q.nin=usr.nin
				R.nin=usr.nin
				S.nin=usr.nin
				T.nin=usr.nin
				W.nin=usr.nin
				X.nin=usr.nin
				Y.nin=usr.nin
				Z.nin=usr.nin
				AB.nin=usr.nin
				AC.nin=usr.nin
				AD.nin=usr.nin
				AE.nin=usr.nin
				AF.nin=usr.nin
				AG.nin=usr.nin
				AH.nin=usr.nin
				AI.nin=usr.nin
				AJ.nin=usr.nin
				AK.nin=usr.nin
				AL.nin=usr.nin
				AM.nin=usr.nin
				AN.nin=usr.nin
				AO.nin=usr.nin
				AP.nin=usr.nin
				AQ.nin=usr.nin
				AR.nin=usr.nin
				AS.nin=usr.nin
				AV.nin=usr.nin
				AW.nin=usr.nin
				AX.nin=usr.nin
				AY.nin=usr.nin
				AZ.nin=usr.nin
				AU.nin=usr.nin
				AV.nin=usr.nin
				K.loc = locate(usr.x,usr.y,usr.z)
				K.senban=1
				A.loc = locate(usr.x+1,usr.y,usr.z)
				A.senban=1
				C.loc = locate(usr.x-1,usr.y,usr.z)
				C.senban=1
				B.loc = locate(usr.x,usr.y+1,usr.z)
				B.senban=1
				D.loc = locate(usr.x,usr.y-1,usr.z)
				D.senban=1
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				E.senban=1
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				F.senban=1
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				G.senban=1
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				H.senban=1
				I.loc = locate(usr.x+2,usr.y,usr.z)
				I.senban=1
				J.loc = locate(usr.x-2,usr.y,usr.z)
				J.senban=1
				L.loc = locate(usr.x,usr.y+2,usr.z)
				L.senban=1
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				M2.senban=1
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				N.senban=1
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
				O.senban=1
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				P.senban=1
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				Q.senban=1
				R.loc = locate(usr.x+3,usr.y,usr.z)
				R.senban=1
				S.loc = locate(usr.x-3,usr.y,usr.z)
				S.senban=1
				T.loc = locate(usr.x,usr.y+3,usr.z)
				T.senban=1
				W.loc = locate(usr.x,usr.y-3,usr.z)
				W.senban=1
				X.loc = locate(usr.x+3,usr.y+3,usr.z)
				X.senban=1
				Y.loc = locate(usr.x-3,usr.y-3,usr.z)
				Y.senban=1
				Z.loc = locate(usr.x-3,usr.y+3,usr.z)
				Z.senban=1
				AB.loc = locate(usr.x-3,usr.y-2,usr.z)
				AB.senban=1
				AC.loc = locate(usr.x+3,usr.y+2,usr.z)
				AC.senban=1
				AD.loc = locate(usr.x+3,usr.y-2,usr.z)
				AD.senban=1
				AE.loc = locate(usr.x-3,usr.y+2,usr.z)
				AE.senban=1
				AF.loc = locate(usr.x+2,usr.y+3,usr.z)
				AF.senban=1
				AG.loc = locate(usr.x-2,usr.y-3,usr.z)
				AG.senban=1
				AH.loc = locate(usr.x-2,usr.y+3,usr.z)
				AH.senban=1
				AI.loc = locate(usr.x+2,usr.y-3,usr.z)
				AI.senban=1
				AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
				AJ.senban=1
				AK.loc = locate(usr.x+1,usr.y+2,usr.z)
				AK.senban=1
				AL.loc = locate(usr.x+1,usr.y-2,usr.z)
				AL.senban=1
				AM.loc = locate(usr.x-1,usr.y+2,usr.z)
				AM.senban=1
				AN.loc = locate(usr.x+2,usr.y+1,usr.z)
				AN.senban=1
				AO.loc = locate(usr.x-2,usr.y-1,usr.z)
				AO.senban=1
				AP.loc = locate(usr.x-2,usr.y+1,usr.z)
				AP.senban=1
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AQ.senban=1
				AR.loc = locate(usr.x-1,usr.y-3,usr.z)
				AR.senban=1
				AS.loc = locate(usr.x+1,usr.y+3,usr.z)
				AS.senban=1
				AT.loc = locate(usr.x+1,usr.y-3,usr.z)
				AT.senban=1
				AU.loc = locate(usr.x-1,usr.y+3,usr.z)
				AU.senban=1
				AV.loc = locate(usr.x+3,usr.y+1,usr.z)
				AV.senban=1
				AW.loc = locate(usr.x-3,usr.y-1,usr.z)
				AW.senban=1
				AX.loc = locate(usr.x-3,usr.y+1,usr.z)
				AX.senban=1
				AY.loc = locate(usr.x+3,usr.y-1,usr.z)
				AY.senban=1
				AZ.loc = locate(usr.x+3,usr.y-3,usr.z)
				AZ.senban=1
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
					var/damage=round(usr.nin*1.3)
					view()<<"[M] has taken [damage] damage from [usr]'s Jouro Senban"
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
				sleep(100)
				usr.firing=0
mob/suiton
	verb
		SuitonSuishouha() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Suiton Suishouha"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(!usr.handseals)
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
			if(usr.chakra <= 25)
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
			else // If the firing var isn't 1...
				if(SN >= 100)
					usr.chakra -= 25
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.SN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>Suiton Suishouha!</FONT>"
					var/obj/Suishouha/K = new /obj/Suishouha
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					K.name="[usr]"
					usr.Chakragain()
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
								usr.ChakraC+=ccgain
								if(usr.ChakraC>100)
									usr.ChakraC=100
								usr<<"[usr] you gained [ccgain] Chakra control..."
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
					sleep(10)
					usr.firing = 0
					usr.Move_Delay = usr.Savedspeed
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 25
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						usr.SN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>Suiton Suishouha!</FONT>"
						var/obj/Suishouha/K = new /obj/Suishouha
						K.loc = usr.loc
						K.nin=usr.nin
						K.dir = usr.dir
						K.name="[usr]"
						usr.Chakragain()
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
									usr.ChakraC+=ccgain
									if(usr.ChakraC>100)
										usr.ChakraC=100
									usr<<"[usr] you gained [ccgain] Chakra control..."
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
						sleep(10)
						usr.firing = 0
						usr.Move_Delay = usr.Savedspeed
						sleep(45)
						del(K)

mob/suiton
	verb
		Suishouha() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Suishouha"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(!usr.handseals)
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
			if(usr.chakra <= 25)
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
			else // If the firing var isn't 1...
				if(SN >= 100)
					usr.chakra -= 25
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.SN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>Suishouha!</FONT>"
					var/obj/SSuishouha/K = new /obj/SSuishouha
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					K.name="[usr]"
					K.Move_Delay=0
					K.Move_Delay=0
					usr.Chakragain()
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
								usr.ChakraC+=ccgain
								if(usr.ChakraC>100)
									usr.ChakraC=100
								usr<<"[usr] you gained [ccgain] Chakra control..."
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
					sleep(10)
					usr.firing = 0
					usr.Move_Delay = usr.Savedspeed
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 25
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						usr.SN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>Suishouha!</FONT>"
						var/obj/SSuishouha/K = new /obj/SSuishouha
						K.loc = usr.loc
						K.nin=usr.nin
						K.dir = usr.dir
						K.name="[usr]"
						usr.Chakragain()
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
									usr.ChakraC+=ccgain
									if(usr.ChakraC>100)
										usr.ChakraC=100
									usr<<"[usr] you gained [ccgain] Chakra control..."
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
						sleep(10)
						usr.firing = 0
						usr.Move_Delay = usr.Savedspeed
						sleep(45)
						del(K)
mob/suiton
	verb
		SuitonSousou()
			set category = "NinJutsu"
			set name = "Suiton Sousou"
			usr.Handseals()
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
			for(var/mob/M in oview(10,usr))
				if(usr.sphere)
					return
				if(src.Kaiten)
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					Death(usr)
					return
				if(usr.chakra<=10000)
					usr<<"Not Enough Chakra"
					return
				if(M.captured)
					usr.firing=1
					var/damage=usr.nin*1.4
					view(usr)<<"Suiton Sousou!"
					flick("sousou",M)
					M.overlays-='WaterStrom.dmi'
					M.overlays-='WaterStrom.dmi'
					usr.Chakragain()
					M.overlays-='WaterStrom.dmi'
					M.health-=damage
					M.captured=0
					usr.firing=0
					if(M.health<=0)
						M.Death(usr)
						return
				else
					return
mob/suiton
	verb
		SuitonKyuu(mob/M in oview(3))
			set category = "NinJutsu"
			set name = "Suiton Kyuu"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.firing)
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
			if(usr.sphere)
				return
			if(usr.Kaiten)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra<=10000)
				usr<<"Not Enough Chakra"
				return
			if(M.Kaiten)
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			if(M.captured)
				usr<<"He is already caught!"
				return
			else
				if(usr.KyuuN>=100)
					usr.chakra -= 10000
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.KyuuN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Suiton Kyuu!"
					M.overlays+='WaterStrom.dmi'
					M.captured=1
					usr.Chakragain()
					M.Frozen=1
					sleep(100)
					if(M)
						M.captured=0
						M.Frozen=0
						M.overlays-='WaterStrom.dmi'
						M.overlays-='WaterStrom.dmi'
						M.overlays-='WaterStrom.dmi'
						M.overlays-='WaterStrom.dmi'
						usr.firing=0
					return
				else
					usr.random=rand(1,5)
					if(usr.random==1)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Suiton Kyuu!"
						M.overlays+='WaterStrom.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
							usr.firing=0
						return
					if(usr.random==2)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Suiton Kyuu!"
						M.overlays+='WaterStrom.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
							M.overlays-='WaterStrom.dmi'
						usr.firing=0
						return
					if(usr.random==3)
						usr<<"You fail to use Suiton Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==4)
						usr<<"You fail to use Bee Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==5)
						usr<<"You fail to use Bee Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					sleep(100)
					usr.firing=0
					if(M)
						M.captured=0
mob/Makyou
	verb
		MakyouSuiryuudannoJutsu(mob/M in oview(usr)) // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Makyou Suiryuudan no Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
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
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 15)
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
				if(usr.SS >= 52)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.SS += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#a1d7ee>Makyou Suiryuudan No Jutsu!</FONT>"
					var/obj/MSuiryedan/K = new /obj/MSuiryedan
					usr.target=M
					usr.Chakragain()
					K.loc = usr.loc
					K.nin=usr.nin
					K.Move_Delay=2
					K.name="[usr]"
					K.Gowner=usr
					walk_towards(K,M)
					sleep(1)
					usr.move = 1
					sleep(8)
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
								if(usr.ChakraC>=100)
									usr.ChakraC=100
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							return
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
						else
							return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 15
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.move = 0 // Disables the mob's movement
						usr.SS += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#a1d7ee>Makyou Suiryuudan No Jutsu!</FONT>"
						var/obj/MSuiryedan/K = new /obj/MSuiryedan
						usr.target=M
						K.loc = usr.loc
						K.nin=usr.nin
						K.name="[usr]"
						K.Gowner=usr
						K.Move_Delay=2
						walk_towards(K,M)
						usr.Chakragain()
						sleep(1)
						usr.move = 1
						sleep(8)
						usr.firing = 0
						sleep(21)
						del(K)
						if (target == null)
							del(K)
						if(usr.Mnin <= usr.cap)
							usr.random = rand(1,6)
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
							else
								return
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
							else
								return

mob/Makyou
	verb
		MakyouSuikoudannoJutsu(mob/M in oview(usr)) // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Makyou Suikoudan no Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
				return
			if(!M:PK)
				usr<<"NON PK ZONE!"
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
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			else // If the firing var isn't 1...
				if(usr.SS3 >= 52)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.SS3 += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#a1d7ee>Makyou Suikoudan No Jutsu!</FONT>"
					var/obj/MakyouSuikoudan/K = new /obj/MakyouSuikoudan
					usr.target=M
					K.loc = usr.loc
					K.nin=usr.nin
					K.name="[usr]"
					usr.Chakragain()
					K.Move_Delay=2
					K.Gowner=usr
					walk_towards(K,M)
					sleep(8)
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
								if(usr.ChakraC>=100)
									usr.ChakraC=100
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							return
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
						else
							return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 15
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.SS3 += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#a1d7ee>Makyou Suikoudan No Jutsu!</FONT>"
						var/obj/MakyouSuikoudan/K = new /obj/MakyouSuikoudan
						usr.target=M
						K.loc = usr.loc
						K.nin=usr.nin
						K.Move_Delay=2
						K.name="[usr]"
						usr.Chakragain()
						K.Gowner=usr
						walk_towards(K,M)
						sleep(8)
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
									if(usr.ChakraC>=100)
										usr.ChakraC=100
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
							else
								return
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
							else
								return
mob/doton
	verb
		Doroudorno() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Doroudorno"
			if(usr.chakra < 100)
				usr<<"You dont have enough chakra!"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(!usr.Kaiten&&!usr.firing)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#0000ff>Doroudorno!</FONT>"
				usr.Frozen = 1
				usr.firing = 1
				usr.overlays += 'Esphere.dmi'
				usr.Kaiten =1
				OMG
				if(usr.Kaiten)
					usr.chakra -=100
					if(usr.chakra <= 99)
						usr.firing = 0
						usr.overlays -= 'Esphere.dmi'
						usr.Kaiten = 0
					else
						sleep(4)
						goto OMG
			else if(usr.Kaiten)
				usr.Frozen = 0
				usr.firing = 0
				usr.overlays -= 'Esphere.dmi'
				usr.Kaiten =0
				usr<<"You release Doroudorno."



mob/doton
	verb
		DotonSousou()
			set category = "NinJutsu"
			set name = "Doton Sousou"
			usr.Handseals()
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
			for(var/mob/M in oview(10,usr))
				if(usr.sphere)
					return
				if(src.Kaiten)
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					Death(usr)
					return
				if(usr.chakra<=10000)
					usr<<"Not Enough Chakra"
					return
				if(M.captured)
					usr.firing=1
					var/damage=usr.nin*1.4
					view(usr)<<"Doton Sousou!"
					flick("doton",M)
					M.overlays-='DotonCoffin.dmi'
					M.overlays-='DotonCoffin.dmi'
					usr.Chakragain()
					M.overlays-='DotonCoffin.dmi'
					M.health-=damage
					M.captured=0
					usr.firing=0
					if(M.health<=0)
						M.Death(usr)
						return
				else
					return
mob/doton
	verb
		DotonKyuu(mob/M in oview(3))
			set category = "NinJutsu"
			set name = "Doton Kyuu"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.firing)
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
			if(usr.sphere)
				return
			if(usr.Kaiten)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra<=10000)
				usr<<"Not Enough Chakra"
				return
			if(M.Kaiten)
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			if(M.captured)
				usr<<"He is already caught!"
				return
			else
				if(usr.KyuuN>=100)
					usr.chakra -= 10000
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.KyuuN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Doton Kyuu!"
					M.overlays+='DotonCoffin.dmi'
					M.captured=1
					usr.Chakragain()
					M.Frozen=1
					sleep(50)
					if(M)
						M.captured=0
						M.Frozen=0
						M.overlays-='DotonCoffin.dmi'
						M.overlays-='DotonCoffin.dmi'
						M.overlays-='DotonCoffin.dmi'
						M.overlays-='DotonCoffin.dmi'
						usr.firing=0
					return
				else
					usr.random=rand(1,5)
					if(usr.random==1)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Doton Kyuu!"
						M.overlays+='DotonCoffin.dmi'
						M.captured=1
						M.Frozen=1
						sleep(50)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='DotonCoffin.dmi'
							M.overlays-='DotonCoffin.dmi'
							M.overlays-='DotonCoffin.dmi'
							M.overlays-='DotonCoffin.dmi'
							usr.firing=0
						return
					if(usr.random==2)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Doton Kyuu!"
						M.overlays+='DotonCoffin.dmi'
						M.captured=1
						M.Frozen=1
						sleep(50)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='DotonCoffin.dmi'
							M.overlays-='DotonCoffin.dmi'
							M.overlays-='DotonCoffin.dmi'
							M.overlays-='DotonCoffin.dmi'
						usr.firing=0
						return
					if(usr.random==3)
						usr<<"You fail to use Doton Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==4)
						usr<<"You fail to use Doton Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==5)
						usr<<"You fail to use Doton Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					sleep(50)
					usr.firing=0
					if(M)
						M.captured=0
obj
	bunshins
		SuitonBunshinnojutsu
			verb/SuitonBunshinNoJutsu()
				set name = "Suiton Bunshin no jutsu"
				set desc = "Create a clone of water that can attack"
				set category = "NinJutsu"
				usr.Handseals()
				if(usr.chakra <= 17)
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
					view() << "<font color=silver><b><font face=verdana>[usr] says:Suiton Bunshin No Jutsu!!"
					var/mob/npc/KBunshin/S = new /mob/npc/KBunshin
					usr.sunaU += 1
					usr.Chakragain()
					usr.Sbunshin += 1
					if(S)
						S.original = usr
						S.name = "[usr.name]"
						S.icon = usr.icon
						S.overlays += usr.overlays
						S.loc = locate(usr.x, usr.y - 1, usr.z)
						S.tai = usr:tai/8
						S.health = 1
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

mob/suiton
	verb
		RainArmor()
			set category = "NinJutsu"
			set name = "Rain Armor"
			if(usr.Henge)
				usr<<"Not While Your In Henge"
				return
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.firing)
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
			if(!usr.Rainarmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Rain Armor!"
				usr.overlays += 'Rainarmor.dmi'
				usr.Rainarmor =1
				usr.nin = usr.nin*1.1
				sand
				if(usr.Rainarmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'Rainarmor.dmi'
						usr.Rainarmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto sand
			else
				usr.overlays -= 'Rainarmor.dmi'
				usr.Sarmor =0
				usr.Rainarmor = 0
				usr.nin = usr.Mnin
				usr<<"You take down the rain armor."


mob/suiton
	verb
		SuitonDoryuudan() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Suiton Doryuudan"
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
				usr.chakra -= 39
				usr.firing=1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says:<font color=blue>Suiton Doryuudan!"
				sleep(15)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/doryuudan/A = new /obj/doryuudan/
					var/obj/doryuudan/B = new /obj/doryuudan/
					var/obj/doryuudan/C = new /obj/doryuudan/
					var/obj/doryuudan/D = new /obj/doryuudan/
					var/obj/doryuudan/E = new /obj/doryuudan/
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
					var/obj/doryuudan/A = new /obj/doryuudan/
					var/obj/doryuudan/B = new /obj/doryuudan/
					var/obj/doryuudan/C = new /obj/doryuudan/
					var/obj/doryuudan/D = new /obj/doryuudan/
					var/obj/doryuudan/E = new /obj/doryuudan/
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
					var/obj/doryuudan/A = new /obj/doryuudan/
					var/obj/doryuudan/B = new /obj/doryuudan/
					var/obj/doryuudan/C = new /obj/doryuudan/
					var/obj/doryuudan/D = new /obj/doryuudan/
					var/obj/doryuudan/E = new /obj/doryuudan/
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
					var/obj/doryuudan/A = new /obj/doryuudan/
					var/obj/doryuudan/B = new /obj/doryuudan/
					var/obj/doryuudan/C = new /obj/doryuudan/
					var/obj/doryuudan/D = new /obj/doryuudan/
					var/obj/doryuudan/E = new /obj/doryuudan/
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
				sleep(15)
				usr.firing=0
				return

mob/fuuton
	verb
		NinpouKamaitachi() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Ninpou Kamaitachi"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(!usr.handseals)
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
			if(usr.chakra <= 25)
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
			else // If the firing var isn't 1...
				if(SN >= 100)
					usr.chakra -= 25
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.SN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>Ninpou Kamaitachi!</FONT>"
					var/obj/Ninpou/K = new /obj/Ninpou
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					K.name="[usr]"
					K.Move_Delay=0
					K.Move_Delay=0
					usr.Chakragain()
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
								usr.ChakraC+=ccgain
								if(usr.ChakraC>100)
									usr.ChakraC=100
								usr<<"[usr] you gained [ccgain] Chakra control..."
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
					sleep(10)
					usr.firing = 0
					usr.Move_Delay = usr.Savedspeed
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 25
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						usr.SN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>Ninpou Kamaitachi!</FONT>"
						var/obj/Ninpou/K = new /obj/Ninpou
						K.loc = usr.loc
						K.nin=usr.nin
						K.dir = usr.dir
						K.name="[usr]"
						usr.Chakragain()
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
									usr.ChakraC+=ccgain
									if(usr.ChakraC>100)
										usr.ChakraC=100
									usr<<"[usr] you gained [ccgain] Chakra control..."
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
						sleep(10)
						usr.firing = 0
						usr.Move_Delay = usr.Savedspeed
						sleep(45)
						del(K)
obj//ERROR
	KaryTail
		density=1
		icon='karytail.dmi'
		icon_state=""
		New()
			..()
			spawn()
				src.delete()
		proc/delete()
			spawn(15)
				del(src)
obj//ERROR
	KaryHead
		density=1
		icon='karyhead.dmi'
		icon_state=""
		Move()
			..()
			var/obj/KaryTail/T = new /obj/KaryTail
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
					view(M) << "[M] was hit by [usr]'s Katon Karyuudan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/katon
	verb
		Karyuudan() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Katon Karyuudan No Jutsu"
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
				view()<<"<font color=red><b><font face=verdana>[usr]: Katon Karyuudan No Jutsu!!"
				usr.chakra -= 500
				var/obj/KaryHead/B = new /obj/KaryHead
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
mob/katon
	verb
		Katonheki() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Katonheki"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(!usr.handseals)
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
			if(usr.chakra <= 25)
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
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				usr.DoryuuN += 1
				usr.chakra -= 39
				usr.firing=1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR= red>Katonheki!</FONT>"
				sleep(15)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/katonheki/A = new /obj/katonheki/
					var/obj/katonheki/B = new /obj/katonheki/
					var/obj/katonheki/C = new /obj/katonheki/
					var/obj/katonheki/D = new /obj/katonheki/
					var/obj/katonheki/E = new /obj/katonheki/
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
					var/obj/katonheki/A = new /obj/katonheki/
					var/obj/katonheki/B = new /obj/katonheki/
					var/obj/katonheki/C = new /obj/katonheki/
					var/obj/katonheki/D = new /obj/katonheki/
					var/obj/katonheki/E = new /obj/katonheki/
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
					var/obj/katonheki/A = new /obj/katonheki/
					var/obj/katonheki/B = new /obj/katonheki/
					var/obj/katonheki/C = new /obj/katonheki/
					var/obj/katonheki/D = new /obj/katonheki/
					var/obj/katonheki/E = new /obj/katonheki/
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
					var/obj/katonheki/A = new /obj/katonheki/
					var/obj/katonheki/B = new /obj/katonheki/
					var/obj/katonheki/C = new /obj/katonheki/
					var/obj/katonheki/D = new /obj/katonheki/
					var/obj/katonheki/E = new /obj/katonheki/
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
				sleep(15)
				usr.firing=0
				return
