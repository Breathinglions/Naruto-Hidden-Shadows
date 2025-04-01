
mob/GRelease
	verb
		GenjutsuK()
			set category = "GenJutsu"
			set name = "Genjutsu Kai"
			if(usr.firing)
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.chakra<=120000)
				usr<<"Not enough Chakra!!"
				return
			else
				usr.firing=1
				usr.chakra-=115000
				view()<<"<font color=green>[usr]:Genjutsu Kai!!"
				sleep(14)
				usr.Frozen=0
				usr.Froze=0
				usr<<"<font color=green>You are now released from any genjutsu"
				usr.firing=0
mob/RockAOE
	verb
		RockAOE()
			set category = "NinJutsu"
			set name = "Iwa Nadare"
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
				view()<<"<font color=green>[usr]: Iwa Nadare!"
				var/obj/DotonDD/F = new /obj/DotonDD/
				var/obj/DotonDD/G = new /obj/DotonDD/
				var/obj/DotonDD/H = new /obj/DotonDD/
				var/obj/DotonDD/I = new /obj/DotonDD/
				var/obj/DotonDD/J = new /obj/DotonDD/
				var/obj/DotonDD/L = new /obj/DotonDD/
				var/obj/DotonDD/A = new /obj/DotonDD/
				var/obj/DotonDD/B = new /obj/DotonDD/
				var/obj/DotonDD/M2 = new /obj/DotonDD/
				var/obj/DotonDD/N = new /obj/DotonDD/
				var/obj/DotonDD/O = new /obj/DotonDD/
				var/obj/DotonDD/P = new /obj/DotonDD/
				var/obj/DotonDD/D = new /obj/DotonDD/
				var/obj/DotonDD/E = new /obj/DotonDD/
				var/obj/DotonDD/C = new /obj/DotonDD/
				var/obj/DotonDD/K = new /obj/DotonDD/
				var/obj/DotonDD/Q = new /obj/DotonDD/
				var/obj/DotonDD/AJ = new /obj/DotonDD/
				var/obj/DotonDD/AK = new /obj/DotonDD/
				var/obj/DotonDD/AL = new /obj/DotonDD/
				var/obj/DotonDD/AM = new /obj/DotonDD/
				var/obj/DotonDD/AN = new /obj/DotonDD/
				var/obj/DotonDD/AO = new /obj/DotonDD/
				var/obj/DotonDD/AP = new /obj/DotonDD/
				var/obj/DotonDD/AQ = new /obj/DotonDD/
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
				AJ.owner=usr
				AK.owner=usr
				AL.owner=usr
				AM.owner=usr
				AN.owner=usr
				AO.owner=usr
				AP.owner=usr
				AQ.owner=usr
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
				AJ.nin=usr.nin
				AK.nin=usr.nin
				AL.nin=usr.nin
				AM.nin=usr.nin
				AN.nin=usr.nin
				AO.nin=usr.nin
				AP.nin=usr.nin
				AQ.nin=usr.nin
				K.loc = locate(usr.x,usr.y,usr.z)
				K.DotonDD=1
				A.loc = locate(usr.x+1,usr.y,usr.z)
				A.DotonDD=1
				C.loc = locate(usr.x-1,usr.y,usr.z)
				C.DotonDD=1
				B.loc = locate(usr.x,usr.y+1,usr.z)
				B.DotonDD=1
				D.loc = locate(usr.x,usr.y-1,usr.z)
				D.DotonDD=1
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				E.DotonDD=1
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				F.DotonDD=1
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				G.DotonDD=1
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				H.DotonDD=1
				I.loc = locate(usr.x+2,usr.y,usr.z)
				I.DotonDD=1
				J.loc = locate(usr.x-2,usr.y,usr.z)
				J.DotonDD=1
				L.loc = locate(usr.x,usr.y+2,usr.z)
				L.DotonDD=1
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				M2.DotonDD=1
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				N.DotonDD=1
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
				O.DotonDD=1
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				P.DotonDD=1
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				Q.DotonDD=1
				AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
				AJ.DotonDD=1
				AK.loc = locate(usr.x+1,usr.y+2,usr.z)
				AK.DotonDD=1
				AL.loc = locate(usr.x+1,usr.y-2,usr.z)
				AL.DotonDD=1
				AM.loc = locate(usr.x-1,usr.y+2,usr.z)
				AM.DotonDD=1
				AN.loc = locate(usr.x+2,usr.y+1,usr.z)
				AN.DotonDD=1
				AO.loc = locate(usr.x-2,usr.y-1,usr.z)
				AO.DotonDD=1
				AP.loc = locate(usr.x-2,usr.y+1,usr.z)
				AP.DotonDD=1
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AQ.DotonDD=1
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
				flick("rise",AJ)
				flick("rise",AK)
				flick("rise",AL)
				flick("rise",AM)
				flick("rise",AN)
				flick("rise",AO)
				flick("rise",AP)
				flick("rise",AQ)
				for(var/mob/M in oview(3,usr))
					var/damage=round(usr.nin*1.4)
					view()<<"[M] has taken [damage] damage from [usr]'s Iwa Nadare"
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
				del(AJ)
				del(AK)
				del(AL)
				del(AM)
				del(AN)
				del(AO)
				del(AP)
				del(AQ)
				sleep(100)
				usr.firing=0
obj//ERROR
	earth2
		density=1
		icon='EarthD.dmi'
		icon_state="tail"
		New()
			..()
			spawn()
				src.delete()
		proc/delete()
			spawn(10)
				del(src)
obj//ERROR
	earth
		density=1
		icon='EarthD.dmi'
		icon_state="head"
		Move()
			..()
			var/obj/earth2/T = new /obj/earth2
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
				if(!M.PK)
					return
				var/damage = round(src.tai*1.4)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Doton Ganchuro No Jutsu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Rock
	verb
		Rock()
			set category = "NinJutsu"
			set name = "Doton Ganchuro no jutsu"
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
				view()<<"<font color=green><b><font face=verdana>[usr]: Doton Ganchuro No Jutsu!!"
				usr.chakra -= 5000
				var/obj/earth/B = new /obj/earth
				B.Gowner=usr
				B.tai = usr.tai
				B.loc = usr.loc
				B.Move_Delay=0
				usr.Chakragain()
				walk(B,usr.dir)
				sleep(12)
				usr.firing=0
				sleep(15)
				del(B)
obj/
	bats
		icon = 'Crows.dmi'
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
				var/damage = round(src.tai*1.7)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [usr]'s Bats for [damage] damage!!"
					var/mob/O = src.Gowner
					sleep(3)
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/bat
	verb
		Bat()
			set category = "NinJutsu"
			set name = "Bat Barrage"
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
			if(usr.chakra<=5000)
				usr<<"Not enough Chakra!!"
				return
			else // If the firing var isn't 1...
				usr.chakra -= 3000
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=yellow> Says: Barrage of Bats!!!</font>"
				var/obj/bats/S1 = new /obj/bats/
				S1.loc = usr.loc
				S1.tai = usr.tai
				S1.dir = usr.dir
				S1.name = "[usr]"
				S1.Gowner = usr
				walk(S1,usr.dir)
				sleep(14)
				usr.firing = 0
				sleep(45)
				del(S1)
obj/
	dust
		icon = 'dust.dmi'
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
				var/damage = round(src.nin*10)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was vaporized by [usr]'s Jinton Genkai Hakuri no jutsu!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/RockW
	verb
		RockW1()
			set category = "NinJutsu"
			set name = "Jinton Genkai Hakuri No Jutsu"
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
			if(usr.chakra<=120000)
				usr<<"Not enough Chakra!!"
				return
			else // If the firing var isn't 1...
				usr.chakra -= 120000
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Jinton: Genkai Hakuri no Jutsu!!!</font>"
				var/obj/dust/S1 = new /obj/dust/
				S1.loc = usr.loc
				S1.nin = usr.nin
				S1.dir = usr.dir
				S1.name = "[usr]"
				S1.Gowner = usr
				walk(S1,usr.dir)
				sleep(30)
				usr.firing = 0
				sleep(45)
				del(S1)

mob/Mizukage
	verb
		Lava2() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Yoton Yukai no jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
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
			else // If the firing var isn't 1...
				if(usr.Katon1N >= 40)
					usr.chakra -= 40000
					usr.Chakragain()
					usr.firing = 1
					var/obj/GoukakyuuNorth/K = new /obj/GoukakyuuNorth
					var/obj/GoukakyuuCenter/L = new /obj/GoukakyuuCenter
					var/obj/GoukakyuuSouth/M1 = new /obj/GoukakyuuSouth
					var/obj/GoukakyuuEast/N = new /obj/GoukakyuuEast
					var/obj/GoukakyuuWest/O = new /obj/GoukakyuuWest
					var/obj/GoukakyuuNorthEast/TR = new /obj/GoukakyuuNorthEast
					var/obj/GoukakyuuSouthEast/BR = new /obj/GoukakyuuSouthEast
					var/obj/GoukakyuuNorthWest/TL = new /obj/GoukakyuuNorthWest
					var/obj/GoukakyuuSouthWest/BL = new /obj/GoukakyuuSouthWest
					var/obj/GoukakyuuTail/T = new /obj/GoukakyuuTail
					usr.Katon1N += 1
					usr.handseals=0
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=red> Says: Yoton Yukai no jutsu!!"
					K.Gowner=usr
					K.nin=usr.nin
					usr.Frozen=1
					if(usr.dir==NORTH)
						if(K)
							K.loc = usr.loc
							K.y+=2
						if(L)
							L.loc = usr.loc
							L.y+=3
						if(M1)
							M1.loc = usr.loc
							M1.y+=4
						if(O)
							O.loc = usr.loc
							O.y+=3
							O.x-=1
						if(N)
							N.loc = usr.loc
							N.y+=3
							N.x+=1
						if(TR)
							TR.loc = usr.loc
							TR.y+=4
							TR.x+=1
						if(TL)
							TL.loc = usr.loc
							TL.y+=4
							TL.x-=1
						if(BR)
							BR.loc = usr.loc
							BR.y+=2
							BR.x+=1
						if(BL)
							BL.loc = usr.loc
							BL.y+=2
							BL.x-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y+=1
					if(usr.dir==SOUTH)
						if(K)
							K.loc = usr.loc
							K.y-=2
						if(L)
							L.loc = usr.loc
							L.y-=3
						if(M1)
							M1.loc = usr.loc
							M1.y-=4
						if(O)
							O.loc = usr.loc
							O.y-=3
							O.x-=1
						if(N)
							N.loc = usr.loc
							N.y-=3
							N.x+=1
						if(TR)
							TR.loc = usr.loc
							TR.y-=2
							TR.x+=1
						if(TL)
							TL.loc = usr.loc
							TL.y-=2
							TL.x-=1
						if(BR)
							BR.loc = usr.loc
							BR.y-=4
							BR.x+=1
						if(BL)
							BL.loc = usr.loc
							BL.y-=4
							BL.x-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y-=1
					if(usr.dir==WEST)
						if(K)
							K.loc = usr.loc
							K.x-=2
						if(L)
							L.loc = usr.loc
							L.x-=3
						if(M1)
							M1.loc = usr.loc
							M1.x-=4
						if(O)
							O.loc = usr.loc
							O.y-=1
							O.x-=3
						if(N)
							N.loc = usr.loc
							N.y+=1
							N.x-=3
						if(TR)
							TR.loc = usr.loc
							TR.x-=2
							TR.y+=1
						if(TL)
							TL.loc = usr.loc
							TL.x-=4
							TL.y+=1
						if(BR)
							BR.loc = usr.loc
							BR.x-=2
							BR.y-=1
						if(BL)
							BL.loc = usr.loc
							BL.x-=4
							BL.y-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x-=1
					if(usr.dir==EAST)
						if(K)
							K.loc = usr.loc
							K.x+=2
						if(L)
							L.loc = usr.loc
							L.x+=3
						if(M1)
							M1.loc = usr.loc
							M1.x+=4
						if(O)
							O.loc = usr.loc
							O.y-=1
							O.x+=3
						if(N)
							N.loc = usr.loc
							N.y+=1
							N.x+=3
						if(TR)
							TR.loc = usr.loc
							TR.x+=4
							TR.y+=1
						if(TL)
							TL.loc = usr.loc
							TL.x+=2
							TL.y+=1
						if(BR)
							BR.loc = usr.loc
							BR.x+=4
							BR.y-=1
						if(BL)
							BL.loc = usr.loc
							BL.x+=2
							BL.y-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x+=1
					for(var/mob/M in oview(4,usr))
						if(K)
							if(M.loc==K.loc)
								var/damage=usr.nin*3
								view()<<"[M] has taken [damage] Damage from [usr]'s Yoton Yukai no jutsu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(T)
							if(M.loc==T.loc)
								var/damage=usr.nin*3
								view()<<"[M] has taken [damage] Damage from [usr]'s Yoton Yukai no jutsu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(L)
							if(M.loc==L.loc)
								var/damage=usr.nin*3
								view()<<"[M] has taken [damage] Damage from [usr]'s Yoton Yukai no jutsu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(M1)
							if(M.loc==M1.loc)
								var/damage=usr.nin*3
								view()<<"[M] has taken [damage] Damage from [usr]'s Yoton Yukai no jutsu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(N)
							if(M.loc==N.loc)
								var/damage=usr.nin*3
								view()<<"[M] has taken [damage] Damage from [usr]'s Yoton Yukai no jutsu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(O)
							if(M.loc==O.loc)
								var/damage=usr.nin*3
								view()<<"[M] has taken [damage] Damage from [usr]'s Yoton Yukai no jutsu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(BL)
							if(M.loc==BL.loc)
								var/damage=usr.nin*3
								view()<<"[M] has taken [damage] Damage from [usr]'s Yoton Yukai no jutsu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(BR)
							if(M.loc==BR.loc)
								var/damage=usr.nin*3
								view()<<"[M] has taken [damage] Damage from [usr]'s Yoton Yukai no jutsu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(TR)
							if(M.loc==TR.loc)
								var/damage=usr.nin*3
								view()<<"[M] has taken [damage] Damage from [usr]'s Yoton Yukai no jutsu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(TL)
							if(M.loc==TL.loc)
								var/damage=usr.nin*3
								view()<<"[M] has taken [damage] Damage from [usr]'s Yoton Yukai no jutsu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,8)
						if(random == 5||random==1)
							usr.Mnin += rand(1,2)
							usr.nin = usr.Mnin
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
						usr.random = rand(1,10)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
					sleep(30)
					usr.firing = 0
					usr.Frozen=0
					sleep(45)
					del(K)
					del(T)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 15
						usr.firing = 1
						var/obj/GoukakyuuHead/K = new /obj/GoukakyuuHead
						var/obj/GoukakyuuTail/T = new /obj/GoukakyuuTail
						usr.Katon1N += 1
						usr.Frozen=1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Yoton Yukai no jutsu!!"
						K.Gowner=usr
						K.nin=usr.nin
						if(usr.dir==NORTH)
							if(K)
								K.loc = usr.loc
								K.y+=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.y+=1
						if(usr.dir==SOUTH)
							if(K)
								K.loc = usr.loc
								K.y-=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.y-=1
						if(usr.dir==WEST)
							if(K)
								K.loc = usr.loc
								K.x-=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.x-=1
						if(usr.dir==EAST)
							if(K)
								K.loc = usr.loc
								K.x+=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.x+=1
						for(var/mob/M in oview(4,usr))
							if(K)
								if(M.loc==K.loc)
									var/damage=usr.nin*3
									view()<<"[M] has taken [damage] Damage from [usr]'s Yoton Yukai no jutsu"
									M.health-=damage
									if(M.health<=0)
										M.Death(usr)
						for(var/mob/M in oview(4,usr))
							if(T)
								if(M.loc==T.loc)
									var/damage=usr.nin*3
									view()<<"[M] has taken [damage] Damage from [usr]'s Yoton Yukai no jutsu"
									M.health-=damage
									if(M.health<=0)
										M.Death(usr)
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
						sleep(10)
						usr.firing = 0
						usr.Frozen=0
						sleep(45)
						del(K)
						del(T)

obj//ERROR
	lava2
		density=1
		icon='MistLava.dmi'
		icon_state=""
		New()
			..()
			spawn()
				src.delete()
		proc/delete()
			spawn(10)
				del(src)
obj//ERROR
	lava1
		density=1
		icon='MistLava.dmi'
		icon_state=""
		Move()
			..()
			var/obj/lava2/T = new /obj/lava2
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
				var/damage = round(src.nin*3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Fuuton Komu No Jutsu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Mizukage
	verb
		Lava()
			set category = "NinJutsu"
			set name = "Fuuton Komu no jutsu"
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
				view()<<"<font color=red><b><font face=verdana>[usr]: Fuuton Kumo No Jutsu!!"
				usr.chakra -= 5000
				var/obj/lava1/B = new /obj/lava1
				B.Gowner=usr
				B.nin = usr.nin
				B.loc = usr.loc
				B.Move_Delay=0
				usr.Chakragain()
				walk(B,usr.dir)
				sleep(25)
				usr.firing=0
				sleep(25)
				del(B)

mob/Raikage
	verb
		Liger(mob/M in get_step(src,NORTH))
			set category = "TaiJutsu"
			set name = "Liger Bomb"
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
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=yellow> Says: Liger Bomb!!!</FONT>"
				var/damage=usr.tai*2.5
				usr.firing=1
				if(M)
					M.overlays += 'Liger.dmi'
					usr.loc=locate(M.x,M.y+1,M.z)
					view()<<"[M] takes [damage] damage from [usr]'s Liger Bomb!"
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
					M.health -= damage
					M.Death(usr)
					M.overlays -= 'Liger.dmi'
				sleep(14)
				usr.firing=0
mob/Hokage
	verb
		Rebirth()
			set category = "GenJutsu"
			set name = "Infuin Kai"
			if(usr.Henge)
				usr<<"Not While Your In Henge"
				return
			if(usr.chakra <= 35000)
				usr<<"You dont have enough chakra!"
				return
			if(usr.Kaiten&&!usr.sphere)
				usr<<"Not Now"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(!usr.firing)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=blue> Says: Yin Seal Activate!! "
				usr.firing=1
				sleep(30)
				usr.overlays += 'firstgate.dmi'
				OMG
				if(usr.firing)
					usr.chakra -=25300
					usr.health +=35500
					if(usr.chakra <= 40099)
						usr.overlays -= 'firstgate.dmi'
						usr.firing=0
					else
						sleep(15)
						goto OMG
			else
				usr.firing = 0
				usr.overlays -= 'firstgate.dmi'
				usr<<"<B><font color = blue>Your Yin Seal ends"
mob/var/tmp/irons=0
mob/KazeK
	verb
		Iron() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Iron Sand"
			usr.Handseals()
			if(usr.firing) // If the mob's firing var is one...
				usr << "You must wait before using this."
				return
			if(usr.chakra <= 10000)
				usr<<"You dont have enough power!"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(!usr.handseals)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
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
			else // If the firing var isn't 1...
				if(usr.irons) return
				else
					view()<<"<font color=yellow>Now, behold the power of my Iron Sand, the Power of the Strongest Kazekage!"
					usr<<"You can now control Iron Sand"
					usr.irons=1
					sleep(20)
					usr.irons=0

obj/
mob/RockW
	verb
		RockW(mob/M in get_step(src,src.dir))
			set category = "TaiJutsu"
			set name = "Doton Chokajuugan no jutsu"
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
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Doton Chokajuugan no jutsu!!!</FONT>"
				usr<<"You increase the weight of [M]'s limbs slowing their movement!"
				M<<"The weight of your body was increased by [usr]'s Doton Chokajuugan no jutsu!"
				usr.firing=1
				M.health -= usr.tai*2.5
				M.Death(usr)
				M.Move_Delay = 10
				sleep(150)
				M.Move_Delay = usr.Savedspeed
				M<<"Your weight returns to normal!"
				usr<<"[M]'s weight returns to normal"
				usr.firing=0

mob/Reaper
	verb
		Reaper(mob/M in get_step(src,src.dir))
			set category = "NinJutsu"
			set name = "Shiki Fujin"
			usr.Handseals()
			if(M.inspike)
				return
			if(usr.firing)
				return
			if(M.sphere)
				return
			if(!M.PK)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
				return
			if(!usr.PK)
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
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=silver> Says: Now, prepare to be sealed away by the Reaper!!!</FONT>"
				var/damage=10000000
				usr.firing =1
				usr.Frozen = 1
				M.Frozen = 1
				usr.canattack = 0
				M.canattack = 0
				src.overlays+=/obj/Reaper
				sleep(15)
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=silver> Says: Reaper Death Seal!!!</FONT>"
				sleep(30)
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=silver> Says: May the will of fire continue to shine bright..."
				usr.firing=0
				usr.Frozen=0
				M.Frozen=0
				usr.canattack=1
				M.canattack=1
				M.health -= damage
				usr.health-= damage
				src.overlays-=/obj/Reaper
				M.Death(usr)
				usr.Death(M)

mob/Lariant
	verb
		Lariant(mob/M in get_step(src,src.dir))
			set category = "TaiJutsu"
			set name = "Lariat"
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
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=yellow> Says: LARIAT!!!</FONT>"
				var/damage=usr.tai*3
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from [usr]'s Lariat!"
				if(M)
					if(usr.dir==NORTH)
						usr.overlays += 'firstgate.dmi'
						step(M,NORTH)
						usr.loc=locate(M.x,M.y-1,M.z)
						sleep(1)
						step(M,NORTH)
						usr.loc=locate(M.x,M.y-1,M.z)
						sleep(1)
						step(M,NORTH)
						usr.loc=locate(M.x,M.y-1,M.z)
						sleep(1)
						step(M,NORTH)
						usr.loc=locate(M.x,M.y-1,M.z)
						sleep(1)
						step(M,NORTH)
						usr.loc=locate(M.x,M.y-1,M.z)
						sleep(1)
						step(M,NORTH)
						usr.loc=locate(M.x,M.y-1,M.z)
						sleep(1)
						step(M,NORTH)
						usr.loc=locate(M.x,M.y-1,M.z)
						sleep(1)
						step(M,NORTH)
						usr.loc=locate(M.x,M.y-1,M.z)
						sleep(1)
						step(M,NORTH)
						usr.loc=locate(M.x,M.y-1,M.z)
						sleep(1)
						step(M,NORTH)
						usr.loc=locate(M.x,M.y-1,M.z)
						sleep(1)
						usr.overlays -= 'firstgate.dmi'
					if(usr.dir==SOUTH)
						usr.overlays += 'firstgate.dmi'
						step(M,SOUTH)
						usr.loc=locate(M.x,M.y+1,M.z)
						sleep(1)
						step(M,SOUTH)
						usr.loc=locate(M.x,M.y+1,M.z)
						sleep(1)
						step(M,SOUTH)
						usr.loc=locate(M.x,M.y+1,M.z)
						sleep(1)
						step(M,SOUTH)
						usr.loc=locate(M.x,M.y+1,M.z)
						sleep(1)
						step(M,SOUTH)
						usr.loc=locate(M.x,M.y+1,M.z)
						sleep(1)
						step(M,SOUTH)
						usr.loc=locate(M.x,M.y+1,M.z)
						sleep(1)
						step(M,SOUTH)
						usr.loc=locate(M.x,M.y+1,M.z)
						sleep(1)
						step(M,SOUTH)
						usr.loc=locate(M.x,M.y+1,M.z)
						sleep(1)
						step(M,SOUTH)
						usr.loc=locate(M.x,M.y+1,M.z)
						sleep(1)
						step(M,SOUTH)
						usr.loc=locate(M.x,M.y+1,M.z)
						sleep(1)
						usr.overlays -= 'firstgate.dmi'
					if(usr.dir==EAST)
						usr.overlays += 'firstgate.dmi'
						step(M,EAST)
						usr.loc=locate(M.x-1,M.y,M.z)
						sleep(1)
						step(M,EAST)
						usr.loc=locate(M.x-1,M.y,M.z)
						sleep(1)
						step(M,EAST)
						usr.loc=locate(M.x-1,M.y,M.z)
						sleep(1)
						step(M,EAST)
						usr.loc=locate(M.x-1,M.y,M.z)
						sleep(1)
						step(M,EAST)
						usr.loc=locate(M.x-1,M.y,M.z)
						sleep(1)
						step(M,EAST)
						usr.loc=locate(M.x-1,M.y,M.z)
						sleep(1)
						step(M,EAST)
						usr.loc=locate(M.x-1,M.y,M.z)
						sleep(1)
						step(M,EAST)
						usr.loc=locate(M.x-1,M.y,M.z)
						sleep(1)
						step(M,EAST)
						usr.loc=locate(M.x-1,M.y,M.z)
						sleep(1)
						step(M,EAST)
						usr.loc=locate(M.x-1,M.y,M.z)
						sleep(1)
						usr.overlays -= 'firstgate.dmi'
					if(usr.dir==WEST)
						usr.overlays += 'firstgate.dmi'
						step(M,WEST)
						usr.loc=locate(M.x+1,M.y,M.z)
						sleep(1)
						step(M,WEST)
						usr.loc=locate(M.x+1,M.y,M.z)
						sleep(1)
						step(M,WEST)
						usr.loc=locate(M.x+1,M.y,M.z)
						sleep(1)
						step(M,WEST)
						usr.loc=locate(M.x+1,M.y,M.z)
						sleep(1)
						step(M,WEST)
						usr.loc=locate(M.x+1,M.y,M.z)
						sleep(1)
						step(M,WEST)
						usr.loc=locate(M.x+1,M.y,M.z)
						sleep(1)
						step(M,WEST)
						usr.loc=locate(M.x+1,M.y,M.z)
						sleep(1)
						step(M,WEST)
						usr.loc=locate(M.x+1,M.y,M.z)
						sleep(1)
						step(M,WEST)
						usr.loc=locate(M.x+1,M.y,M.z)
						sleep(1)
						step(M,WEST)
						usr.loc=locate(M.x+1,M.y,M.z)
						sleep(1)
						usr.overlays -= 'firstgate.dmi'
				sleep(30)
				usr.firing=0

obj
	rainw1
		icon = 'RainW.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state = "1"
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
				var/damage = round(src.nin*2.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [usr]'s Rain Wave for [damage] damage!!"
					M.Death(O)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	rainw2
		icon = 'RainW.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state = "2"
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
				var/damage = round(src.nin*2.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [usr]'s Rain Wave for [damage] damage!!"
					M.Death(O)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	rainw3
		icon = 'RainW.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state= "3"
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
				var/damage = round(src.nin*2.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [usr]'s Rain Wave for [damage] damage!!"
					M.Death(O)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

mob/Ikey
	verb
		RainW() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Rain Wave"
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
				usr.chakra -= 5000
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <font size=1><font face=verdana><b><font color=blue> Rain Wave!!"
				sleep(10)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/rainw1/B = new /obj/rainw1/
					var/obj/rainw2/A = new /obj/rainw2/
					var/obj/rainw3/C = new /obj/rainw3/
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
					var/obj/rainw1/B = new /obj/rainw1/
					var/obj/rainw2/A = new /obj/rainw2/
					var/obj/rainw3/C = new /obj/rainw3/
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
					var/obj/rainw1/B = new /obj/rainw1/
					var/obj/rainw2/A = new /obj/rainw2/
					var/obj/rainw3/C = new /obj/rainw3/
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
					var/obj/rainw1/B = new /obj/rainw1/
					var/obj/rainw2/A = new /obj/rainw2/
					var/obj/rainw3/C = new /obj/rainw3/
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
obj//ERROR
	tidal
		density=1
		icon='TidalW.dmi'
		icon_state=""
		New()
			..()
			spawn()
				src.delete()
		proc/delete()
			spawn(15)
				del(src)
obj//ERROR
	tidal2
		density=1
		icon='TidalW.dmi'
		icon_state="head"
		Move()
			..()
			var/obj/tidal/T = new /obj/tidal
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
				var/damage = round(src.nin*3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Tidal Wave for [damage] damage!!"
					sleep(3)
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Ikey
	verb
		Tidal()
			set category = "NinJutsu"
			set name = "Tidal Wave"
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
			else
				usr.firing=1
				view()<<"<font color=blue><b><font face=verdana>[usr]: Tidal Wave!!"
				usr.chakra -= 5000
				var/obj/tidal2/B = new /obj/tidal2
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

mob/SOrg
	verb
		Cursed(mob/M in get_step(src,src.dir))
			set category = "NinJutsu"
			set name = "Juinjutsu Cursed Mark"
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
			if(usr.chakra<=400000)
				usr<<"Not enough chakra!!"
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			else
				usr.firing=1
				view(src)<<"I will give you the gift of power young one."
				world<<"[usr] is giving [M] the Cursed Seal!"
				sleep(15)
				view(M)<<"[usr] bites the neck of [M]."
				M<<"You begin to feel an extreme amount of pain, Try to survive, your health is constantly draining!"
				M.firing=1
				M.bit=1
				M.GettingCurseSeal()
				M.CS = 1
				M.GOTCS=1
				sleep(60)
				view(M)<<"Surely a taste of the power we can give you will be more than enough to persuade you to join us."
				usr.firing=0

mob/Akatsuki
	verb
		Fuin(mob/M in get_step(src,src.dir))
			set category = "NinJutsu"
			set name = "Fuinjutsu Genryu Kyufujin"
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
			if(usr.chakra<=500000)
				usr<<"Not enough chakra!!"
				return
			if(usr.cap>=150000)
				usr<<"You cannot steal anymore Jinchuurikis"
				return
			if(usr.stole)
				usr<<"You must give away the current bijuu you have before sealing another"
				return
			else
				usr.random=rand(1,5)
				if(usr.random==1)
					if(M.health<=220000&&M.Ichibi||M.health<=220000&&M.Nibi||M.health<=220000&&M.Sanbi||M.health<=220000&&M.Yonbi||M.health<=220000&&M.Gobi||M.health<=220000&&M.Kyuubi||M.health<=220000&&M.Rokubi)
						view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=red> Says: Sealing Jutsu: Nine Phantom Dragons!!!</FONT>"
						usr.firing=1
						usr.Frozen=1
						usr.stole=1
						M.Frozen=1
						M.overlays += 'AkatJ.dmi'
						M.Rokubi=0
						M.Yonbi=0
						M.Ichibi=0
						M.Kyuubi=0
						M.Nibi=0
						M.Sanbi=0
						M.Gobi=0
						M.SaveK()
						sleep(30)
						M.Frozen=0
						usr.Frozen=0
						M.overlays -= 'AkatJ.dmi'
						world<<"<font size=1><font face=Tahoma><B><font color=red>[usr] takes [M]'s demon and seals it away!!"
						usr.chakra -= 450000
						M.chakra -= M.chakra/2
						M.health -= 300000
						M.Death(usr)
						usr.cap += 500
						usr.firing=0
						usr.SaveK()
						return
				if(usr.random==2)
					if(M.health<=220000&&M.Ichibi||M.health<=220000&&M.Nibi||M.health<=220000&&M.Sanbi||M.health<=220000&&M.Yonbi||M.health<=220000&&M.Gobi||M.health<=220000&&M.Kyuubi||M.health<=220000&&M.Rokubi)
						view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=red> Says: Sealing Jutsu: Nine Phantom Dragons!!!</FONT>"
						usr.firing=1
						usr.Frozen=1
						usr.stole=1
						M.Frozen=1
						M.overlays += 'AkatJ.dmi'
						M.Rokubi=0
						M.Yonbi=0
						M.Ichibi=0
						M.Kyuubi=0
						M.Nibi=0
						M.Sanbi=0
						M.Gobi=0
						M.SaveK()
						sleep(30)
						M.Frozen=0
						usr.Frozen=0
						M.overlays -= 'AkatJ.dmi'
						world<<"<font size=1><font face=Tahoma><B><font color=red>[usr] takes [M]'s demon and seals it away!!"
						usr.chakra -= 450000
						M.chakra -= M.chakra/2
						M.health -= 300000
						M.Death(usr)
						usr.cap += 500
						usr.firing=0
						usr.SaveK()
						return
				if(usr.random==3)
					if(M.health<=220000&&M.Ichibi||M.health<=220000&&M.Nibi||M.health<=220000&&M.Sanbi||M.health<=220000&&M.Yonbi||M.health<=220000&&M.Gobi||M.health<=220000&&M.Kyuubi||M.health<=220000&&M.Rokubi)
						view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=red> Says: Sealing Jutsu: Nine Phantom Dragons!!!</FONT>"
						usr.firing=1
						usr.Frozen=1
						M.Frozen=1
						M.overlays += 'AkatJ.dmi'
						M.SaveK()
						sleep(30)
						M.Frozen=0
						usr.Frozen=0
						M.overlays -= 'AkatJ.dmi'
						world<<"<font size=1><font face=Tahoma><B><font color=red>[usr] fails to take [M]'s demon..."
						usr.chakra -= 450000
						usr.firing=0
						usr.SaveK()
						return
				if(usr.random==4)
					if(M.health<=220000&&M.Ichibi||M.health<=220000&&M.Nibi||M.health<=220000&&M.Sanbi||M.health<=220000&&M.Yonbi||M.health<=220000&&M.Gobi||M.health<=220000&&M.Kyuubi||M.health<=220000&&M.Rokubi)
						view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=red> Says: Sealing Jutsu: Nine Phantom Dragons!!!</FONT>"
						usr.firing=1
						usr.Frozen=1
						M.Frozen=1
						M.overlays += 'AkatJ.dmi'
						M.SaveK()
						sleep(30)
						M.Frozen=0
						usr.Frozen=0
						M.overlays -= 'AkatJ.dmi'
						world<<"<font size=1><font face=Tahoma><B><font color=red>[usr] fails to take [M]'s demon..."
						usr.chakra -= 450000
						usr.firing=0
						usr.SaveK()
						return
				if(usr.random==5)
					if(M.health<=220000&&M.Ichibi||M.health<=220000&&M.Nibi||M.health<=220000&&M.Sanbi||M.health<=220000&&M.Yonbi||M.health<=220000&&M.Gobi||M.health<=220000&&M.Kyuubi||M.health<=220000&&M.Rokubi)
						view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=red> Says: Sealing Jutsu: Nine Phantom Dragons!!!</FONT>"
						usr.firing=1
						usr.Frozen=1
						M.Frozen=1
						M.overlays += 'AkatJ.dmi'
						M.SaveK()
						sleep(30)
						M.Frozen=0
						usr.Frozen=0
						M.overlays -= 'AkatJ.dmi'
						world<<"<font size=1><font face=Tahoma><B><font color=red>[usr] fails to take [M]'s demon..."
						usr.chakra -= 450000
						usr.firing=0
						usr.SaveK()
						return

mob/Akatsuki
	verb
		GiveD()
			set category = "NinJutsu"
			set name = "Choose Jinchuuriki"
			var/mob/M = input("Who do you wish to give demon to?","Jinchuuriki")as null|anything in players
			if(!M) return
			if(M==usr) return
			if(M.Ichibi||M.Nibi||M.Sanbi||M.Yonbi||M.Gobi||M.Kyuubi)
				usr<<"They already have a demon in their possession!!"
				return
			if(usr.stole==1)
				if(M.Village == "Akatsuki")
					usr<<"You cannot choose a member of Akatsuki!!"
					return
				if(M.Village == "Sound Organization")
					usr<<"You need to choose someone from a village!!"
					return
				if(M.Village == "Hebi")
					usr<<"You need to choose someone from a village!!"
					return
				if(M.Village == "None")
					usr<<"You need to choose someone from a village!!"
					return
				if(M.Village == "Leaf")
					M.Kyuubi=1
					M.bit=0
					M<<"You were given the power of the Kyuubi!!"
					usr<<"You gave [M] the power of the Kyuubi!!"
					world<<"[usr] gave [M] the Power of the Kyuubi!!"
					usr.stole=0
					usr.SaveK()
					M.SaveK()
					return
				if(M.Village == "Sand")
					M.Ichibi=1
					M.bit=0
					M<<"You were given the power of the Ichibi!!"
					usr<<"You gave [M] the power of the Ichibi!!"
					world<<"[usr] gave [M] the Power of the Ichibi!!"
					usr.stole=0
					usr.SaveK()
					M.SaveK()
					return
				if(M.Village == "Cloud")
					M.Nibi=1
					M.bit=0
					M<<"You were given the power of the Nibi!!"
					usr<<"You gave [M] the power of the Nibi!!"
					world<<"[usr] gave [M] the Power of the Nibi!!"
					usr.stole=0
					usr.SaveK()
					M.SaveK()
					return
				if(M.Village == "Mist")
					M.Sanbi=1
					M.bit=0
					M<<"You were given the power of the Sanbi!!"
					usr<<"You gave [M] the power of the Sanbi!!"
					world<<"[usr] gave [M] the Power of the Sanbi!!"
					usr.stole=0
					usr.SaveK()
					M.SaveK()
					return
				if(M.Village == "Rock")
					M.Yonbi=1
					M.bit=0
					M<<"You were given the power of the Yonbi!!"
					usr<<"You gave [M] the power of the Yonbi!!"
					world<<"[usr] gave [M] the Power of the Yonbi!!"
					usr.stole=0
					usr.SaveK()
					M.SaveK()
					return
			else
				usr<<"You need to steal a demon first!!"
obj
	Kirin
		icon = 'Kirin.dmi'
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere||M.tasamaki)
					return
				if(!M.PK)
					return
				var/damage = round(src.nin*1.3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Kirin for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	IBSkunai
		icon = 'IBS.dmi'
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(!M.PK)
					return
				if(M.counter)
					del(src)
					return
				var/damage = round(src.nin*1.4)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Kunai's for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)


mob/shurikenmove
	verb
		KageShuriken()
			set category="TaiJutsu"
			set name = "Kage Shuriken No Jutsu"
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra<=100)
				usr<<"Not enough chakra."
				return
			if(usr.Froze)
				usr<<"Your Frozen"
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
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			for(var/obj/Shuriken/S in view(10,usr))
				S.icon='kageshuriken.dmi'
				view(usr)<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Kage Shuriken No Jutsu!"
				usr.firing=1
				usr.chakra-=100
				usr.Chakragain()
				S.tai=usr.tai*1.7
				sleep(3)
				usr.firing=0
				for(var/obj/Shuriken/O in usr.contents)
					O.ammount-=1
					if(O.ammount<=0)
						del(O)

mob/shurikenmove
	verb
		KageKunai()
			set category="TaiJutsu"
			set name = "Kage Kunai No Jutsu"
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.chakra<=100)
				usr<<"Not enough chakra."
				return
			if(usr.caught)
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
			for(var/obj/Kunai/S in view(10,usr))
				S.icon='kagekunai.dmi'
				view(usr)<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Kage Kunai No Jutsu!"
				usr.firing=1
				usr.chakra-=100
				usr.Chakragain()
				S.tai=usr.tai*1.65
				sleep(3)
				usr.firing=0
				for(var/obj/Kunai/O in usr.contents)
					O.ammount-=1
					if(O.ammount<=0)
						del(O)


mob/Buyou
	verb
		Kagebuyou(mob/M in view(10))
			set category = "GenJutsu"
			set name = "Kage Konoha Buyou"
			if(usr.buoyu)
				return
			if(M==usr)
				return
			if(usr.Froze)
				usr<<"Your Frozen"
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
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.chakra<5)
				usr<<"You don´t have enough chakra."
				return
			if(M.PK==0)
				usr<<"NONPK ZONE."
				return
			if(usr.PK==0)
				usr<<"NONPK ZONE"
				return
			if(usr.jailtime)
				return
			var/nz = M.z
			var/nx = M.x
			var/ny = M.y
			usr.buoyu=1
			var/turf/T=locate(nx,ny+1,nz)
			var/turf/T2=locate(nx,ny-1,nz)
			var/turf/T3=locate(nx+1,ny,nz)
			var/turf/T4=locate(nx-1,ny,nz)
			if(T&&T2&&T3&&T4&&T.density&&T2.density&&T3.density&&T4.density)
				usr<<"Sorry you can´t go neither any sides of [M]"
				return
				usr.Gen()
				usr.Levelup()
			usr.chakra-=5
			if(M.dir==SOUTH)
				if(T.density==0)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx,ny+1,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			if(M.dir==NORTH)
				if(T2.density==0)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx,ny-1,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			if(M.dir==WEST)
				if(T3.density==0)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx+1,ny,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			if(M.dir==WEST)
				if(T4.density==0)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx-1,ny,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			if(M.dir==SOUTHWEST)
				if(T.density==0)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx+1,ny+1,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			if(M.dir==SOUTHEAST)
				if(T.density==0)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx-1,ny+1,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			if(M.dir==NORTHWEST)
				if(T.density==0)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx+1,ny-1,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			if(M.dir==NORTHEAST)
				if(T.density==0)
					flick("smoke2",usr)
					sleep(2)
					usr.loc=locate(nx-1,ny-1,nz)
					if(M.dir==SOUTH)
						usr.dir=SOUTH
					if(M.dir==NORTH)
						usr.dir=NORTH
					if(M.dir==EAST)
						usr.dir=EAST
					if(M.dir==WEST)
						usr.dir=WEST
					if(M.dir==NORTHEAST)
						usr.dir=NORTHEAST
					if(M.dir==NORTHWEST)
						usr.dir=NORTHWEST
					if(M.dir==SOUTHEAST)
						usr.dir=SOUTHEAST
					if(M.dir==SOUTHWEST)
						usr.dir=SOUTHWEST
					usr.buoyu=0
					return
			usr.buoyu=0



mob
	verb
		HengeNoJutsu(mob/M in oview(6))
			set category = "GenJutsu"
			set name = "Henge No Jutsu"
			usr.Handseals()
			if(usr.Henge)
				return
			if(usr.firing)
				return
			if(usr.Kaiten)
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
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
			if(usr.inso)
				return
			if(!usr.handseals)
				return
			else
				if(usr.hengeN>=100)
					view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Henge!"
					var/list/O = usr.overlays.Copy()
					usr.firing = 1
					usr.move = 0
					usr.chakra -= 10
					usr.Henge=1
					usr.Chakragain()
					usr.hengeN += 1
					usr.firing = 0
					usr.overlays = usr.overlays.Remove(usr.overlays)
					usr.icon = M.icon
					flick("smoke2",usr)
					usr.overlays += M.overlays
					XD
						sleep(170)
						switch(input("Do you wish to revert from Henge?","Henge",) in list("Yes","No"))
							if("Yes")
								usr.overlays = null
								usr.Henge = 0
								usr.firing=0
								usr.overlays = O.Copy()
								usr.icon = usr.Oicon
								usr.Gen()
								usr.Skills()
								return
							if("No")
								usr.chakra-=20
								usr.Gen()
								usr.Chakragain()
								usr.Skills()
								goto XD
				else
					view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Henge!"
					var/list/O = usr.overlays.Copy()
					usr.firing = 1
					usr.move = 0
					usr.chakra -= 10
					usr.Henge=1
					usr.hengeN += 1
					usr.move = 1
					usr.firing = 0
					usr.overlays = usr.overlays.Remove(usr.overlays)
					if(M)
						usr.icon = M.icon
					flick("smoke2",usr)
					usr.overlays += M.overlays
					sleep(170)
					usr.overlays = null
					usr.overlays += usr.hair
					usr.Henge = 0
					usr.overlays = O.Copy()
					usr.icon = usr.Oicon
					usr.random = rand(1,15)
					usr.Gen()
					usr.Skills()
mob/katon
	verb
		FireArmor()
			set category = "NinJutsu"
			set name = "Katon No Jutsu"
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
			if(!usr.Farmor&&!usr.firing)
				view()<<"<font color = red>[usr]: Katon No Jutsu!"
				usr.overlays += 'Farmor.dmi'
				usr.Farmor =1
				usr.nin = usr.nin*1.1
				fire
				if(usr.Farmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'Farmor.dmi'
						usr.Farmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto fire
			else if(usr.Farmor)
				usr.overlays -= 'Farmor.dmi'
				usr.Farmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the Katon No Jutsu."
mob/mist
	verb
		MistArmor()
			set category = "NinJutsu"
			set name = "Mist No Jutsu"
			if(usr.Henge)
				usr<<"Not While Your In Henge"
				return
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
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
			if(!usr.Marmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Mist Armor!"
				usr.overlays += 'mist.dmi'
				usr.Marmor =1
				usr.gen = usr.gen*1.1
				fire
				if(usr.Marmor)
					usr.chakra -=500
					if(usr.chakra <= 50)
						usr.overlays -= 'mist.dmi'
						usr.Marmor = 0
						usr.gen = usr.Mgen
						return
					else
						sleep(4)
						goto fire
			else if(usr.Marmor)
				usr.overlays -= 'mist.dmi'
				usr.Marmor =0
				usr.gen = usr.Mgen
				usr<<"You take down the Mist Armor."


mob/ice
	verb
		IceArmor()
			set category = "NinJutsu"
			set name = "Makyou Armor"
			if(usr.Henge)
				usr<<"Not While Your In Henge"
				return
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.firing)
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
			if(!usr.Iarmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Makyou Armor!"
				usr.overlays += 'Iarmor.dmi'
				usr.Iarmor =1
				usr.nin = usr.nin*1.1
				fire
				if(usr.Iarmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'Iarmor.dmi'
						usr.Iarmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto fire
			else if(usr.Iarmor)
				usr.overlays -= 'Iarmor.dmi'
				usr.Iarmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the Makyou Armor."

mob/suiton
	verb
		SuitonArmor()
			set category = "NinJutsu"
			set name = "Suiton No Jutsu"
			if(usr.Henge)
				usr<<"Not While Your In Henge"
				return
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.firing)
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
			if(usr.Warmor == 0&&!usr.firing)
				view()<<"<font color = blue>[usr]: Suiton No Jutsu!"
				usr.overlays += 'WaterStrom.dmi'
				usr.Warmor =1
				usr.nin = usr.nin*1.1
				fire
				if(usr.Warmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'WaterStrom.dmi'
						usr.Warmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto fire
			else if(usr.Warmor == 1)
				usr.overlays -= 'WaterStrom.dmi'
				usr.Warmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the Suiton No Jutsu."


mob/rai
	verb
		RaiArmor()
			set category = "NinJutsu"
			set name = "Rai No Jutsu"
			if(usr.Henge)
				usr<<"Not While Your In Henge"
				return
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.firing)
				usr<<"Not now."
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
			if(!usr.Larmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Rai No Jutsu!"
				usr.overlays += 'Larmor.dmi'
				usr.Larmor =1
				usr.nin = usr.nin*1.1
				fire
				if(usr.Larmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'Larmor.dmi'
						usr.Larmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto fire
			else if(usr.Larmor)
				usr.overlays -= 'Larmor.dmi'
				usr.Larmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the Rai No Jutsu."

mob/sound
	verb
		ZanArmor()
			set category = "NinJutsu"
			set name = "Zan No Jutsu"
			if(usr.Henge)
				usr<<"Not While Your In Henge"
				return
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.firing)
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
			if(!usr.Zarmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Zan No Jutsu!"
				usr.Zarmor =1
				usr.overlays += 'Zarmor.dmi'
				usr.gen = usr.gen*1.1
				fire
				if(usr.Zarmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.Zarmor = 0
						usr.overlays -= 'Zarmor.dmi'
						usr.gen = usr.Mgen
						return
					else
						sleep(4)
						goto fire
			else if(usr.Zarmor)
				usr.Zarmor =0
				usr.overlays -= 'Zarmor.dmi'
				usr.gen = usr.Mgen
				usr<<"You take down the Zan No Jutsu."

mob/proc/stoptsuki()
	hurt
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
		if(src.stop == 0)
			src.health -= times
			src<<"[dude] Tsukuyomi does [times] damage."
			dude<<"Tsukuyomi does [times]."
			sleep(20)
			goto hurt
		else
			return

mob
	verb//too fucking lazy so I'ma take it off this code even tho it's badly programmed :/
		Kawariminojutsu() // Verb used for firing the beam
			set category = "GenJutsu"
			set name = "Kawarimi no jutsu"
			usr.Handseals()
			if(usr.firing||usr.kawa||usr.Kaiten||usr.counter)
				return
			if(usr.inso)
				usr<<"Not while in Soutourou!"
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
			if(usr.chakra <= 5)
				usr<<"Not enough chakra."
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
			else
				if(usr.KawaN >= 12)
					var/list/O = usr.overlays.Copy()
					usr.firing = 1
					usr.KawaN += 1
					usr.move = 0
					usr.kawa = 1
					usr.chakra -= 50000
					sleep(1)
					usr.move = 1
					var/mob/L=new/mob/Klog
					L.name = usr.name
					L.icon = usr.icon
					L.dir=usr.dir
					L.health=99999999999
					L.overlays = usr.overlays
					L.loc=locate(usr.x,usr.y,usr.z)
					usr.overlays = usr.overlays.Remove(usr.overlays)
					usr.icon = 'invis.dmi'
					usr<<"Kawarimi No Jutsu!"
					usr.Chakragain()
					sleep(52)
					usr.icon = usr.Oicon
					usr.overlays = O.Copy()
					usr.overlays-='Bun.dmi'
					usr.overlays-='Bun.dmi'
					usr.overlays-='Bun.dmi'
					usr.overlays-='Bun.dmi'
					usr.overlays-='Bun.dmi'
					usr.kawa = 0
					L.overlays = L.overlays.Remove(L.overlays)
					L.icon = 'Landscapes.dmi'
					L.icon_state="Log"
					flick("smoke2",L)
					sleep(30)
					flick("smoke2",L)
					sleep(8)
					del(L)
					usr.random = rand(1,20)
					usr.ninexp+=rand(650,1000)
					usr.Nin()
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						var/list/O = usr.overlays.Copy()
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.move = 0
						usr.KawaN += 1
						usr.kawa = 1 // Disables the mob's movement
						usr.chakra -= 50000
						sleep(1)
						usr.move = 1
						var/mob/L=new/mob/Klog
						L.name = usr.name
						L.icon = usr.icon
						L.overlays = usr.overlays
						L.loc=locate(usr.x,usr.y,usr.z)
						usr.icon = 'invis.dmi' // Sets the mob's icon_state
						usr.overlays = usr.overlays.Remove(usr.overlays)
						sleep(52)
						usr.icon = usr.Oicon
						usr.overlays = O.Copy()
						usr.kawa = 0
						L.overlays = L.overlays.Remove(L.overlays)
						L.icon= 'Landscapes.dmi'
						L.icon_state = "Log"
						flick("smoke2",L)
						sleep(30)
						flick("smoke2",L)
						sleep(8)
						del(L)
						usr.random = rand(1,20)
						usr.ninexp+=rand(750,1650)
						usr.Nin()
			sleep(40)
			usr.kawa=0
mob
	Klog
		name = "Log"
		icon = 'Landscapes.dmi'
		icon_state= "Log"

mob
	verb/BunshinNoJutsu()
		set name = "Bunshin no jutsu"
		set desc = "Create a clone"
		set category = "GenJutsu"
		if(usr.firing||usr.Frozen||usr.caught||usr.captured||usr.inso||usr.Froze||usr.Kaiten||usr.counter||usr.resting||usr.meditating||usr.gate1||usr.gate2||usr.gate3||usr.gate4||usr.gate5||usr.gate6||usr.gate7||usr.gate8) return
		usr.Handseals()
		if(usr.chakra <= 10)
			usr << "Not enough chakra!"
			return
		if(usr.TestBunshinNo)
			sleep(10)
			usr.TestBunshinNo = 0
			return
		if(!usr.handseals) return
		else
			view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#c0c0c0>B</FONT><FONT COLOR=#b2b1ba>u</FONT><FONT COLOR=#a3a0b4>n</FONT><FONT COLOR=#9490ad>s</FONT><FONT COLOR=#857fa6>h</FONT><FONT COLOR=#756f9f>i</FONT><FONT COLOR=#665e99>n</FONT><FONT COLOR=#574e92> </FONT><FONT COLOR=#483d8b>N</FONT><FONT COLOR=#4d468c>o</FONT><FONT COLOR=#524e8d> </FONT><FONT COLOR=#57578d>J</FONT><FONT COLOR=#5d5f8e>u</FONT><FONT COLOR=#62688f>t</FONT><FONT COLOR=#677090>s</FONT><FONT COLOR=#6c7990>u</FONT><FONT COLOR=#708090>!</FONT>"
			usr.firing = 1
			usr.TestBunshinNo=1
			usr.KillBunshin()
			var/mob/npc/Bunshin/A = new /mob/npc/Bunshin
			var/mob/npc/Bunshin/B = new /mob/npc/Bunshin
			var/mob/npc/Bunshin/C = new /mob/npc/Bunshin
			usr.BunshinN += 1
			usr.Chakragain()
			usr.bunshin += 3
			if(A)
				A.original = usr
				A.icon = usr.icon
				A.name = "[usr]"
				A.overlays += usr.overlays
				A.loc = locate(usr.x+1, usr.y, usr.z)
				flick("smoke2",A)
				A.max_exp = 2
				A.exp = 2
				A.health = 1
			sleep(5)
			if(B)
				B.original = usr
				B.icon = usr.icon
				B.name = "[usr]"
				B.overlays += usr.overlays
				B.loc = locate(usr.x, usr.y+1, usr.z)
				flick("smoke2",B)
				B.max_exp = 2
				B.exp = 2
				B.health = 1
			sleep(5)
			if(C)
				C.original = usr
				C.icon = usr.icon
				C.name = "[usr]"
				C.overlays += usr.overlays
				C.loc = locate(usr.x-1, usr.y, usr.z)
				flick("smoke2",C)
				C.max_exp = 2
				C.exp = 2
				C.health = 1
			sleep(30)
			usr.firing=0
			usr.chakra -= 10
			usr.genexp+=rand(1250,2000)
			usr.Gen()
			sleep(500)
			del(A)
			del(B)
			del(C)
	/*		else
				usr.random = rand (1,4)
				if(usr.random == 1||usr.random == 4)
					view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#c0c0c0>B</FONT><FONT COLOR=#b2b1ba>u</FONT><FONT COLOR=#a3a0b4>n</FONT><FONT COLOR=#9490ad>s</FONT><FONT COLOR=#857fa6>h</FONT><FONT COLOR=#756f9f>i</FONT><FONT COLOR=#665e99>n</FONT><FONT COLOR=#574e92> </FONT><FONT COLOR=#483d8b>N</FONT><FONT COLOR=#4d468c>o</FONT><FONT COLOR=#524e8d> </FONT><FONT COLOR=#57578d>J</FONT><FONT COLOR=#5d5f8e>u</FONT><FONT COLOR=#62688f>t</FONT><FONT COLOR=#677090>s</FONT><FONT COLOR=#6c7990>u</FONT><FONT COLOR=#708090>!</FONT>"
					usr.firing = 1
					usr.TestBunshinNo=1
					var/mob/npc/Bunshin/A = new /mob/npc/Bunshin
					var/mob/npc/Bunshin/B = new /mob/npc/Bunshin
					usr.KillBunshin()
					usr.BunshinN += 1
					usr.Chakragain()
					usr.bunshin += 2
					if(A)
						A.original = usr
						A.icon = usr.icon
						A.name = "[usr]"
						A.overlays += usr.overlays
						A.loc = locate(usr.x+1, usr.y, usr.z)
						flick("smoke2",A)
						A.max_exp = 2
						A.exp = 2
						A.health = 1
					sleep(5)
					if(B)
						B.original = usr
						B.icon = usr.icon
						B.name = "[usr]"
						B.overlays += usr.overlays
						B.loc = locate(usr.x-1, usr.y, usr.z)
						flick("smoke2",B)
						B.max_exp = 2
						B.exp = 2
						B.health = 1
					sleep(55)
					usr.TestBunshinNo=0
					usr.firing=0
					usr.chakra -= 10
					usr.genexp+=rand(750,1250)
					usr.Gen()
					sleep(500)
					del(A)
					del(B)*/

obj
	bunshins
		KageBunshinnojutsu//being worked on dont use
			verb/KageBunshinNoJutsu()
				set name = "Kage Bunshin no jutsu"
				set desc = "Create a clone that can attack"
				set category = "NinJutsu"
				usr.Handseals()
				if(usr.firing)
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
				if(usr.chakra <= 15)
					usr << "Not enough chakra!"
					return
				if(usr.inso)
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
				if(usr.Kaiten||usr.counter)
					return
				if(usr.gate1)
					return
				if(usr.gate2)
					return
				if(usr.gate3)
					return
				if(usr.gate4)
					return
				if(usr.gate5)
					return
				if(usr.gate6)
					return
				if(usr.gate7)
					return
				if(usr.gate8)
					return
				if(!usr.handseals)
					return
				else
					if(usr.KbunshinN >= 50)
						usr.firing = 1
						usr.KillBunshin()
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500>K</FONT><FONT COLOR=#ff4f00>a</FONT><FONT COLOR=#ff5800>g</FONT><FONT COLOR=#ff6200>e</FONT><FONT COLOR=#ff6c00> </FONT><FONT COLOR=#ff7600>B</FONT><FONT COLOR=#ff7f00>u</FONT><FONT COLOR=#ff8900>n</FONT><FONT COLOR=#ff9300>s</FONT><FONT COLOR=#ff9c00>h</FONT><FONT COLOR=#ffa500>i</FONT><FONT COLOR=#f3a30d>n</FONT><FONT COLOR=#e69f1a> </FONT><FONT COLOR=#d99c28>N</FONT><FONT COLOR=#cc9835>o</FONT><FONT COLOR=#bf9542> </FONT><FONT COLOR=#b1914f>J</FONT><FONT COLOR=#a48e5c>u</FONT><FONT COLOR=#978a69>t</FONT><FONT COLOR=#8a8777>s</FONT><FONT COLOR=#7d8384>u</FONT><FONT COLOR=#708090>!</FONT>"
						var/mob/npc/Bunshin/K = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/L = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/M = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/N = new /mob/npc/KBunshin
						usr.KbunshinN += 1
						usr.bunshin += 4
						usr.Chakragain()
						if(K)
							K.name = "[usr.name]"
							K.original = usr
							K.icon = usr.icon
							K.overlays += usr.overlays
							K.loc = locate(usr.x-1, usr.y, usr.z)
							flick("smoke2",K)
							K.max_exp = 2
							K.exp = 2
							K.tai = usr.tai/2
							K.health = 1
						sleep(5)
						if(L)
							L.name = "[usr.name]"
							L.original = usr
							L.icon = usr.icon
							L.overlays += usr.overlays
							L.loc = locate(usr.x-2, usr.y, usr.z)
							flick("smoke2",L)
							L.max_exp = 2
							L.exp = 2
							L.tai = usr.tai/2
							L.health = 1
						sleep(5)
						if(M)
							M.name = "[usr.name]"
							M.original = usr
							M.icon = usr.icon
							M.overlays += usr.overlays
							M.loc = locate(usr.x+1, usr.y, usr.z)
							flick("smoke2",M)
							M.max_exp = 2
							M.exp = 2
							M.tai = usr.tai/2
							M.health = 1
						sleep(5)
						if(N)
							N.name = "[usr.name]"
							N.original = usr
							N.icon = usr.icon
							N.overlays += usr.overlays
							N.loc = locate(usr.x+2, usr.y, usr.z)
							flick("smoke2",N)
							N.max_exp = 2
							N.exp = 2
							N.tai = usr.tai/2
							N.health = 1
						sleep(14)
						usr.firing=0
						usr.chakra -= 15
						usr.ninexp+=rand(750,950)
						usr.Nin()
						sleep(500)
						del(K)
						del(L)
						del(M)
						del(N)
					else
						usr.random = rand (1,4)
						if(usr.random == 1||usr.random == 4)
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500>K</FONT><FONT COLOR=#ff4f00>a</FONT><FONT COLOR=#ff5800>g</FONT><FONT COLOR=#ff6200>e</FONT><FONT COLOR=#ff6c00> </FONT><FONT COLOR=#ff7600>B</FONT><FONT COLOR=#ff7f00>u</FONT><FONT COLOR=#ff8900>n</FONT><FONT COLOR=#ff9300>s</FONT><FONT COLOR=#ff9c00>h</FONT><FONT COLOR=#ffa500>i</FONT><FONT COLOR=#f3a30d>n</FONT><FONT COLOR=#e69f1a> </FONT><FONT COLOR=#d99c28>N</FONT><FONT COLOR=#cc9835>o</FONT><FONT COLOR=#bf9542> </FONT><FONT COLOR=#b1914f>J</FONT><FONT COLOR=#a48e5c>u</FONT><FONT COLOR=#978a69>t</FONT><FONT COLOR=#8a8777>s</FONT><FONT COLOR=#7d8384>u</FONT><FONT COLOR=#708090>!</FONT>"
							usr.firing = 1
							usr.KillBunshin()
							var/mob/npc/Bunshin/K = new /mob/npc/KBunshin
							var/mob/npc/Bunshin/M = new /mob/npc/KBunshin
							usr.KbunshinN += 1
							usr.Chakragain()
							usr.bunshin += 2
							sleep(5)
							if(K)
								K.name = "[usr.name]"
								K.original = usr
								K.icon = usr.icon
								K.overlays += usr.overlays
								K.loc = locate(usr.x-1, usr.y, usr.z)
								flick("smoke2",K)
								K.max_exp = 2
								K.exp = 2
								K.tai = usr.tai/2
								K.health = 1
							sleep(5)
							if(M)
								M.name = "[usr.name]"
								M.original = usr
								M.icon = usr.icon
								M.overlays += usr.overlays
								M.loc = locate(usr.x+1, usr.y, usr.z)
								flick("smoke2",M)
								M.max_exp = 2
								M.exp = 2
								M.tai = usr.tai/2
								M.health = 1
							sleep(14)
							usr.firing=0
							usr.chakra -= 15
							usr.ninexp+=rand(750,1250)
							usr.Nin()
							sleep(500)
							del(K)
							del(M)


obj
	bunshins
		TajuuKageBunshinNoJutsu //being worked on dont use
			verb/TajuuKageBunshinNoJutsu()
				set name = "Tajuu Kage Bunshin No Jutsu"
				set desc = "Create a clone that can attack"
				set category = "NinJutsu"
				usr.Handseals()
				if(usr.firing)
					return
				if(usr.caught)
					usr<<"Your captured"
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.chakra <= 15)
					usr << "Not enough chakra!"
					return
				if(usr.inso)
					return
				if(usr.Froze)
					usr<<"Your Frozen"
					return
				if(usr.Frozen)
					usr<<"Your Frozen"
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
				if(usr.Kaiten||usr.counter)
					return
				if(usr.gate1)
					return
				if(usr.gate2)
					return
				if(usr.gate3)
					return
				if(usr.gate4)
					return
				if(usr.gate5)
					return
				if(usr.gate6)
					return
				if(usr.gate7)
					return
				if(usr.gate8)
					return
				if(!usr.handseals)
					return
				else
					if(usr.TbunshinN >= 50)
						usr.firing = 1
						usr.KillBunshin()
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500>Tajuu Kage Bunshin No Jutsu!</FONT>"
						var/mob/npc/Bunshin/A = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/B = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/C = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/D = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/E = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/F = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/G = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/H = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/I = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/J = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/K = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/L = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/M = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/N = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/O = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/P = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/Q = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/R = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/S = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/T = new /mob/npc/KBunshin
						var/mob/npc/Bunshin/U = new /mob/npc/KBunshin
						usr.TbunshinN += 1
						usr.bunshin += 21
						usr.Chakragain()
						if(A)
							A.name = "[usr.name]"
							A.original = usr
							A.icon = usr.icon
							A.overlays += usr.overlays
							A.loc = locate(usr.x-1, usr.y, usr.z)
							flick("smoke2",A)
							A.max_exp = 2
							A.exp = 2
							A.tai = usr.tai/2
							A.health = 1

						if(B)
							B.name = "[usr.name]"
							B.original = usr
							B.icon = usr.icon
							B.overlays += usr.overlays
							B.loc = locate(usr.x-2, usr.y, usr.z)
							flick("smoke2",B)
							B.max_exp = 2
							B.exp = 2
							B.tai = usr.tai/2
							B.health = 1

						if(C)
							C.name = "[usr.name]"
							C.original = usr
							C.icon = usr.icon
							C.overlays += usr.overlays
							C.loc = locate(usr.x+1, usr.y, usr.z)
							flick("smoke2",C)
							C.max_exp = 2
							C.exp = 2
							C.tai = usr.tai/2
							C.health = 1

						if(D)
							D.name = "[usr.name]"
							D.original = usr
							D.icon = usr.icon
							D.overlays += usr.overlays
							D.loc = locate(usr.x+2, usr.y, usr.z)
							flick("smoke2",D)
							D.max_exp = 2
							D.exp = 2
							D.tai = usr.tai/2
							D.health = 1

						if(E)
							E.name = "[usr.name]"
							E.original = usr
							E.icon = usr.icon
							E.overlays += usr.overlays
							E.loc = locate(usr.x+3, usr.y, usr.z)
							flick("smoke2",E)
							E.max_exp = 2
							E.exp = 2
							E.tai = usr.tai/2
							E.health = 1

						if(F)
							F.name = "[usr.name]"
							F.original = usr
							F.icon = usr.icon
							F.overlays += usr.overlays
							F.loc = locate(usr.x-3, usr.y, usr.z)
							flick("smoke2",F)
							F.max_exp = 2
							F.exp = 2
							F.tai = usr.tai/2
							F.health = 1

						if(G)
							G.name = "[usr.name]"
							G.original = usr
							G.icon = usr.icon
							G.overlays += usr.overlays
							G.loc = locate(usr.x+4, usr.y, usr.z)
							flick("smoke2",G)
							G.max_exp = 2
							G.exp = 2
							G.tai = usr.tai/2
							G.health = 1

						if(H)
							H.name = "[usr.name]"
							H.original = usr
							H.icon = usr.icon
							H.overlays += usr.overlays
							H.loc = locate(usr.x-4, usr.y, usr.z)
							flick("smoke2",H)
							H.max_exp = 2
							H.exp = 2
							H.tai = usr.tai/2
							H.health = 1

						if(I)
							I.name = "[usr.name]"
							I.original = usr
							I.icon = usr.icon
							I.overlays += usr.overlays
							I.loc = locate(usr.x+5, usr.y, usr.z)
							flick("smoke2",I)
							I.max_exp = 2
							I.exp = 2
							I.tai = usr.tai/2
							I.health = 1

						if(J)
							J.name = "[usr.name]"
							J.original = usr
							J.icon = usr.icon
							J.overlays += usr.overlays
							J.loc = locate(usr.x-5, usr.y, usr.z)
							flick("smoke2",J)
							J.max_exp = 2
							J.exp = 2
							J.tai = usr.tai/2
							J.health = 1

						if(K)
							K.name = "[usr.name]"
							K.original = usr
							K.icon = usr.icon
							K.overlays += usr.overlays
							K.loc = locate(usr.x+1, usr.y+1, usr.z)
							flick("smoke2",K)
							K.max_exp = 2
							K.exp = 2
							K.tai = usr.tai/2
							K.health = 1

						if(L)
							L.name = "[usr.name]"
							L.original = usr
							L.icon = usr.icon
							L.overlays += usr.overlays
							L.loc = locate(usr.x-1, usr.y+1, usr.z)
							flick("smoke2",L)
							L.max_exp = 2
							L.exp = 2
							L.tai = usr.tai/2
							L.health = 1

						if(M)
							M.name = "[usr.name]"
							M.original = usr
							M.icon = usr.icon
							M.overlays += usr.overlays
							M.loc = locate(usr.x+2, usr.y+1, usr.z)
							flick("smoke2",M)
							M.max_exp = 2
							M.exp = 2
							M.tai = usr.tai/2
							M.health = 1

						if(N)
							N.name = "[usr.name]"
							N.original = usr
							N.icon = usr.icon
							N.overlays += usr.overlays
							N.loc = locate(usr.x-2, usr.y+1, usr.z)
							flick("smoke2",N)
							N.max_exp = 2
							N.exp = 2
							N.tai = usr.tai/2
							N.health = 1

						if(O)
							O.name = "[usr.name]"
							O.original = usr
							O.icon = usr.icon
							O.overlays += usr.overlays
							O.loc = locate(usr.x+3, usr.y+1, usr.z)
							flick("smoke2",O)
							O.max_exp = 2
							O.exp = 2
							O.tai = usr.tai/2
							O.health = 1

						if(P)
							P.name = "[usr.name]"
							P.original = usr
							P.icon = usr.icon
							P.overlays += usr.overlays
							P.loc = locate(usr.x-3, usr.y+1, usr.z)
							flick("smoke2",P)
							P.max_exp = 2
							P.exp = 2
							P.tai = usr.tai/2
							P.health = 1

						if(Q)
							Q.name = "[usr.name]"
							Q.original = usr
							Q.icon = usr.icon
							Q.overlays += usr.overlays
							Q.loc = locate(usr.x+4, usr.y+1, usr.z)
							flick("smoke2",Q)
							Q.max_exp = 2
							Q.exp = 2
							Q.tai = usr.tai/2
							Q.health = 1

						if(R)
							R.name = "[usr.name]"
							R.original = usr
							R.icon = usr.icon
							R.overlays += usr.overlays
							R.loc = locate(usr.x-4, usr.y+1, usr.z)
							flick("smoke2",R)
							R.max_exp = 2
							R.exp = 2
							R.tai = usr.tai/2
							R.health = 1

						if(S)
							S.name = "[usr.name]"
							S.original = usr
							S.icon = usr.icon
							S.overlays += usr.overlays
							S.loc = locate(usr.x+5, usr.y+1, usr.z)
							flick("smoke2",S)
							S.max_exp = 2
							S.exp = 2
							S.tai = usr.tai/2
							S.health = 1

						if(T)
							T.name = "[usr.name]"
							T.original = usr
							T.icon = usr.icon
							T.overlays += usr.overlays
							T.loc = locate(usr.x-5, usr.y+1, usr.z)
							flick("smoke2",T)
							T.max_exp = 2
							T.exp = 2
							T.tai = usr.tai/2
							T.health = 1

						if(U)
							U.name = "[usr.name]"
							U.original = usr
							U.icon = usr.icon
							U.overlays += usr.overlays
							U.loc = locate(usr.x, usr.y+1, usr.z)
							flick("smoke2",U)
							U.max_exp = 2
							U.exp = 2
							U.tai = usr.tai/2
							U.health = 1
						usr.firing=0
						usr.chakra -= 15
						usr.ninexp+=rand(650,750)
						usr.Nin()
						sleep(600)
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
						del(M)
						del(N)
						del(O)
						del(P)
						del(Q)
						del(R)
						del(S)
						del(T)
						del(U)
					else
						usr.random = rand (1,4)
						if(usr.random == 1||usr.random == 4)
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500>Tajuu Kage Bunshin No Jutsu!</FONT>"
							usr.firing = 1
							usr.KillBunshin()
							var/mob/npc/Bunshin/K = new /mob/npc/KBunshin
							var/mob/npc/Bunshin/L = new /mob/npc/KBunshin
							var/mob/npc/Bunshin/M = new /mob/npc/KBunshin
							var/mob/npc/Bunshin/N = new /mob/npc/KBunshin
							usr.TbunshinN += 1
							usr.bunshin += 4
							usr.Chakragain()
							if(K)
								K.name = "[usr.name]"
								K.original = usr
								K.icon = usr.icon
								K.overlays += usr.overlays
								K.loc = locate(usr.x-1, usr.y, usr.z)
								flick("smoke2",K)
								K.max_exp = 2
								K.exp = 2
								K.tai = usr.tai/2
								K.health = 1
							sleep(5)
							if(L)
								L.name = "[usr.name]"
								L.original = usr
								L.icon = usr.icon
								L.overlays += usr.overlays
								L.loc = locate(usr.x-2, usr.y, usr.z)
								flick("smoke2",L)
								L.max_exp = 2
								L.exp = 2
								L.tai = usr.tai/2
								L.health = 1
							sleep(5)
							if(M)
								M.name = "[usr.name]"
								M.original = usr
								M.icon = usr.icon
								M.overlays += usr.overlays
								M.loc = locate(usr.x+1, usr.y, usr.z)
								flick("smoke2",M)
								M.max_exp = 2
								M.exp = 2
								M.tai = usr.tai/2
								M.health = 1
							sleep(5)
							if(N)
								N.name = "[usr.name]"
								N.original = usr
								N.icon = usr.icon
								N.overlays += usr.overlays
								N.loc = locate(usr.x+2, usr.y, usr.z)
								flick("smoke2",N)
								N.max_exp = 2
								N.exp = 2
								N.tai = usr.tai/2
								N.health = 1
							sleep(14)
							usr.firing=0
							usr.chakra -= 15
							usr.ninexp+=rand(750,1250)
							usr.Nin()
							sleep(500)
							del(K)
							del(L)
							del(M)
							del(N)

mob/katon
	verb
		KatonHousenka() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Katon Housenka No Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten||usr.counter)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.inso)
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
			if(usr.chakra <= 20)
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
			else
				if(usr.Katon2N >= 40)
					if(usr.dir==NORTHWEST)
						usr<<"You can't face a diagnol and use this move"
						return
					if(usr.dir==SOUTHWEST)
						usr<<"You can't face a diagnol and use this move"
						return
					if(usr.dir==NORTHEAST)
						usr<<"You can't face a diagnol and use this move"
						return
					if(usr.dir==SOUTHEAST)
						usr<<"You can't face a diagnol and use this move"
						return
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.Katon2N += 1
					usr.chakra -= 100
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500>K</FONT><FONT COLOR=#f44a0c>a</FONT><FONT COLOR=#e84f18>t</FONT><FONT COLOR=#dc5424>o</FONT><FONT COLOR=#d05930>n</FONT><FONT COLOR=#c45e3c>:</FONT><FONT COLOR=#b86349> </FONT><FONT COLOR=#ac6855>H</FONT><FONT COLOR=#a06d61>o</FONT><FONT COLOR=#94726d>u</FONT><FONT COLOR=#887779>s</FONT><FONT COLOR=#7c7c85>e</FONT><FONT COLOR=#708090>n</FONT><FONT COLOR=#727685>k</FONT><FONT COLOR=#756c79>a</FONT><FONT COLOR=#77616d> </FONT><FONT COLOR=#795661>N</FONT><FONT COLOR=#7c4b55>o</FONT><FONT COLOR=#7e4149> </FONT><FONT COLOR=#80363c>J</FONT><FONT COLOR=#832b30>u</FONT><FONT COLOR=#852024>t</FONT><FONT COLOR=#871618>s</FONT><FONT COLOR=#8a0b0c>u</FONT><FONT COLOR=#8b0000>!</FONT>"
					var/obj/katonG/D = new /obj/katonG
					var/obj/katonG/S = new /obj/katonG
					var/obj/katonG/K = new /obj/katonG
					var/obj/katonG/L = new /obj/katonG
					var/obj/katonG/N = new /obj/katonG
					usr.Chakragain()
					if(K)
						K.loc = usr.loc
						K.nin=usr.nin
						K.name="[usr]"
						K.Move_Delay=0
						K.Gowner=usr
						walk(K,usr.dir)
					sleep(6)
					if(D)
						D.loc = usr.loc
						if(usr.dir==NORTH)
							D.x-=1
						if(usr.dir==SOUTH)
							D.x+=1
						if(usr.dir==WEST)
							D.y+=1
						if(usr.dir==EAST)
							D.y-=1
						D.nin=usr.nin
						D.name="[usr]"
						D.Move_Delay=0
						D.Gowner=usr
						walk(D,usr.dir)
					sleep(6)
					if(L)
						L.loc = usr.loc
						if(usr.dir==NORTH)
							L.x+=1
						if(usr.dir==SOUTH)
							L.x-=1
						if(usr.dir==WEST)
							L.y-=1
						if(usr.dir==EAST)
							L.y+=1
						L.Move_Delay=0
						L.nin=usr.nin
						L.name="[usr]"
						L.Gowner=usr
						walk(L,usr.dir)
					sleep(13)
					if(S)
						S.loc = usr.loc
						if(usr.dir==NORTH)
							S.x+=1
						if(usr.dir==SOUTH)
							S.x-=1
						if(usr.dir==WEST)
							S.y-=1
						if(usr.dir==EAST)
							S.y+=1
						S.Move_Delay=0
						S.nin=usr.nin
						S.name="[usr]"
						S.Gowner=usr
						walk(S,usr.dir)
					sleep(5)
					if(N)
						N.loc = usr.loc
						if(usr.dir==NORTH)
							N.x-=1
						if(usr.dir==SOUTH)
							N.x+=1
						if(usr.dir==WEST)
							N.y+=1
						if(usr.dir==EAST)
							N.y-=1
						N.Move_Delay=0
						N.nin=usr.nin
						N.name="[usr]"
						N.Gowner=usr
						walk(N,usr.dir)
					sleep(10)
					usr.firing = 0
					sleep(21)
					del(D)
					del(S)
					del(K)
					del(L)
					del(N)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
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
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						if(usr.dir==NORTHWEST)
							usr<<"You can't face a diagnol and use this move"
							return
						if(usr.dir==SOUTHWEST)
							usr<<"You can't face a diagnol and use this move"
							return
						if(usr.dir==NORTHEAST)
							usr<<"You can't face a diagnol and use this move"
							return
						if(usr.dir==SOUTHEAST)
							usr<<"You can't face a diagnol and use this move"
							return
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.chakra -= 20
						usr.Katon2N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500>K</FONT><FONT COLOR=#f44a0c>a</FONT><FONT COLOR=#e84f18>t</FONT><FONT COLOR=#dc5424>o</FONT><FONT COLOR=#d05930>n</FONT><FONT COLOR=#c45e3c>:</FONT><FONT COLOR=#b86349> </FONT><FONT COLOR=#ac6855>H</FONT><FONT COLOR=#a06d61>o</FONT><FONT COLOR=#94726d>u</FONT><FONT COLOR=#887779>s</FONT><FONT COLOR=#7c7c85>e</FONT><FONT COLOR=#708090>n</FONT><FONT COLOR=#727685>k</FONT><FONT COLOR=#756c79>a</FONT><FONT COLOR=#77616d> </FONT><FONT COLOR=#795661>N</FONT><FONT COLOR=#7c4b55>o</FONT><FONT COLOR=#7e4149> </FONT><FONT COLOR=#80363c>J</FONT><FONT COLOR=#832b30>u</FONT><FONT COLOR=#852024>t</FONT><FONT COLOR=#871618>s</FONT><FONT COLOR=#8a0b0c>u</FONT><FONT COLOR=#8b0000>!</FONT>"
						var/obj/katonG/D = new /obj/katonG
						var/obj/katonG/S = new /obj/katonG
						var/obj/katonG/K = new /obj/katonG
						var/obj/katonG/L = new /obj/katonG
						usr.Chakragain()
						var/obj/katonG/N = new /obj/katonG
						if(K)
							K.loc = usr.loc
							K.nin=usr.nin
							K.name="[usr]"
							K.Move_Delay=0
							K.Gowner=usr
							walk(K,usr.dir)
						sleep(6)
						if(D)
							D.loc = usr.loc
							if(usr.dir==NORTH)
								D.x-=1
							if(usr.dir==SOUTH)
								D.x+=1
							if(usr.dir==WEST)
								D.y+=1
							if(usr.dir==EAST)
								D.y-=1
							D.nin=usr.nin
							D.name="[usr]"
							D.Move_Delay=0
							D.Gowner=usr
							walk(D,usr.dir)
						sleep(6)
						if(L)
							L.loc = usr.loc
							if(usr.dir==NORTH)
								L.x+=1
							if(usr.dir==SOUTH)
								L.x-=1
							if(usr.dir==WEST)
								L.y-=1
							if(usr.dir==EAST)
								L.y+=1
							L.Move_Delay=0
							L.nin=usr.nin
							L.name="[usr]"
							L.Gowner=usr
							walk(L,usr.dir)
						sleep(13)
						if(S)
							S.loc = usr.loc
							if(usr.dir==NORTH)
								S.x+=1
							if(usr.dir==SOUTH)
								S.x-=1
							if(usr.dir==WEST)
								S.y-=1
							if(usr.dir==EAST)
								S.y+=1
							S.Move_Delay=0
							S.nin=usr.nin
							S.name="[usr]"
							S.Gowner=usr
							walk(S,usr.dir)
						sleep(5)
						if(N)
							N.loc = usr.loc
							if(usr.dir==NORTH)
								N.x-=1
							if(usr.dir==SOUTH)
								N.x+=1
							if(usr.dir==WEST)
								N.y+=1
							if(usr.dir==EAST)
								N.y-=1
							N.Move_Delay=0
							N.nin=usr.nin
							N.name="[usr]"
							N.Gowner=usr
							walk(N,usr.dir)
						sleep(10)
						usr.firing = 0
						sleep(21)
						del(D)
						del(S)
						del(K)
						del(L)
						del(N)
						if(usr.Mnin <= usr.cap)
							usr.random = rand(1,5)
							if(random == 5||random==1)
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
							usr.random = rand(1,5)
							if(random == 5||random==1)
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
					usr<<"You failed to use Katon Housenka"

mob/katon
	verb
		KatonKaryuuEndan(mob/M in oview(usr)) // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Katon Karyuu Endan"
			usr.Handseals()
			if(usr.firing||usr.Kaiten||usr.counter) // If the mob's firing var is one...
				return
			if(!M:PK)
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
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				if(usr.Katon3N >= 100)
					usr.firing = 24 // Sets the firing var to 1, so he cant fire another beam
					usr.Katon3N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#8b0000>K</FONT><FONT COLOR=#980000>a</FONT><FONT COLOR=#a50000>t</FONT><FONT COLOR=#b20000>o</FONT><FONT COLOR=#bf0000>n</FONT><FONT COLOR=#cc0000>:</FONT><FONT COLOR=#d90000> </FONT><FONT COLOR=#e60000>K</FONT><FONT COLOR=#f30000>a</FONT><FONT COLOR=#ff0000>r</FONT><FONT COLOR=#fc0206>y</FONT><FONT COLOR=#f9040c>u</FONT><FONT COLOR=#f50612>u</FONT><FONT COLOR=#f20818> </FONT><FONT COLOR=#ee0b1f>E</FONT><FONT COLOR=#ea0d25>n</FONT><FONT COLOR=#e70f2b>d</FONT><FONT COLOR=#e31131>a</FONT><FONT COLOR=#e01337>n</FONT><FONT COLOR=#dc143c>!</FONT>"
					var/obj/katonEndan/K = new /obj/katonEndan
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
						usr.Katon3N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#8b0000>K</FONT><FONT COLOR=#980000>a</FONT><FONT COLOR=#a50000>t</FONT><FONT COLOR=#b20000>o</FONT><FONT COLOR=#bf0000>n</FONT><FONT COLOR=#cc0000>:</FONT><FONT COLOR=#d90000> </FONT><FONT COLOR=#e60000>K</FONT><FONT COLOR=#f30000>a</FONT><FONT COLOR=#ff0000>r</FONT><FONT COLOR=#fc0206>y</FONT><FONT COLOR=#f9040c>u</FONT><FONT COLOR=#f50612>u</FONT><FONT COLOR=#f20818> </FONT><FONT COLOR=#ee0b1f>E</FONT><FONT COLOR=#ea0d25>n</FONT><FONT COLOR=#e70f2b>d</FONT><FONT COLOR=#e31131>a</FONT><FONT COLOR=#e01337>n</FONT><FONT COLOR=#dc143c>!</FONT>"
						var/obj/katonEndan/K = new /obj/katonEndan
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
						usr<<"You failed to use Katon Karyuu Endan"





mob/Suiton
	verb
		SuitonDaibakufunoJutsu() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Suiton Daibakufu no Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
				return
			if(!usr.PK)
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
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>S</FONT><FONT COLOR=#90d1ec>u</FONT><FONT COLOR=#98d4ed>i</FONT><FONT COLOR=#a1d7ee>t</FONT><FONT COLOR=#a9daee>o</FONT><FONT COLOR=#b2ddef>n</FONT><FONT COLOR=#bae0f0>:</FONT><FONT COLOR=#c3e4f1> </FONT><FONT COLOR=#cbe7f2>D</FONT><FONT COLOR=#d4eaf3>a</FONT><FONT COLOR=#dcedf3>i</FONT><FONT COLOR=#e5f0f4>b</FONT><FONT COLOR=#edf3f5>a</FONT><FONT COLOR=#f5f5f5>k</FONT><FONT COLOR=#e3f6f6>u</FONT><FONT COLOR=#d0f7f7>f</FONT><FONT COLOR=#bdf8f8>u</FONT><FONT COLOR=#aaf8f8> </FONT><FONT COLOR=#97f9f9>N</FONT><FONT COLOR=#84fafa>o</FONT><FONT COLOR=#72fbfb> </FONT><FONT COLOR=#5ffcfc>J</FONT><FONT COLOR=#4cfdfd>u</FONT><FONT COLOR=#39fdfd>t</FONT><FONT COLOR=#26fefe>s</FONT><FONT COLOR=#13ffff>u</FONT><FONT COLOR=#00ffff>!</FONT>"
					var/obj/SuitonDaib/K = new /obj/SuitonDaib
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
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>S</FONT><FONT COLOR=#90d1ec>u</FONT><FONT COLOR=#98d4ed>i</FONT><FONT COLOR=#a1d7ee>t</FONT><FONT COLOR=#a9daee>o</FONT><FONT COLOR=#b2ddef>n</FONT><FONT COLOR=#bae0f0>:</FONT><FONT COLOR=#c3e4f1> </FONT><FONT COLOR=#cbe7f2>D</FONT><FONT COLOR=#d4eaf3>a</FONT><FONT COLOR=#dcedf3>i</FONT><FONT COLOR=#e5f0f4>b</FONT><FONT COLOR=#edf3f5>a</FONT><FONT COLOR=#f5f5f5>k</FONT><FONT COLOR=#e3f6f6>u</FONT><FONT COLOR=#d0f7f7>f</FONT><FONT COLOR=#bdf8f8>u</FONT><FONT COLOR=#aaf8f8> </FONT><FONT COLOR=#97f9f9>N</FONT><FONT COLOR=#84fafa>o</FONT><FONT COLOR=#72fbfb> </FONT><FONT COLOR=#5ffcfc>J</FONT><FONT COLOR=#4cfdfd>u</FONT><FONT COLOR=#39fdfd>t</FONT><FONT COLOR=#26fefe>s</FONT><FONT COLOR=#13ffff>u</FONT><FONT COLOR=#00ffff>!</FONT>"
						var/obj/SuitonDaib/K = new /obj/SuitonDaib
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
mob/Suiton
	verb
		SuitonSuiryuudannoJutsu(mob/M in oview(usr)) // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Suiton Suiryuudan no Jutsu"
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
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>S</FONT><FONT COLOR=#90d1ec>u</FONT><FONT COLOR=#98d4ed>i</FONT><FONT COLOR=#a1d7ee>t</FONT><FONT COLOR=#a9daee>o</FONT><FONT COLOR=#b2ddef>n</FONT><FONT COLOR=#bae0f0>:</FONT><FONT COLOR=#c3e4f1> </FONT><FONT COLOR=#cbe7f2>Su</FONT><FONT COLOR=#d4eaf3>i</FONT><FONT COLOR=#dcedf3>r</FONT><FONT COLOR=#e5f0f4>y</FONT><FONT COLOR=#edf3f5>u</FONT><FONT COLOR=#f5f5f5>u</FONT><FONT COLOR=#e3f6f6>d</FONT><FONT COLOR=#d0f7f7>a</FONT><FONT COLOR=#bdf8f8>n</FONT><FONT COLOR=#aaf8f8> </FONT><FONT COLOR=#97f9f9>N</FONT><FONT COLOR=#84fafa>o</FONT><FONT COLOR=#72fbfb> </FONT><FONT COLOR=#5ffcfc>J</FONT><FONT COLOR=#4cfdfd>u</FONT><FONT COLOR=#39fdfd>t</FONT><FONT COLOR=#26fefe>s</FONT><FONT COLOR=#13ffff>u</FONT><FONT COLOR=#00ffff>!</FONT>"
					var/obj/Suiryedan/K = new /obj/Suiryedan
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
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>S</FONT><FONT COLOR=#90d1ec>u</FONT><FONT COLOR=#98d4ed>i</FONT><FONT COLOR=#a1d7ee>t</FONT><FONT COLOR=#a9daee>o</FONT><FONT COLOR=#b2ddef>n</FONT><FONT COLOR=#bae0f0>:</FONT><FONT COLOR=#c3e4f1> </FONT><FONT COLOR=#cbe7f2>Su</FONT><FONT COLOR=#d4eaf3>i</FONT><FONT COLOR=#dcedf3>r</FONT><FONT COLOR=#e5f0f4>y</FONT><FONT COLOR=#edf3f5>u</FONT><FONT COLOR=#f5f5f5>u</FONT><FONT COLOR=#e3f6f6>d</FONT><FONT COLOR=#d0f7f7>a</FONT><FONT COLOR=#bdf8f8>n</FONT><FONT COLOR=#aaf8f8> </FONT><FONT COLOR=#97f9f9>N</FONT><FONT COLOR=#84fafa>o</FONT><FONT COLOR=#72fbfb> </FONT><FONT COLOR=#5ffcfc>J</FONT><FONT COLOR=#4cfdfd>u</FONT><FONT COLOR=#39fdfd>t</FONT><FONT COLOR=#26fefe>s</FONT><FONT COLOR=#13ffff>u</FONT><FONT COLOR=#00ffff>!</FONT>"
						var/obj/Suiryedan/K = new /obj/Suiryedan
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

obj
	kriga
		icon = 'mist.dmi'//dont have a base icon so cant make weights icon!lol
		layer = 999999999999

mob/mist
	verb
		KirigakurenoJutsu() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Kirigakure no Jutsu"
			usr.Handseals()
			if(usr.firing) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.chakra <= 10)
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
			else // If the firing var isn't 1...
				var/list/O = usr.overlays.Copy()
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
				usr.chakra -= 10
				usr.Chakragain()
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr.icon = 'mist.dmi'
				view()<<"[usr] creates a shroud of mist around the battlefield!"
				var/obj/kriga/F = new /obj/kriga/
				var/obj/kriga/G = new /obj/kriga/
				var/obj/kriga/H = new /obj/kriga/
				var/obj/kriga/I = new /obj/kriga/
				var/obj/kriga/J = new /obj/kriga/
				var/obj/kriga/L = new /obj/kriga/
				var/obj/kriga/A = new /obj/kriga/
				var/obj/kriga/B = new /obj/kriga/
				var/obj/kriga/M2 = new /obj/kriga/
				var/obj/kriga/N = new /obj/kriga/
				var/obj/kriga/MT = new /obj/kriga/
				var/obj/kriga/P = new /obj/kriga/
				var/obj/kriga/D = new /obj/kriga/
				var/obj/kriga/E = new /obj/kriga/
				var/obj/kriga/C = new /obj/kriga/
				var/obj/kriga/K = new /obj/kriga/
				var/obj/kriga/Q = new /obj/kriga/
				var/obj/kriga/R = new /obj/kriga/
				var/obj/kriga/S = new /obj/kriga/
				var/obj/kriga/T = new /obj/kriga/
				var/obj/kriga/W = new /obj/kriga/
				var/obj/kriga/X = new /obj/kriga/
				var/obj/kriga/Y = new /obj/kriga/
				var/obj/kriga/Z = new /obj/kriga/
				var/obj/kriga/AB = new /obj/kriga/
				var/obj/kriga/AC = new /obj/kriga/
				var/obj/kriga/AD = new /obj/kriga/
				var/obj/kriga/AE = new /obj/kriga/
				var/obj/kriga/AF = new /obj/kriga/
				var/obj/kriga/AG = new /obj/kriga/
				var/obj/kriga/AH = new /obj/kriga/
				var/obj/kriga/AI = new /obj/kriga/
				var/obj/kriga/AJ = new /obj/kriga/
				var/obj/kriga/AK = new /obj/kriga/
				var/obj/kriga/AL = new /obj/kriga/
				var/obj/kriga/AM = new /obj/kriga/
				var/obj/kriga/AN = new /obj/kriga/
				var/obj/kriga/AO = new /obj/kriga/
				var/obj/kriga/AP = new /obj/kriga/
				var/obj/kriga/AQ = new /obj/kriga/
				var/obj/kriga/AR = new /obj/kriga/
				var/obj/kriga/AS = new /obj/kriga/
				var/obj/kriga/AT = new /obj/kriga/
				var/obj/kriga/AU = new /obj/kriga/
				var/obj/kriga/AV = new /obj/kriga/
				var/obj/kriga/AW = new /obj/kriga/
				var/obj/kriga/AX= new /obj/kriga/
				var/obj/kriga/AY = new /obj/kriga/
				var/obj/kriga/AZ = new /obj/kriga/
				K.loc = locate(usr.x,usr.y,usr.z)
				A.loc = locate(usr.x+1,usr.y,usr.z)
				C.loc = locate(usr.x-1,usr.y,usr.z)
				B.loc = locate(usr.x,usr.y+1,usr.z)
				D.loc = locate(usr.x,usr.y-1,usr.z)
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				I.loc = locate(usr.x+2,usr.y,usr.z)
				J.loc = locate(usr.x-2,usr.y,usr.z)
				L.loc = locate(usr.x,usr.y+2,usr.z)
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				MT.loc = locate(usr.x-2,usr.y-2,usr.z)
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				R.loc = locate(usr.x+3,usr.y,usr.z)
				S.loc = locate(usr.x-3,usr.y,usr.z)
				T.loc = locate(usr.x,usr.y+3,usr.z)
				W.loc = locate(usr.x,usr.y-3,usr.z)
				X.loc = locate(usr.x+3,usr.y+3,usr.z)
				Y.loc = locate(usr.x-3,usr.y-3,usr.z)
				Z.loc = locate(usr.x-3,usr.y+3,usr.z)
				AB.loc = locate(usr.x-3,usr.y-2,usr.z)
				AC.loc = locate(usr.x+3,usr.y+2,usr.z)
				AD.loc = locate(usr.x+3,usr.y-2,usr.z)
				AE.loc = locate(usr.x-3,usr.y+2,usr.z)
				AF.loc = locate(usr.x+2,usr.y+3,usr.z)
				AG.loc = locate(usr.x-2,usr.y-3,usr.z)
				AH.loc = locate(usr.x-2,usr.y+3,usr.z)
				AI.loc = locate(usr.x+2,usr.y-3,usr.z)
				AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
				AK.loc = locate(usr.x+1,usr.y+2,usr.z)
				AL.loc = locate(usr.x+1,usr.y-2,usr.z)
				AM.loc = locate(usr.x-1,usr.y+2,usr.z)
				AN.loc = locate(usr.x+2,usr.y+1,usr.z)
				AO.loc = locate(usr.x-2,usr.y-1,usr.z)
				AP.loc = locate(usr.x-2,usr.y+1,usr.z)
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AR.loc = locate(usr.x-1,usr.y-3,usr.z)
				AS.loc = locate(usr.x+1,usr.y+3,usr.z)
				AT.loc = locate(usr.x+1,usr.y-3,usr.z)
				AU.loc = locate(usr.x-1,usr.y+3,usr.z)
				AV.loc = locate(usr.x+3,usr.y+1,usr.z)
				AW.loc = locate(usr.x-3,usr.y-1,usr.z)
				AX.loc = locate(usr.x-3,usr.y+1,usr.z)
				AY.loc = locate(usr.x+3,usr.y-1,usr.z)
				AZ.loc = locate(usr.x+3,usr.y-3,usr.z)
				sleep(300)
				usr.icon = usr.Oicon
				usr.overlays = O.Copy()
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
				del(MT)
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


mob/katon
	verb
		KatonRyuukanoJutsu() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Katon Ryuuka no Jutsu"
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

			else // If the firing var isn't 1...
				if(usr.Katon4N >= 165)
					usr.chakra -= 30
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#dc143c>K</FONT><FONT COLOR=#d8163b>a</FONT><FONT COLOR=#d3183a>t</FONT><FONT COLOR=#ce1a38>o</FONT><FONT COLOR=#c91c36>n</FONT><FONT COLOR=#c41e34>:</FONT><FONT COLOR=#be2133> </FONT><FONT COLOR=#b92331>R</FONT><FONT COLOR=#b4252f>y</FONT><FONT COLOR=#af272d>u</FONT><FONT COLOR=#aa292c>u</FONT><FONT COLOR=#a52a2a>k</FONT><FONT COLOR=#a62a2a>a</FONT><FONT COLOR=#a82929> </FONT><FONT COLOR=#a92929>N</FONT><FONT COLOR=#aa2828>o</FONT><FONT COLOR=#ab2727> </FONT><FONT COLOR=#ad2626>J</FONT><FONT COLOR=#ae2525>u</FONT><FONT COLOR=#af2424>t</FONT><FONT COLOR=#b02424>s</FONT><FONT COLOR=#b22323>u</FONT><FONT COLOR=#b22222>!</FONT>"
					usr.Katon4N += 1
					var/obj/KRyuuka/K = new /obj/KRyuuka
					K.loc = usr.loc
					K.nin=usr.nin
					K.Move_Delay=0
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
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#dc143c>K</FONT><FONT COLOR=#d8163b>a</FONT><FONT COLOR=#d3183a>t</FONT><FONT COLOR=#ce1a38>o</FONT><FONT COLOR=#c91c36>n</FONT><FONT COLOR=#c41e34>:</FONT><FONT COLOR=#be2133> </FONT><FONT COLOR=#b92331>R</FONT><FONT COLOR=#b4252f>y</FONT><FONT COLOR=#af272d>u</FONT><FONT COLOR=#aa292c>u</FONT><FONT COLOR=#a52a2a>k</FONT><FONT COLOR=#a62a2a>a</FONT><FONT COLOR=#a82929> </FONT><FONT COLOR=#a92929>N</FONT><FONT COLOR=#aa2828>o</FONT><FONT COLOR=#ab2727> </FONT><FONT COLOR=#ad2626>J</FONT><FONT COLOR=#ae2525>u</FONT><FONT COLOR=#af2424>t</FONT><FONT COLOR=#b02424>s</FONT><FONT COLOR=#b22323>u</FONT><FONT COLOR=#b22222>!</FONT>"
						var/obj/KRyuuka/K = new /obj/KRyuuka
						K.loc = usr.loc
						K.nin=usr.nin
						usr.Chakragain()
						K.dir = usr.dir
						K.name="[usr]"
						K.Move_Delay=0
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
						usr<<"You failed to use Katon Ryuuka no Jutsu."
mob/pain
	verb
		SennenGoroshi()
			set name = "Sennen Goroshi"
			set desc = ""
			set category = "TaiJutsu"
			for(var/mob/M in get_step(usr,usr.dir))
				if(M.ingat)
					return
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.caught)
					usr<<"Your captured"
					return
				if(usr.firing)
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
				if (M.intank)
					return
				if (usr.Kaiten)
					return
				if (M.sphere)
					usr<<"Your attack bounces off of the sand!"
					return
				if (M.Kaiten||M.counter)
					var/damage = round(usr.Mtai)
					usr <<"You attack [M] but their kaiten reflects the damage back at you."
					usr.firing = 1
					M <<"You reflect [usr]'s attack causing them to hurt themselfs."
					usr.health -= damage
					usr.Death(M)
				else					//otherwise...
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#808080>F</FONT><FONT COLOR=#888888>o</FONT><FONT COLOR=#8f8f8f>r</FONT><FONT COLOR=#979797>b</FONT><FONT COLOR=#9e9e9e>i</FONT><FONT COLOR=#a6a6a6>d</FONT><FONT COLOR=#adadad>d</FONT><FONT COLOR=#b5b5b5>e</FONT><FONT COLOR=#bcbcbc>n</FONT><FONT COLOR=#c4c4c4> </FONT><FONT COLOR=#cbcbcb>J</FONT><FONT COLOR=#d3d3d3>u</FONT><FONT COLOR=#dadada>t</FONT><FONT COLOR=#e2e2e2>s</FONT><FONT COLOR=#e9e9e9>u</FONT><FONT COLOR=#f1f1f1>:</FONT><FONT COLOR=#f8f8f8> </FONT><FONT COLOR=#ffffff>1</FONT><FONT COLOR=#f8f9fa>0</FONT><FONT COLOR=#f0f2f4>0</FONT><FONT COLOR=#e8ebee>0</FONT><FONT COLOR=#e0e4e8> </FONT><FONT COLOR=#d8dde2>Y</FONT><FONT COLOR=#d0d6dc>e</FONT><FONT COLOR=#c8cfd6>a</FONT><FONT COLOR=#c0c8d0>r</FONT><FONT COLOR=#b7c0c9>s</FONT><FONT COLOR=#afb9c3> </FONT><FONT COLOR=#a7b2bd>O</FONT><FONT COLOR=#9fabb7>f</FONT><FONT COLOR=#97a4b1> </FONT><FONT COLOR=#8f9dab>P</FONT><FONT COLOR=#8796a5>a</FONT><FONT COLOR=#7f8f9f>i</FONT><FONT COLOR=#778899>n</FONT>"
					usr << "You attack [M] with Sennen Goroshi!"
					usr.firing = 1
					var/damage = round(usr.Mtai)
					view() << "[usr] hits [M] with Sennen Goroshi for [damage] damage!"
					M.health -= damage
					M.Death(usr)
					if(usr.Mtai <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.taiexp += rand(200000,250000)
							usr.Tai()
							usr.Skills()
							sleep(30)
							usr.firing = 0
						else
							sleep(30)
							usr.firing = 0
							return
					else
						usr.random = rand(1,20)
						if(random == 5||random==1)
							usr.Skills()
							sleep(30)
							usr.firing = 0
						else
							sleep(30)
							usr.firing = 0
							return
					sleep(30)
					usr.firing=0


obj
	KaryHead
		icon='karyhead.dmi'
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	KaryTail
		icon='karytail.dmi'
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

/*----------------------------------------------------------*/

obj
	GoukakyuuTail
		icon='Goukakyuu.dmi'
		icon_state = "Tail"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	GoukakyuuHead
		icon='Goukakyuu.dmi'
		icon_state="Head"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	GoukakyuuCenter
		icon='Goukakyuu.dmi'
		icon_state = "Center"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	GoukakyuuNorthWest
		icon='Goukakyuu.dmi'
		icon_state = "NorthWest"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	GoukakyuuNorthEast
		icon='Goukakyuu.dmi'
		icon_state = "NorthEast"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	GoukakyuuSouthWest
		icon='Goukakyuu.dmi'
		icon_state = "SouthWest"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	GoukakyuuSouthEast
		icon='Goukakyuu.dmi'
		icon_state = "SouthEast"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	GoukakyuuNorth
		icon='Goukakyuu.dmi'
		icon_state = "North"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	GoukakyuuSouth
		icon='Goukakyuu.dmi'
		icon_state = "South"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	GoukakyuuEast
		icon='Goukakyuu.dmi'
		icon_state = "East"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	GoukakyuuWest
		icon='Goukakyuu.dmi'
		icon_state = "West"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

/*----------------------------------------------------------*/

mob/katon
	verb
		KatonGoukakyuu() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Katon Goukakyuu No Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
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
			else // If the firing var isn't 1...
				if(usr.Katon1N >= 40)
					usr.chakra -= 15
					usr.Chakragain()
					usr.firing = 1
					var/obj/GoukakyuuNorth/K = new /obj/GoukakyuuNorth
					var/obj/GoukakyuuCenter/L = new /obj/GoukakyuuCenter
					var/obj/GoukakyuuSouth/M1 = new /obj/GoukakyuuSouth
					var/obj/GoukakyuuEast/N = new /obj/GoukakyuuEast
					var/obj/GoukakyuuWest/O = new /obj/GoukakyuuWest
					var/obj/GoukakyuuNorthEast/TR = new /obj/GoukakyuuNorthEast
					var/obj/GoukakyuuSouthEast/BR = new /obj/GoukakyuuSouthEast
					var/obj/GoukakyuuNorthWest/TL = new /obj/GoukakyuuNorthWest
					var/obj/GoukakyuuSouthWest/BL = new /obj/GoukakyuuSouthWest
					var/obj/GoukakyuuTail/T = new /obj/GoukakyuuTail
					usr.Katon1N += 1
					usr.handseals=0
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ffffff>K</FONT><FONT COLOR=#f6ebeb>a</FONT><FONT COLOR=#edd5d5>t</FONT><FONT COLOR=#e3c0c0>o</FONT><FONT COLOR=#d9abab>n</FONT><FONT COLOR=#cf9595>:</FONT><FONT COLOR=#c68080> </FONT><FONT COLOR=#bc6b6b>G</FONT><FONT COLOR=#b25555>o</FONT><FONT COLOR=#a84040>u</FONT><FONT COLOR=#9f2b2b>k</FONT><FONT COLOR=#951515>a</FONT><FONT COLOR=#8b0000>k</FONT><FONT COLOR=#910205>y</FONT><FONT COLOR=#980309>u</FONT><FONT COLOR=#9e050e>u</FONT><FONT COLOR=#a40613> </FONT><FONT COLOR=#ab0817>N</FONT><FONT COLOR=#b10a1c>o</FONT><FONT COLOR=#b70b21> </FONT><FONT COLOR=#bd0d26>J</FONT><FONT COLOR=#c40f2a>u</FONT><FONT COLOR=#ca102f>t</FONT><FONT COLOR=#d01234>s</FONT><FONT COLOR=#d71338>u</FONT><FONT COLOR=#dc143c>!</FONT></FONT>"
					K.Gowner=usr
					K.nin=usr.nin
					usr.Frozen=1
					if(usr.dir==NORTH)
						if(K)
							K.loc = usr.loc
							K.y+=2
						if(L)
							L.loc = usr.loc
							L.y+=3
						if(M1)
							M1.loc = usr.loc
							M1.y+=4
						if(O)
							O.loc = usr.loc
							O.y+=3
							O.x-=1
						if(N)
							N.loc = usr.loc
							N.y+=3
							N.x+=1
						if(TR)
							TR.loc = usr.loc
							TR.y+=4
							TR.x+=1
						if(TL)
							TL.loc = usr.loc
							TL.y+=4
							TL.x-=1
						if(BR)
							BR.loc = usr.loc
							BR.y+=2
							BR.x+=1
						if(BL)
							BL.loc = usr.loc
							BL.y+=2
							BL.x-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y+=1
					if(usr.dir==SOUTH)
						if(K)
							K.loc = usr.loc
							K.y-=2
						if(L)
							L.loc = usr.loc
							L.y-=3
						if(M1)
							M1.loc = usr.loc
							M1.y-=4
						if(O)
							O.loc = usr.loc
							O.y-=3
							O.x-=1
						if(N)
							N.loc = usr.loc
							N.y-=3
							N.x+=1
						if(TR)
							TR.loc = usr.loc
							TR.y-=2
							TR.x+=1
						if(TL)
							TL.loc = usr.loc
							TL.y-=2
							TL.x-=1
						if(BR)
							BR.loc = usr.loc
							BR.y-=4
							BR.x+=1
						if(BL)
							BL.loc = usr.loc
							BL.y-=4
							BL.x-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y-=1
					if(usr.dir==WEST)
						if(K)
							K.loc = usr.loc
							K.x-=2
						if(L)
							L.loc = usr.loc
							L.x-=3
						if(M1)
							M1.loc = usr.loc
							M1.x-=4
						if(O)
							O.loc = usr.loc
							O.y-=1
							O.x-=3
						if(N)
							N.loc = usr.loc
							N.y+=1
							N.x-=3
						if(TR)
							TR.loc = usr.loc
							TR.x-=2
							TR.y+=1
						if(TL)
							TL.loc = usr.loc
							TL.x-=4
							TL.y+=1
						if(BR)
							BR.loc = usr.loc
							BR.x-=2
							BR.y-=1
						if(BL)
							BL.loc = usr.loc
							BL.x-=4
							BL.y-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x-=1
					if(usr.dir==EAST)
						if(K)
							K.loc = usr.loc
							K.x+=2
						if(L)
							L.loc = usr.loc
							L.x+=3
						if(M1)
							M1.loc = usr.loc
							M1.x+=4
						if(O)
							O.loc = usr.loc
							O.y-=1
							O.x+=3
						if(N)
							N.loc = usr.loc
							N.y+=1
							N.x+=3
						if(TR)
							TR.loc = usr.loc
							TR.x+=4
							TR.y+=1
						if(TL)
							TL.loc = usr.loc
							TL.x+=2
							TL.y+=1
						if(BR)
							BR.loc = usr.loc
							BR.x+=4
							BR.y-=1
						if(BL)
							BL.loc = usr.loc
							BL.x+=2
							BL.y-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x+=1
					for(var/mob/M in oview(4,usr))
						if(K)
							if(M.loc==K.loc)
								if(M.Kaiten)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(T)
							if(M.loc==T.loc)
								if(M.Kaiten)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(L)
							if(M.loc==L.loc)
								if(M.Kaiten||M.counter)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(M1)
							if(M.loc==M1.loc)
								if(M.Kaiten)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(N)
							if(M.loc==N.loc)
								if(M.Kaiten)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(O)
							if(M.loc==O.loc)
								if(M.Kaiten)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(BL)
							if(M.loc==BL.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(BR)
							if(M.loc==BR.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(TR)
							if(M.loc==TR.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(TL)
							if(M.loc==TL.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Goukakyuu."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.nin*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,8)
						if(random == 5||random==1)
							usr.Mnin += rand(1,2)
							usr.nin = usr.Mnin
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
						usr.random = rand(1,10)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
					sleep(30)
					usr.firing = 0
					usr.Frozen=0
					sleep(45)
					del(K)
					del(T)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 15
						usr.firing = 1
						var/obj/GoukakyuuHead/K = new /obj/GoukakyuuHead
						var/obj/GoukakyuuTail/T = new /obj/GoukakyuuTail
						usr.Katon1N += 1
						usr.Frozen=1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ffffff>K</FONT><FONT COLOR=#f6ebeb>a</FONT><FONT COLOR=#edd5d5>t</FONT><FONT COLOR=#e3c0c0>o</FONT><FONT COLOR=#d9abab>n</FONT><FONT COLOR=#cf9595>:</FONT><FONT COLOR=#c68080> </FONT><FONT COLOR=#bc6b6b>G</FONT><FONT COLOR=#b25555>o</FONT><FONT COLOR=#a84040>u</FONT><FONT COLOR=#9f2b2b>k</FONT><FONT COLOR=#951515>a</FONT><FONT COLOR=#8b0000>k</FONT><FONT COLOR=#910205>y</FONT><FONT COLOR=#980309>u</FONT><FONT COLOR=#9e050e>u</FONT><FONT COLOR=#a40613> </FONT><FONT COLOR=#ab0817>N</FONT><FONT COLOR=#b10a1c>o</FONT><FONT COLOR=#b70b21> </FONT><FONT COLOR=#bd0d26>J</FONT><FONT COLOR=#c40f2a>u</FONT><FONT COLOR=#ca102f>t</FONT><FONT COLOR=#d01234>s</FONT><FONT COLOR=#d71338>u</FONT><FONT COLOR=#dc143c>!</FONT></FONT>"
						K.Gowner=usr
						K.nin=usr.nin
						if(usr.dir==NORTH)
							if(K)
								K.loc = usr.loc
								K.y+=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.y+=1
						if(usr.dir==SOUTH)
							if(K)
								K.loc = usr.loc
								K.y-=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.y-=1
						if(usr.dir==WEST)
							if(K)
								K.loc = usr.loc
								K.x-=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.x-=1
						if(usr.dir==EAST)
							if(K)
								K.loc = usr.loc
								K.x+=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.x+=1
						for(var/mob/M in oview(4,usr))
							if(K)
								if(M.loc==K.loc)
									if(M.Kaiten||M.sphere)
										usr<<"Your attack doesn't harm [M]."
										M<<"You block [usr]'s Goukakyuu."
										return
									if(M.counter)
										usr<<"They copy and reflect it back at you."
										M<<"You copy and reflect it back at them."
										usr.health -= M.Mnin/5
										Death(usr)
										return
									var/damage=usr.nin*1.5
									view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
									M.health-=damage
									if(M.health<=0)
										M.Death(usr)
						for(var/mob/M in oview(4,usr))
							if(T)
								if(M.loc==T.loc)
									if(M.Kaiten||M.sphere)
										usr<<"Your attack doesn't harm [M]."
										M<<"You block [usr]'s Goukakyuu."
										return
									if(M.counter)
										usr<<"They copy and reflect it back at you."
										M<<"You copy and reflect it back at them."
										usr.health -= M.Mnin/5
										Death(usr)
										return
									var/damage=usr.nin*1.5
									view()<<"[M] has taken [damage] Damage from [usr]'s Katon Goukakyuu"
									M.health-=damage
									if(M.health<=0)
										M.Death(usr)
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
						sleep(10)
						usr.firing = 0
						usr.Frozen=0
						sleep(45)
						del(K)
						del(T)



mob/jutsu
	verb
		ShushinNoJutsu(mob/M in oview(10))
			set category = "GenJutsu"
			set name = "Shushin No Jutsu"
			usr.Handseals()
			if(usr.firing)
				return
			if(usr.hyoushou)
				return
			if(usr.chakra <= 100)
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
			else // If the firing var isn't 1.
				usr.chakra -= 100
				usr.loc = locate(M.x,M.y-1,M.z)
				usr.Chakragain()
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#c0c0c0>S</FONT><FONT COLOR=#bebebe>h</FONT><FONT COLOR=#bbbbbb>u</FONT><FONT COLOR=#b8b8b8>s</FONT><FONT COLOR=#b5b5b5>h</FONT><FONT COLOR=#b2b2b2>i</FONT><FONT COLOR=#afafaf>n</FONT><FONT COLOR=#acacac> </FONT><FONT COLOR=#a9a9a9>N</FONT><FONT COLOR=#a2a2a2>o</FONT><FONT COLOR=#9a9a9a> </FONT><FONT COLOR=#929292>J</FONT><FONT COLOR=#8a8a8a>u</FONT><FONT COLOR=#818181>t</FONT><FONT COLOR=#797979>s</FONT><FONT COLOR=#717171>u</FONT><FONT COLOR=#696969>!</FONT>"
mob/jutsu
	verb
		MieMie()
			set category = "GenJutsu"
			set name = "Mei Mei no Jutsu"
			usr.Handseals()
			if(usr.ingat)
				return
			if(usr.intank)
				return
			if(usr.Kaiten)
				return
			if(usr.firing)
				return
			if(usr.sphere)
				usr<<"Not while useing sand of sphere"
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
			if(usr.inMei)
				usr<<"You cant use Mei Mei no jutsu right now!"
				return
			if(usr.chakra <= 20)
				usr<<"Not enough chakra!"
				return
			if(!usr.handseals)
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			else
				var/list/O = usr.overlays.Copy()
				view()<<"<font color=silver><b><font face=verdana>[usr]: Mei Mei No Jutsu!"
				usr.icon = 'invis.dmi'
				usr.firing=1
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr.inMei = 1
				usr.chakra -= 20
				usr.Chakragain()
				sleep(100)
				usr.icon = usr.Oicon
				usr.overlays = O.Copy()
				sleep(10)
				usr.inMei = 0
				usr.firing=0
mob/jutsu
	verb
		Sexy()
			set category = "GenJutsu"
			set name = "Oiroke No Jutsu"
			usr.Handseals()
			if (usr.ingat)
				return
			if (usr.intank)
				return
			if (usr.Kaiten)
				return
			if(usr.firing)
				return
			if (usr.sphere)
				usr<<"Not while useing sand of sphere"
				return
			if(usr.chakra <= 20)
				usr<<"Not enough chakra!"
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
			else
				var/list/O = usr.overlays.Copy()
				view()<<"<font color=silver><b><font face=verdana>[usr]: Oiroke No Jutsu!!"
				usr.icon = 'sexy.dmi'
				usr.firing=1
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr.sexy = 1
				usr.chakra -= 20
				usr.Chakragain()
				sleep(100)
				usr.icon = usr.Oicon
				usr.overlays = O.Copy()
				sleep(10)
				usr.sexy = 0
				usr.firing=0

obj/var/tmp
	tai=0
	gen=0
	Rowner=""
	Jowner=""
	Zowner=""
	GownerB=""
mob/doton
	verb
		DotonDoryoDango() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Doton Doryo Dango"
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough rocks!"
				return
			if(usr.PK==0)
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

			else // If the firing var isn't 1...
				if(usr.DDD >= 25)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.DDD += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f0e68c>D</FONT><FONT COLOR=#e8cf81>o</FONT><FONT COLOR=#deb874>t</FONT><FONT COLOR=#d5a068>o</FONT><FONT COLOR=#cb895c>n</FONT><FONT COLOR=#c2714f> </FONT><FONT COLOR=#b85943>D</FONT><FONT COLOR=#af4236>o</FONT><FONT COLOR=#a52a2a>r</FONT><FONT COLOR=#a23233>y</FONT><FONT COLOR=#9e3b3c>o</FONT><FONT COLOR=#994345> </FONT><FONT COLOR=#954b4e>D</FONT><FONT COLOR=#915458>a</FONT><FONT COLOR=#8d5c61>n</FONT><FONT COLOR=#88646a>g</FONT><FONT COLOR=#846d73>o</FONT><FONT COLOR=#80747b>!</FONT>"
					var/obj/DotonDD/K = new /obj/DotonDD
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					K.name="[usr]"
					usr.Chakragain()
					K.Gowner=usr
					K.Move_Delay=0
					walk(K,usr.dir)
					if (target == null)
						del(K)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.ninexp += rand(1,10)
							usr.Nin()
							usr.Skills()
					sleep(20)
					del(K)
					sleep(20)
					usr.firing = 0
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 15
						usr.DDD += 1
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f0e68c>D</FONT><FONT COLOR=#e8cf81>o</FONT><FONT COLOR=#deb874>t</FONT><FONT COLOR=#d5a068>o</FONT><FONT COLOR=#cb895c>n</FONT><FONT COLOR=#c2714f> </FONT><FONT COLOR=#b85943>D</FONT><FONT COLOR=#af4236>o</FONT><FONT COLOR=#a52a2a>r</FONT><FONT COLOR=#a23233>y</FONT><FONT COLOR=#9e3b3c>o</FONT><FONT COLOR=#994345> </FONT><FONT COLOR=#954b4e>D</FONT><FONT COLOR=#915458>a</FONT><FONT COLOR=#8d5c61>n</FONT><FONT COLOR=#88646a>g</FONT><FONT COLOR=#846d73>o</FONT><FONT COLOR=#80747b>!</FONT>"
						var/obj/DotonDD/K = new /obj/DotonDD
						K.loc = usr.loc
						K.nin=usr.nin
						K.dir = usr.dir
						K.name="[usr]"
						K.Gowner=usr
						K.Move_Delay=0
						walk(K,usr.dir)
						if (target == null)
							del(K)
						if(usr.Mnin <= usr.cap)
							usr.random = rand(1,6)
							if(random == 5||random==1)
								usr.ninexp += rand(1,10)
								usr.Nin()
								usr.Skills()

						sleep()
						del(K)
						sleep(10)
						usr.firing = 0
					else
						usr<<"You failed to use Doton Doryo Dango"



obj
	SpiderWeb
		icon='SpiderW.dmi'
		icon_state="web"
		density=1
obj
	DenseThing
		density=1

mob/Kidomaru
	verb
		Spiderweb(mob/M in oview(10))
			set category = "NinJutsu"
			set name = "Spider Web"
			usr.Handseals()
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!F"
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
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra<=9999)
				return
			if(!usr.handseals)
				return
			if(!usr.spiderweb)
				usr<<"To throw needles use Sensatsu, When you are using Hyoushou, Sensatsu Suishou changes to fit your need"
				usr.spiderweb=1
				usr.Chakragain()
				usr.chakra-=5000
				M.spiderweb=1
				var/obj/SpiderWeb/A = new /obj/SpiderWeb
				var/obj/SpiderWeb/B = new /obj/SpiderWeb
				var/obj/SpiderWeb/C = new /obj/SpiderWeb
				var/obj/SpiderWeb/D = new /obj/SpiderWeb
				var/obj/SpiderWeb/E = new /obj/SpiderWeb
				var/obj/SpiderWeb/F = new /obj/SpiderWeb
				var/obj/SpiderWeb/G = new /obj/SpiderWeb
				var/obj/SpiderWeb/H = new /obj/SpiderWeb
				var/obj/DenseThing/A1 = new /obj/DenseThing
				var/obj/DenseThing/B2 = new /obj/DenseThing
				var/obj/DenseThing/C3 = new /obj/DenseThing
				var/obj/DenseThing/D4 = new /obj/DenseThing
				var/obj/DenseThing/E5 = new /obj/DenseThing
				var/obj/DenseThing/F6 = new /obj/DenseThing
				var/obj/DenseThing/G7 = new /obj/DenseThing
				var/obj/DenseThing/H8 = new /obj/DenseThing
				var/obj/DenseThing/I9 = new /obj/DenseThing
				var/obj/DenseThing/J10 = new /obj/DenseThing
				var/obj/DenseThing/K11 = new /obj/DenseThing
				var/obj/DenseThing/L12 = new /obj/DenseThing
				var/obj/DenseThing/M13 = new /obj/DenseThing
				var/obj/DenseThing/N14 = new /obj/DenseThing
				var/obj/DenseThing/O15 = new /obj/DenseThing
				var/obj/DenseThing/P16 = new /obj/DenseThing
				var/obj/DenseThing/Q17 = new /obj/DenseThing
				var/obj/DenseThing/R18 = new /obj/DenseThing
				var/obj/DenseThing/S19 = new /obj/DenseThing
				var/obj/DenseThing/T20 = new /obj/DenseThing
				var/obj/DenseThing/U21 = new /obj/DenseThing
				var/obj/DenseThing/V22 = new /obj/DenseThing
				var/obj/DenseThing/W23 = new /obj/DenseThing
				var/obj/DenseThing/X24 = new /obj/DenseThing
				A1.owner=usr
				B2.owner=usr
				C3.owner=usr
				D4.owner=usr
				E5.owner=usr
				F6.owner=usr
				G7.owner=usr
				H8.owner=usr
				I9.owner=usr
				J10.owner=usr
				K11.owner=usr
				L12.owner=usr
				M13.owner=usr
				N14.owner=usr
				O15.owner=usr
				P16.owner=usr
				Q17.owner=usr
				R18.owner=usr
				S19.owner=usr
				T20.owner=usr
				U21.owner=usr
				V22.owner=usr
				W23.owner=usr
				X24.owner=usr
				A1.loc = locate(M.x-3,M.y+4,M.z)//Tops
				B2.loc = locate(M.x-2,M.y+4,M.z)//Tops
				C3.loc = locate(M.x-1,M.y+4,M.z)//Tops
				D4.loc = locate(M.x+1,M.y+4,M.z)//Tops
				E5.loc = locate(M.x+2,M.y+4,M.z)//Tops
				F6.loc = locate(M.x+3,M.y+4,M.z)//Tops
				G7.loc = locate(M.x-3,M.y-4,M.z)//Bottoms
				H8.loc = locate(M.x-2,M.y-4,M.z)//Bottoms
				I9.loc = locate(M.x-1,M.y-4,M.z)//Bottoms
				J10.loc = locate(M.x+1,M.y-4,M.z)//Bottoms
				K11.loc = locate(M.x+2,M.y-4,M.z)//Bottoms
				L12.loc = locate(M.x+3,M.y-4,M.z)//Bottoms
				M13.loc = locate(M.x-4,M.y+1,M.z)//Lefts
				N14.loc = locate(M.x-4,M.y+2,M.z)//Lefts
				O15.loc = locate(M.x-4,M.y+3,M.z)//Lefts
				P16.loc = locate(M.x-4,M.y-1,M.z)//Lefts
				Q17.loc = locate(M.x-4,M.y-2,M.z)//Lefts
				R18.loc = locate(M.x-4,M.y-3,M.z)//Lefts
				S19.loc = locate(M.x+4,M.y+1,M.z)//Rights
				T20.loc = locate(M.x+4,M.y+2,M.z)//Rights
				U21.loc = locate(M.x+4,M.y+3,M.z)//Rights
				V22.loc = locate(M.x+4,M.y-1,M.z)//Rights
				W23.loc = locate(M.x+4,M.y-2,M.z)//Rights
				X24.loc = locate(M.x+4,M.y-3,M.z)//Rights
				A.loc = locate(M.x-4,M.y,M.z)
				A.owner=usr
				B.loc = locate(M.x,M.y-4,M.z)
				B.owner=usr
				C.loc = locate(M.x-4,M.y-4,M.z)
				C.owner=usr
				D.loc = locate(M.x+4,M.y,M.z)
				D.owner=usr
				E.loc = locate(M.x+4,M.y+4,M.z)
				E.owner=usr
				F.loc = locate(M.x,M.y+4,M.z)
				F.owner=usr
				G.loc = locate(M.x+4,M.y-4,M.z)
				G.owner=usr
				H.loc = locate(M.x-4,M.y+4,M.z)
				H.owner=usr
				Gotcha
					if(usr.chakra>=5)
						if(usr.spiderweb)
							if(A)
								usr.loc = A.loc
								usr.chakra-=100
							sleep(13)
							if(B)
								usr.loc = B.loc
								usr.chakra-=100
							sleep(13)
							if(C)
								usr.loc = C.loc
								usr.chakra-=100
							sleep(13)
							if(D)
								usr.loc = D.loc
								usr.chakra-=100
							sleep(13)
							if(E)
								usr.loc = E.loc
								usr.chakra-=100
							sleep(13)
							if(F)
								usr.loc = F.loc
								usr.chakra-=100
							sleep(13)
							if(G)
								usr.loc = G.loc
								usr.chakra-=100
							sleep(13)
							if(H)
								usr.loc = H.loc
								usr.chakra-=100
					switch(input("Do you wish to Destroy your webs?") in list("Yes","No"))
						if("Yes")
							del(A)
							del(B)
							del(C)
							del(D)
							del(E)
							del(F)
							del(G)
							del(H)
							del(A1)
							del(B2)
							del(C3)
							del(D4)
							del(E5)
							del(F6)
							del(G7)
							del(H8)
							del(I9)
							del(J10)
							del(K11)
							del(L12)
							del(M13)
							del(N14)
							del(O15)
							del(P16)
							del(Q17)
							del(R18)
							del(S19)
							del(T20)
							del(U21)
							del(V22)
							del(W23)
							del(X24)
							sleep(60)
							usr.spiderweb=0
						if("No")
							goto Gotcha

obj
	redb
		icon = 'turf2.dmi'
		icon_state="RedB"
		layer = MOB_LAYER+2
obj
	Sawarabi
		icon= 'sawarabi.dmi'
		layer = MOB_LAYER+2

mob/jutsu
	verb
		Chidori()
			set category = "NinJutsu"
			set name = "Chidori"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.ingat)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.intank)
				return
			if(usr.Kaiten)
				return
			if(usr.sphere)
				return
			if(usr.inso)
				return
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
			if(Chidorion)
				usr <<"Your already using Chidori!"
				return
			if(usr.chakra <= 0)
				usr<<"You Don't Have Enough Chakra"
				return
			else
				var/damage = input("How much chakra would you like to put in?")as num
				if(usr.ChidoriU >= 30)
					if(damage <= 4999)
						usr<<"You must put at least 5000 chakra into it!!"
						return
					if(damage >= usr.chakra)
						usr<<"You put to much energy into the Chidori and lose control of it!"
						return
					else
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#4682b4>C</FONT><FONT COLOR=#6f97b8>h</FONT><FONT COLOR=#98acbd>i</FONT><FONT COLOR=#c0c0c0>d</FONT><FONT COLOR=#a1abc9>o</FONT><FONT COLOR=#8195d1>r</FONT><FONT COLOR=#617fda>i</FONT><FONT COLOR=#4169e1>!</FONT>"
						usr.ChidoriU += 1
						usr.chakra -= damage
						if(usr.chakra<0) usr.chakra=0
						usr.ChidoriD = damage/4*rand(1,2.5)
						usr.Chakragain()
						usr.Chidorion = 1
						usr.firing = 1
						usr.overlays += 'Chidori.dmi'
						usr.icon_state = "run"
						RD
							if(!usr.battlingRC)
								ChidoriD -= rand(1000,2000)
							if(usr.ChidoriD <= 1)
								usr << "Your Chidori runs out of energy"
								usr.ChidoriD = 0
								usr.overlays -= 'Chidori.dmi'
								usr.overlays -= 'Chidori.dmi'
								usr.overlays -= 'Chidori.dmi'
								usr.overlays -= 'Chidori.dmi'
								usr.Chidorion = 0
								usr.firing = 0
								return
							else
								sleep(6)
								goto RD
				else
					usr.random = rand (1,3)
					if(usr.random == 1||usr.random == 2)
						if(damage <= 4999)
							usr<<"You must put at least 5000 chakra into it!!"
							return
						if(damage >= usr.chakra)
							usr<<"You put to much energy into the chidori and lose control of it!"
							return
						else
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#4682b4>C</FONT><FONT COLOR=#6f97b8>h</FONT><FONT COLOR=#98acbd>i</FONT><FONT COLOR=#c0c0c0>d</FONT><FONT COLOR=#a1abc9>o</FONT><FONT COLOR=#8195d1>r</FONT><FONT COLOR=#617fda>i</FONT><FONT COLOR=#4169e1>!</FONT>"
							usr.Chidorion = 1
							usr.ChidoriU += 1
							usr.chakra -= damage
							if(usr.chakra<0) usr.chakra=0
							usr.Chakragain()
							usr.ChidoriD = damage/4*rand(1.5,3)
							usr.firing = 1
							usr.overlays += 'Chidori.dmi'
							usr.icon_state = "run"
							RD
								if(!usr.battlingRC)
									ChidoriD -= rand(1000,2000)
								if(usr.ChidoriD <= 1&&!usr.battlingRC)
									usr << "Your Chidori runs out of energy"
									usr.ChidoriD = 0
									usr.Chidorion = 0
									usr.overlays -= 'Chidori.dmi'
									usr.overlays -= 'Chidori.dmi'
									usr.overlays -= 'Chidori.dmi'
									usr.overlays -= 'Chidori.dmi'
									usr.overlays -= 'Chidori.dmi'
									usr.firing = 0
									return
								else
									sleep(6)
									goto RD
					else
						usr<<"You fail to use Chidori!"
						return
mob/jutsu
	verb
		Rasengan()
			set category = "NinJutsu"
			set name = "Rasengan"
			if (usr.ingat)
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.intank)
				return
			if(usr.Kaiten)
				return
			if(usr.sphere)
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
			if(usr.inso)
				return
			if(usr.firing)
				return
			if(Rasenganon)
				usr <<"Your already using Rasengan!"
				return
			if(usr.chakra <= 0)
				usr<<"You Don't Have Enough Chakra"
				return
			else
				var/damage = input("How much chakra would you like to put in?")as num
				if(usr.RasenganU >= 30)
					if(damage <= 4999)
						usr<<"You must put at least 5000 chakra into it!!"
						return
					if(damage >= usr.chakra)
						usr<<"You put to much energy into the rasengan and lose control of it!"
						return
					else
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#00bfff>R</FONT><FONT COLOR=#30c0f0>a</FONT><FONT COLOR=#61c0e0>s</FONT><FONT COLOR=#91c0d0>e</FONT><FONT COLOR=#c0c0c0>n</FONT><FONT COLOR=#bdc1c8>g</FONT><FONT COLOR=#b9c3d0>a</FONT><FONT COLOR=#b4c4d7>n</FONT><FONT COLOR=#b0c4de>!</FONT>"
						usr.RasenganU += 1
						usr.chakra -= damage
						if(usr.chakra<0) usr.chakra=0
						usr.RasenganD = damage*1.3
						usr.Rasenganon = 1
						usr.firing = 1
						usr.Chakragain()
						usr.overlays += 'Rasengan.dmi'
						usr.icon_state = "run"
						RD
							if(!usr.battlingRC)
								RasenganD -= rand(100,200)
							if(usr.RasenganD <= 1&&!usr.battlingRC)
								usr << "Your Rasengan runs out of energy"
								usr.RasenganD = 0
								usr.Rasenganon = 0
								usr.overlays -= 'Rasengan.dmi'
								usr.overlays -= 'Rasengan.dmi'
								usr.overlays -= 'Rasengan.dmi'
								usr.overlays -= 'Rasengan.dmi'
								usr.overlays -= 'Rasengan.dmi'
								usr.firing = 0
								return
							else
								sleep(6)
								goto RD
				else
					usr.random = rand (1,3)
					if(usr.random == 1||usr.random == 2)
						if(damage <= 4999)
							usr<<"You must put at least 5000 chakra into it!!"
							return
						if(damage >= usr.chakra)
							usr<<"You put to much energy into the rasengan and lose control of it!"
							return
						else
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#00bfff>R</FONT><FONT COLOR=#30c0f0>a</FONT><FONT COLOR=#61c0e0>s</FONT><FONT COLOR=#91c0d0>e</FONT><FONT COLOR=#c0c0c0>n</FONT><FONT COLOR=#bdc1c8>g</FONT><FONT COLOR=#b9c3d0>a</FONT><FONT COLOR=#b4c4d7>n</FONT><FONT COLOR=#b0c4de>!</FONT>"
							usr.Rasenganon = 1
							usr.RasenganU += 1
							usr.chakra -= damage
							if(usr.chakra<0) usr.chakra=0
							usr.RasenganD = damage*1.3
							usr.Chakragain()
							usr.firing = 1
							usr.overlays += 'Rasengan.dmi'
							usr.icon_state = "run"
							RD
								if(!usr.battlingRC)
									RasenganD -= rand(100,200)
								if(usr.RasenganD <= 1)
									usr << "Your Rasengan runs out of energy"
									usr.RasenganD = 0
									usr.overlays -= 'Rasengan.dmi'
									usr.overlays -= 'Rasengan.dmi'
									usr.overlays -= 'Rasengan.dmi'
									usr.overlays -= 'Rasengan.dmi'
									usr.overlays -= 'Rasengan.dmi'
									usr.Rasenganon = 0
									return
								else
									sleep(6)
									goto RD
					else
						usr<<"You fail to use rasengan!"
						return

mob/Suiton
	verb
		SuitonSuikoudannoJutsu(mob/M in oview(usr)) // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Suiton Suikoudan no Jutsu"
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
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>S</FONT><FONT COLOR=#90d1ec>u</FONT><FONT COLOR=#98d4ed>i</FONT><FONT COLOR=#a1d7ee>t</FONT><FONT COLOR=#a9daee>o</FONT><FONT COLOR=#b2ddef>n</FONT><FONT COLOR=#bae0f0>:</FONT><FONT COLOR=#c3e4f1> </FONT><FONT COLOR=#cbe7f2>Su</FONT><FONT COLOR=#d4eaf3>i</FONT><FONT COLOR=#dcedf3>r</FONT><FONT COLOR=#e5f0f4>y</FONT><FONT COLOR=#edf3f5>u</FONT><FONT COLOR=#f5f5f5>u</FONT><FONT COLOR=#e3f6f6>d</FONT><FONT COLOR=#d0f7f7>a</FONT><FONT COLOR=#bdf8f8>n</FONT><FONT COLOR=#aaf8f8> </FONT><FONT COLOR=#97f9f9>N</FONT><FONT COLOR=#84fafa>o</FONT><FONT COLOR=#72fbfb> </FONT><FONT COLOR=#5ffcfc>J</FONT><FONT COLOR=#4cfdfd>u</FONT><FONT COLOR=#39fdfd>t</FONT><FONT COLOR=#26fefe>s</FONT><FONT COLOR=#13ffff>u</FONT><FONT COLOR=#00ffff>!</FONT>"
					var/obj/SuitonSuikoudan/K = new /obj/SuitonSuikoudan
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
						view()<<view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: SUIKOUDAN"
						var/obj/SuitonSuikoudan/K = new /obj/SuitonSuikoudan
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

mob/sound
	verb
		Kyoumeisen(mob/M in get_step(src,src.dir))
			set category = "NinJutsu"
			set name = "Kyoumeisen"
			usr.Handseals()
			if(usr.firing)
				usr<<"Not now"
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
			if(!usr.handseals)
				return
			else
				usr<<"You send Vibrating sound waves through [M]'s body slowing their movement!"
				M.Move_Delay = 10
				sleep(150)
				if(M)
					M.Move_Delay = 1
					M<<"Your body recovers from the Kyoumeisen!"
					usr<<"[M]'s Kyoumeisen ends"
mob/sound
	verb
		Zankyokukuuha(mob/M in oview(usr)) // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Zankyokukuuha"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
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
			if(!M:PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 20)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				usr.random = rand (1,4)
				if(usr.random == 1||usr.random == 4)
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.chakra -= 20
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Zankyokukuuha!"
					var/obj/Zanyokukuuha/D = new /obj/Zanyokukuuha
					var/obj/Zanyokukuuha/S = new /obj/Zanyokukuuha
					var/obj/Zanyokukuuha/K = new /obj/Zanyokukuuha
					usr.target=M
					K.loc = usr.loc
					K.nin=usr.nin
					K.name="[usr]"
					usr.Chakragain()
					K.Move_Delay=2
					K.Zowner=usr
					walk_towards(K,M)
					sleep(5)
					D.loc = usr.loc
					D.nin=usr.nin
					D.name="[usr]"
					D.Move_Delay=2
					D.Zowner=usr
					walk_towards(D,M)
					sleep(5)
					S.loc = usr.loc
					S.nin=usr.nin
					S.Move_Delay=2
					S.name="[usr]"
					S.Zowner=usr
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
				usr<<"You failed to use Zankyokukuuha"

mob/sound
	verb
		Zankuuha() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Zankuuha"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
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
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return

			else // If the firing var isn't 1...
				usr.chakra -= 15
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Zankuuha!"
				var/obj/Zankuuha/K = new /obj/Zankuuha
				K.loc = usr.loc
				K.nin=usr.nin
				K.dir = usr.dir
				K.Move_Delay=2
				usr.Chakragain()
				K.name="[usr]"
				K.Zowner=usr
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
mob
	verb
		Rest()
			set category="Training"
			if(usr.Kaiten)
				usr<<"You nuts? You're spinning deflecting attacks. How do you Rest? o_O"
				return
			if(usr.battlingRC)
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.firing)
				return
			if(usr.hyoushou)
				return
			if(usr.resting)
				sleep(100)
				usr.resting=0
				usr<<"You stop resting..."
				usr.Frozen = 0
				usr.icon_state = ""
				overlays -= 'elec.dmi'
				return
			else
				if(usr.health == usr.Mhealth && usr.chakra == usr.Mchakra)
					usr<<"You don´t need to Rest..."
					return
				if(usr.meditating||usr.onwater)
					return
				usr<<"You begin to Rest..."
				usr.resting=1
				usr.Frozen = 1
				usr.icon_state = "rest"
				overlays+='elec.dmi'
				usr.rest()
				overlays-='elec.dmi'

				return
mob
	verb
		Meditate()
			set category ="Training"
			if(usr.firing)
				return
			if(usr.resting)
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
			if(usr.canmed)
				return
			if(usr.meditating)
				usr.meditating=0
				usr.icon_state=null
				src.overlays -= 'electricity.dmi'
				usr.canmed=1
				usr << "You Stop Meditating."
				spawn(100)
					usr.canmed=0
			else
				usr.meditating=1
				usr << "You Meditate."
				src.overlays += 'electricity.dmi'
				usr.icon_state="rest"
				while(usr.meditating)
					sleep(pick(100,120,110))
					if(prob(100))
						usr.random=rand(1,3)
						if(usr.random==1)
							if(usr.Mchakra<=usr.Chakracap)
								usr<<"Your Chakra increases."
								usr.chakra-=rand(50,100)
								usr.Mchakra+=rand(1000,1500)
							else
								usr<<"You have reached you Chakra cap."
						if(usr.random==2)
							if(usr.Mhealth<=usr.Stamcap)
								usr<<"Your Stamina increases."
								usr.chakra-=rand(50,100)
								usr.Mhealth+=rand(1000,1500)
							else
								usr<<"You have reached your Stam cap."
					if(prob(120))
						usr.random=rand(1,3)
						if(usr.random==1)
							if(usr.Mchakra<=usr.Chakracap)
								usr<<"Your Chakra increases."
								usr.chakra-=rand(100,200)
								usr.Mchakra+=rand(1500,2000)
							else
								usr<<"You have reached you Chakra cap."
						if(usr.random==2)
							if(usr.Mhealth<=usr.Stamcap)
								usr<<"Your Stamina increases."
								usr.chakra-=rand(100,200)
								usr.Mhealth+=rand(1500,2000)
							else
								usr<<"You have reached your Stam cap."
					if(prob(110))
						usr.random=rand(1,3)
						if(usr.random==1)
							if(usr.Mchakra<=usr.Chakracap)
								usr<<"Your Chakra increases."
								usr.chakra-=rand(500,800)
								usr.Mchakra+=rand(2000,2500)
							else
								usr<<"You have reached you Chakra cap."
						if(usr.random==2)
							if(usr.Mhealth<=usr.Stamcap)
								usr<<"Your Stamina increases."
								usr.chakra-=rand(500,800)
								usr.Mhealth+=rand(2000,2500)
							else
								usr<<"You have reached your Stam cap."
					if(usr.chakra <= 5)
						usr<<"You Stop Meditating"
						src.overlays -= 'electricity.dmi'
						usr.meditating=0
						usr.icon_state=null
						usr.canmed=1
						usr.move=1
						spawn(100)
						usr.canmed=0
mob
	proc
		rest()
			rest
			if(usr.resting)
				if(usr.health < usr.Mhealth || usr.chakra < usr.Mchakra)
					usr.health += usr.Mhealth/10
					usr.chakra += usr.Mchakra/10
					if(usr.health>usr.Mhealth)
						usr.health=usr.Mhealth
					if(usr.chakra>usr.Mchakra)
						usr.chakra=usr.Mchakra
					if(usr.health==usr.Mhealth&&usr.chakra==usr.Mchakra)
						usr.resting = 0
						usr.Frozen = 0
						usr.icon_state = ""
						usr<<"You have finish resting..."
						return
					usr.Frozen = 1
					sleep(15)
					goto rest
				else
					sleep(20)
					usr.resting = 0
					usr.Frozen = 0
					usr.icon_state = ""
					usr<<"You have finish resting..."
					if(usr.health>usr.Mhealth)
						usr.health=usr.Mhealth
					if(usr.chakra>usr.Mchakra)
						usr.chakra=usr.Mchakra

obj
	doryuuheki
		icon = 'doryuuheki.dmi'//dont have a base icon so cant make weights icon!lol
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
					view(M) << "[M] was hit by Doryuuheki for [damage] damage!!"
					M.Death(O)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	katonheki
		icon = 'katonheki.dmi'//dont have a base icon so cant make weights icon!lol
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
					view(M) << "[M] was hit by Katonheki for [damage] damage!!"
					M.Death(O)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	doryuudan
		icon = 'water.dmi'//dont have a base icon so cant make weights icon!lol
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
mob/doton
	verb
		DotonDoryuuheki() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Doton Doryuuheki"
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
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#deb887>D</FONT><FONT COLOR=#d8b78b>o</FONT><FONT COLOR=#d2b590>t</FONT><FONT COLOR=#cbb394>o</FONT><FONT COLOR=#c4b199>n</FONT><FONT COLOR=#bdaf9d> </FONT><FONT COLOR=#b7ada1>D</FONT><FONT COLOR=#b0aba6>o</FONT><FONT COLOR=#a9a9a9>r</FONT><FONT COLOR=#a69595>y</FONT><FONT COLOR=#a28080>u</FONT><FONT COLOR=#9e6a6a>u</FONT><FONT COLOR=#9b5555>h</FONT><FONT COLOR=#974040>e</FONT><FONT COLOR=#932b2b>k</FONT><FONT COLOR=#8f1515>i</FONT><FONT COLOR=#8b0000>!</FONT>"
				sleep(30)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/doryuuheki/A = new /obj/doryuuheki/
					var/obj/doryuuheki/B = new /obj/doryuuheki/
					var/obj/doryuuheki/C = new /obj/doryuuheki/
					var/obj/doryuuheki/D = new /obj/doryuuheki/
					var/obj/doryuuheki/E = new /obj/doryuuheki/
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
					var/obj/doryuuheki/A = new /obj/doryuuheki/
					var/obj/doryuuheki/B = new /obj/doryuuheki/
					var/obj/doryuuheki/C = new /obj/doryuuheki/
					var/obj/doryuuheki/D = new /obj/doryuuheki/
					var/obj/doryuuheki/E = new /obj/doryuuheki/
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
					var/obj/doryuuheki/A = new /obj/doryuuheki/
					var/obj/doryuuheki/B = new /obj/doryuuheki/
					var/obj/doryuuheki/C = new /obj/doryuuheki/
					var/obj/doryuuheki/D = new /obj/doryuuheki/
					var/obj/doryuuheki/E = new /obj/doryuuheki/
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
					var/obj/doryuuheki/A = new /obj/doryuuheki/
					var/obj/doryuuheki/B = new /obj/doryuuheki/
					var/obj/doryuuheki/C = new /obj/doryuuheki/
					var/obj/doryuuheki/D = new /obj/doryuuheki/
					var/obj/doryuuheki/E = new /obj/doryuuheki/
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
				firing=0
				return
mob/wind
	verb
		KazeNoYaiba()//dance 3
			set name = "Kaze No Yaiba"
			set desc = ""
			set category = "NinJutsu"
			usr.Handseals()
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
			if(usr.PK==0)
				usr<<"NONPK ZONE!"
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
			for(var/mob/M in oview(2))
				if (M.ingat == 1||M.intank == 1||usr.Kaiten == 1)				.
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
				if (M.sphere == 1)
					usr<<"Your attack bounces off of the sand!"
				if (usr.firing == 1)
					usr<<"Not right now!"
				if(M.hit == 1)
					..()
				if (M.Kaiten == 1)
					var/damage = round(usr.tai/4)
					usr <<"You attack [M] but their kaiten reflects the damage back at you."
					M <<"You reflect [usr]'s attack causing them to hurt themself."
					usr.health -= damage
					usr.Death(M)
				else					//otherwise...
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Kaze No Yaiba!"
					usr << "You attack [M] with Kaze No Yaiba!"
					var/damage = round(usr.tai)
					view() << "[usr] hits [M] with Kaze No Yaiba for [damage] damage!"
					M.health -= damage
					M.Death(usr)
					M.hit = 1
					if(usr.Mtai <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.taiexp += rand(1,10)
							usr.Tai()
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
//RENKUUDAN IS THE SECOND OF THE FUUTON JUTSUS

obj
	shibari
		icon = 'kagemane.dmi'
		icon_state = "head"
		density=1
		Move()
			..()
			var/obj/shibaritrail/T = new /obj/shibaritrail
			if(src.dir == NORTH)
				T.loc = src.loc
				T.y = src.y-1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == SOUTH)
				T.loc = src.loc
				T.y = src.y+1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == WEST)
				T.loc = src.loc
				T.x = src.x+1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == EAST)
				T.loc = src.loc
				T.x = src.x-1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == NORTHWEST)
				T.loc = src.loc
				T.y = src.y-1
				T.x = src.x+1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == NORTHEAST)
				T.loc = src.loc
				T.y = src.y-1
				T.x = src.x-1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == SOUTHWEST)
				T.loc = src.loc
				T.x = src.x+1
				T.y = src.y+1
				T.dir = src.dir
				T.owner=src.owner
			if(src.dir == SOUTHEAST)
				T.loc = src.loc
				T.x = src.x-1
				T.y = src.y+1
				T.dir = src.dir
				T.owner=src.owner
		Bump(A)
			var/mob/O = src.owner
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
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				src.loc=M.loc
				for(var/mob/C in src.loc)
					if(C == src.target)
						src.move=0
						C.Frozen=1
						C.caught=1
						LOL
							if(O.chakra<=5&&O.Kshibari)
								C.Frozen=0
								O.Frozen=0
								C.caught=0
								C.overlays-='kagekubi.dmi'
								C.overlays-='kagekubi.dmi'
								C.overlays-='kagekubi.dmi'
								C.kubi=0
								for(var/obj/shibaritrail/T in world)
									if(T.owner==O)
										del(T)
										O.Frozen=0
										C.caught=0
										C.overlays-='kagekubi.dmi'
										C.overlays-='kagekubi.dmi'
										C.overlays-='kagekubi.dmi'
										C.kubi=0
								del(src)
							else
								O.chakra-=170
								sleep(10)
								goto LOL
			if(O.chakra<=5)
				del(src)
				O<<"You have run out of chakra"
				for(var/obj/shibaritrail/T in world)
					O.Frozen=0
					if(T.owner == O)
						O.Frozen=0
						del(T)
						return
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					for(var/obj/shibaritrail/B in world)
						if(B.owner==src.owner)
							del(B)
					del(src)
			if(istype(A,/obj/))
				for(var/obj/shibaritrail/B in world)
					if(B.owner==src.owner)
						del(B)
					del(src)
				del(src)
obj
	shibaritrail
		icon = 'kagemane.dmi'
		icon_state="trail"

obj
	katonG
		icon = 'katons.dmi'
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
				var/damage = round(src.nin*1.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Katon Housenka for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	snakeG
		icon = 'snakes.dmi'
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
				var/damage = round(src.nin*1.3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by  Sen'eijashu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	katonEndan
		icon = 'realendan.dmi'
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
				var/damage = round(src.nin*1.2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Katon Karyuu Endan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	SuitonDaib
		icon = 'suitons.dmi'
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
					view(M) << "[M] was hit by Suiton Daibakufu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Suishouha
		icon = 'WATERBLAST.dmi'
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
				var/damage = round(src.nin*2.3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Suishouha for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	SSuishouha
		icon = 'Warmor.dmi'
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
				var/damage = round(src.nin*1.45)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Suishouha for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Ninpou
		icon = 'ninpou.dmi'
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
					view(M) << "[M] was hit by Suishouha for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	Suiryedan
		icon = 'suiryedan.dmi'
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
				var/damage = round(src.nin*1.2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Suiton Suiryuudan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	MSuiryedan
		icon = 'IceDragon.dmi'
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
				var/damage = round(src.nin*1.2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Makyou Suiryuudan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	KRyuuka
		icon = 'Ryuuka.dmi'
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
					view(M) << "[M] was hit by Katon Ryuuka for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

	WindStorm
		icon = 'WaterStrom.dmi'
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
				var/damage = round(src.nin*1.3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Wind for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	Clayspider
		icon = 'Clay Spider.dmi'
		icon_state = ""
		layer = 10
		New()
			.=..()
			spawn()
				while(src)
					sleep(1)
					for(var/mob/M in oview(1,src))
						if(M.Kaiten||M.sphere)
							return
						if(M.counter)
							del(src)
							return
						if(M.PK==0)
							return
						if(M.hokage)
							del(src)
							return
						if(M.Hidan)
							del(src)
							return
						if(M.Kakuzu)
							del(src)
							return
						if(M.Deidara)
							del(src)
							return
						if(M.Sasori)
							del(src)
							return
						if(M.Itachi)
							del(src)
							return
						var/damage = round(src.nin*1.2)
						if(damage >= 1)
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
							view(M) <<"[M] was injured by [usr]'s Clay Spider Mines for [damage] damage!!"
							var/mob/O = src.Gowner
							M.Death(O)
							del(src)

obj//#REF 400-59A
	Isand
		icon = 'IronS.dmi'
		icon_state = ""
		layer=10
		New()
			.=..()
			spawn()
				while(src)
					sleep(8)
					for(var/mob/M in oview(1,src))
						if(M.Kaiten||M.sphere)
							return
						if(M.counter)
							del(src)
							return
						if(M.PK==0)
							return
						var/damage = round(src.nin*3)
						if(damage >= 1)
							M.health -= damage
							view() << "[M] was thrown by [usr]'s Iron Sand!!"
							M.loc=locate(usr.x,usr.y-1,usr.z)
							var/mob/O = src.Gowner
							M.Death(O)
obj//#REF 400-59A
	Gsand
		icon = 'SandF.dmi'
		icon_state = ""
		layer=10
		New()
			.=..()
			spawn()
				while(src)
					sleep(5)
					for(var/mob/M in oview(1,src))
						if(M.Kaiten||M.sphere)
							return
						if(M.counter)
							del(src)
							return
						if(M.PK==0)
							return
						var/damage = round(src.nin)
						if(damage >= 1)
							M.health -= damage
							view() << "[M] was thrown by [usr]'s Sand!!"
							if(M)
								if(M.dir==NORTH)
									step(M,NORTH)
									sleep(2)
									step(M,NORTH)
									sleep(2)
								if(M.dir==SOUTH)
									step(M,SOUTH)
									sleep(2)
									step(M,SOUTH)
									sleep(2)
								if(M.dir==EAST)
									step(M,EAST)
									sleep(2)
									step(M,EAST)
									sleep(2)
								if(usr.dir==WEST)
									step(M,WEST)
									sleep(2)
									step(M,WEST)
									sleep(2)
							var/mob/O = src.Gowner
							M.Death(O)
obj
	Kamui
		icon = 'Susanoo.dmi'
		icon_state = ""
		density=1
		layer=10
		New()
			.=..()
			spawn()
				while(src)
					sleep(10)
					for(var/mob/M in oview(1,src))
						if(M.counter)
							del(src)
							return
						if(M.PK==0)
							return
						if(M.hokage)
							del(src)
							return
						if(M.Hidan)
							del(src)
							return
						if(M.Kakuzu)
							del(src)
							return
						if(M.Deidara)
							del(src)
							return
						if(M.Sasori)
							del(src)
							return
						if(M.Itachi)
							del(src)
							return
						var/damage = round(src.nin*1.25)
						if(damage >= 1)
							M.health -= damage
							M.chakra -= damage
							M.loc=locate(src.x,src.y,src.z)
							view(M) << "[M] was absorbed and injured for [damage] damage!!"
							var/mob/O = src.Gowner
							M.Death(O)
obj
	Shark
		icon = 'Sharks.dmi'
		icon_state = ""
		density=1
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
				var/damage = round(src.nin*0.9)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Suiton Same No Jutsu for [damage] damage!!"
					sleep(1)
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	Sharks
		icon = 'Sharks.dmi'
		icon_state = "sharks"
		layer=10
		New()
			.=..()
			spawn()
				while(src)
					sleep(0.5)
					for(var/mob/M in oview(0,src))
						if(M.counter)
							del(src)
							return
						if(M.hokage)
							del(src)
							return
						if(M.Hidan)
							del(src)
							return
						if(M.Kakuzu)
							del(src)
							return
						if(M.PK==0)
							return
						if(M.Deidara)
							del(src)
							return
						if(M.Sasori)
							del(src)
							return
						if(M.Itachi)
							del(src)
							return
						var/damage = round(src.nin*1.25)
						if(damage >= 1)
							M.health -= damage
							view(M) << "[M] was biten by Sharks for [damage] damage!!"
							var/mob/O = src.Gowner
							M.Death(O)
							del(src)
obj
	AMA
		icon = 'amaterasu.dmi'
		icon_state = ""
		layer=10
		New()
			.=..()
			spawn()
				while(src)
					sleep(5)
					for(var/mob/M in oview(0,src))
						if(M.counter)
							del(src)
							return
						if(M.hokage)
							del(src)
							return
						if(M.Hidan)
							del(src)
							return
						if(M.Kakuzu)
							del(src)
							return
						if(M.PK==0)
							return
						if(M.Deidara)
							del(src)
							return
						if(M.Sasori)
							del(src)
							return
						if(M.Itachi)
							del(src)
							return
						var/damage = round(src.nin*1.25)
						if(damage >= 1)
							M.health -= damage
							view(M) << "[M] was burnt by Amaterasu for [damage] damage!!"
							var/mob/O = src.Gowner
							M.Death(O)
/*obj
	FI
		icon = 'FI.dmi'
		icon_state = ""
		layer=10
		New()
			.=..()
			spawn()
				while(src)
					sleep(5)
					for(var/mob/M in oview(0,src))
						if(!M.PK)
							return
						var/damage = round(src.nin*1.7)
						if(damage >= 1)
							M.health -= damage
							view(M) << "[M] was burnt by a flame for [damage] damage!!"
							var/mob/O = src.Gowner
							M.Death(O)*/
obj
	KirinFull
		icon = 'KirinFull.dmi'
		icon_state = ""
		layer=10
		New()
			.=..()
			spawn()
				while(src)
					sleep(0.5)
					for(var/mob/M in oview(1,src))
						if(M.Kaiten||M.sphere)
							return
						if(M.counter)
							del(src)
							return
						if(M.PK==0)
							return
						if(M.hokage)
							del(src)
							return
						if(M.Hidan)
							del(src)
							return
						if(M.Kakuzu)
							del(src)
							return
						if(M.Sasori)
							del(src)
							return
						if(M.Deidara)
							del(src)
							return
						if(M.Itachi)
							del(src)
							return
						var/damage = round(src.nin)
						if(damage >= 1)
							M.health -= damage
							view(M) << "[M] was struck by [usr]'s lightning for [damage] damage!!"
							var/mob/O = src.Gowner
							M.Death(O)
							del(src)

obj
	Hyoton_Kokuryubo_Fusetsu
		icon = 'Hyoton Kokuryubo Fusetsu.dmi'
		icon_state = "head"
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
				var/damage = round(src.nin*1.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Hyoton Kokuryubo for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	DotonDD
		icon = 'dotons.dmi'
		icon_state = ""
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
				var/damage = round(src.nin*1.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Doton Doryo Dango for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	TeshiSendan
		icon = 'bonebullets.dmi'
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
				var/damage = round(src.tai*1.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Bone Bullets for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	SuitonSuikoudan
		icon = 'suiryedan.dmi'
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
				var/damage = round(src.nin*1.2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Suiton Suikoudan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	MakyouSuikoudan
		icon = 'IceDragon.dmi'
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
				var/damage = round(src.nin*1.2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Makyou Suikoudan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Zanyokukuuha
		icon = 'daitoppa.dmi'
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
				var/damage = round(src.nin)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Zanyokukuuha for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	Zankuuha
		icon = 'daitoppa.dmi'
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
				var/damage = round(src.nin*1.2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was by Zankuuha for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Doryuudan5
		icon = 'doryuumissle.dmi'
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
				var/damage = round(src.nin*1.6)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was by Doryuudan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	FuutonRenkuudan
		icon = 'fuuton.dmi'
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
				var/damage = round(src.nin*1.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Renkuudan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Fdaitoppa
		icon = 'daitoppa.dmi'
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
				var/damage = round(src.nin)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Daitoppa for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	Needle
		icon = 'daitoppa.dmi'
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
				var/damage = round(src.nin*1.1)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Needles for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	kazedangan
		icon = 'kazedangan.dmi'
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
					view(M) << "[M] was by Kaze Dangan for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Ikazuchi
		icon = 'bolt.dmi'
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
				var/damage = round(src.nin*1.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Ikazuchi No Kiba for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	Raikyuu
		icon = 'rai.dmi'
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
				var/damage = round(src.nin*1.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Raikyuu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	RairyuuTatsumaki
		icon = 'rairyuu.dmi'
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
				var/damage = round(src.nin*1.1)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Rairyuu No Tatsumaki for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Sensatsu
		icon = 'needles.dmi'
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
				var/damage = round(src.nin*1.3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Sensatsu Suishou for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Sshuriken
		icon = 'SShuriken.dmi'
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
				var/damage = round(src.nin)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Suna Shuriken for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	Ice1
		icon='juvenile ice.dmi'
		icon_state="Ice2"
		density=0
		layer = MOB_LAYER+2

obj
	Ice2
		icon='juvenile ice.dmi'
		icon_state="Ice"
		density=1


obj
	FutagozaNoJutsu
		icon = 'juvenile ice.dmi'
		icon_state = "Ice3"
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
				var/damage = round(src.nin*1.8)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Futagoza No Jutsu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	YamiShuuha
		icon = 'Yami Shuuha.dmi'
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
				var/damage = round(src.nin*3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] wat hit by Yami Shuuha for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
	WindStrike
		icon = 'WindStrike.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] wat hit by WindStrike Shuuha for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Juvenile_Ice
	verb
		FutagozaNoJutsu() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Futagoza No Jutsu"
			usr.Handseals()
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
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
			if(usr.chakra <= 1000)
				usr<<"You dont have enough chakra!"
				return
			else // If the firing var isn't 1...
				if(SN >= 100)
					usr.chakra -= 1000
					usr.firing = 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#0000ff>F</FONT><FONT COLOR=#0040ff>u</FONT><FONT COLOR=#0080ff>t</FONT><FONT COLOR=#00c0ff>a</FONT><FONT COLOR=#00ffff>g</FONT><FONT COLOR=#00c0ff>o</FONT><FONT COLOR=#0080ff>z</FONT><FONT COLOR=#0040ff>a</FONT><FONT COLOR=#0000ff> </FONT><FONT COLOR=#0033ff>N</FONT><FONT COLOR=#0066ff>o</FONT><FONT COLOR=#009aff> </FONT><FONT COLOR=#00cdff>J</FONT><FONT COLOR=#00ffff>u</FONT><FONT COLOR=#00c0ff>t</FONT><FONT COLOR=#0080ff>s</FONT><FONT COLOR=#0040ff>u</FONT><FONT COLOR=#0000ff>!</FONT></FONT>"
					var/obj/FutagozaNoJutsu/K = new()
					var/obj/Ice1/A = new()
					var/obj/Ice2/B = new()
					A.dir=usr.dir
					B.dir=usr.dir
					usr.Chakragain()
					if(A.dir==NORTH)
						A.pixel_y=-32
					if(A.dir==SOUTH)
						A.pixel_y=32
					if(A.dir==WEST)
						A.pixel_x=32
					if(A.dir==EAST)
						A.pixel_x=-32
					if(B.dir==NORTH)
						B.pixel_y=-64
					if(B.dir==SOUTH)
						B.pixel_y=64
					if(B.dir==WEST)
						B.pixel_x=64
					if(B.dir==EAST)
						B.pixel_x=-64
					K.loc = usr.loc
					K.nin=usr.nin
					K.overlays+=A
					K.overlays+=B
					K.dir = usr.dir
					K.name="[usr]"
					K.Move_Delay=1.9
					K.Gowner=usr
					walk(K,usr.dir)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.ninexp += rand(5,10)
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
						usr.random = rand(1,15)
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
						usr.chakra -= 100
						usr.firing = 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#0000ff>F</FONT><FONT COLOR=#0040ff>u</FONT><FONT COLOR=#0080ff>t</FONT><FONT COLOR=#00c0ff>a</FONT><FONT COLOR=#00ffff>g</FONT><FONT COLOR=#00c0ff>o</FONT><FONT COLOR=#0080ff>z</FONT><FONT COLOR=#0040ff>a</FONT><FONT COLOR=#0000ff> </FONT><FONT COLOR=#0033ff>N</FONT><FONT COLOR=#0066ff>o</FONT><FONT COLOR=#009aff> </FONT><FONT COLOR=#00cdff>J</FONT><FONT COLOR=#00ffff>u</FONT><FONT COLOR=#00c0ff>t</FONT><FONT COLOR=#0080ff>s</FONT><FONT COLOR=#0040ff>u</FONT><FONT COLOR=#0000ff>!</FONT></FONT>"
						var/obj/FutagozaNoJutsu/K = new()
						var/obj/Ice1/A = new()
						var/obj/Ice2/B = new()
						usr.Chakragain()
						A.dir=usr.dir
						B.dir=usr.dir
						if(A.dir==NORTH)
							A.pixel_y=-32
						if(A.dir==SOUTH)
							A.pixel_y=32
						if(A.dir==WEST)
							A.pixel_x=32
						if(A.dir==EAST)
							A.pixel_x=-32
						if(B.dir==NORTH)
							B.pixel_y=-64
						if(B.dir==SOUTH)
							B.pixel_y=64
						if(B.dir==WEST)
							B.pixel_x=64
						if(B.dir==EAST)
							B.pixel_x=-64
						K.loc = usr.loc
						K.nin=usr.nin
						K.overlays+=A
						K.overlays+=B
						K.dir = usr.dir
						K.name="[usr]"
						K.Move_Delay=1.9
						K.Gowner=usr
						walk(K,usr.dir)
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
						sleep(20)
						usr.firing = 0
						sleep(45)
						del(K)
