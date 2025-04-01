obj
	Arera
		icon='sandsearch.dmi'
		layer = MOB_LAYER+2
mob/Gaara
	verb
		SandTsunami()
			set category = "NinJutsu"
			set name = "Sand Arare"
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
				view()<<"[usr]: Suna Arare!"
				var/obj/Arera/F = new /obj/Arera/
				var/obj/Arera/G = new /obj/Arera/
				var/obj/Arera/H = new /obj/Arera/
				var/obj/Arera/I = new /obj/Arera/
				var/obj/Arera/J = new /obj/Arera/
				var/obj/Arera/L = new /obj/Arera/
				var/obj/Arera/A = new /obj/Arera/
				var/obj/Arera/B = new /obj/Arera/
				var/obj/Arera/M2 = new /obj/Arera/
				var/obj/Arera/N = new /obj/Arera/
				var/obj/Arera/O = new /obj/Arera/
				var/obj/Arera/P = new /obj/Arera/
				var/obj/Arera/D = new /obj/Arera/
				var/obj/Arera/E = new /obj/Arera/
				var/obj/Arera/C = new /obj/Arera/
				var/obj/Arera/K = new /obj/Arera/
				var/obj/Arera/Q = new /obj/Arera/
				var/obj/Arera/AJ = new /obj/Arera/
				var/obj/Arera/AK = new /obj/Arera/
				var/obj/Arera/AL = new /obj/Arera/
				var/obj/Arera/AM = new /obj/Arera/
				var/obj/Arera/AN = new /obj/Arera/
				var/obj/Arera/AO = new /obj/Arera/
				var/obj/Arera/AP = new /obj/Arera/
				var/obj/Arera/AQ = new /obj/Arera/
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
				K.Arera=1
				A.loc = locate(usr.x+1,usr.y,usr.z)
				A.Arera=1
				C.loc = locate(usr.x-1,usr.y,usr.z)
				C.Arera=1
				B.loc = locate(usr.x,usr.y+1,usr.z)
				B.Arera=1
				D.loc = locate(usr.x,usr.y-1,usr.z)
				D.Arera=1
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				E.Arera=1
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				F.Arera=1
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				G.Arera=1
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				H.Arera=1
				I.loc = locate(usr.x+2,usr.y,usr.z)
				I.senban=1
				J.loc = locate(usr.x-2,usr.y,usr.z)
				J.senban=1
				L.loc = locate(usr.x,usr.y+2,usr.z)
				L.senban=1
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				M2.senban=1
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				N.Arera=1
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
				O.Arera=1
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				P.Arera=1
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				Q.Arera=1
				AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
				AJ.Arera=1
				AK.loc = locate(usr.x+1,usr.y+2,usr.z)
				AK.Arera=1
				AL.loc = locate(usr.x+1,usr.y-2,usr.z)
				AL.Arera=1
				AM.loc = locate(usr.x-1,usr.y+2,usr.z)
				AM.Arera=1
				AN.loc = locate(usr.x+2,usr.y+1,usr.z)
				AN.Arera=1
				AO.loc = locate(usr.x-2,usr.y-1,usr.z)
				AO.Arera=1
				AP.loc = locate(usr.x-2,usr.y+1,usr.z)
				AP.Arera=1
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AQ.Arera=1
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
				for(var/mob/M in oview(2,usr))
					var/damage=round(usr.nin*1.5)
					view()<<"[M] has taken [damage] damage from [usr]'s Suna Arera"
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


mob/var/tmp/GS=0
mob/Gaara
	verb
		SandC() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Sand Control"
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
				if(usr.GS) return
				else
					usr<<"You can now control your sand"
					usr.GS=1
					sleep(50)
					usr.GS=0


obj
	STsunami
		icon = 'IronS.dmi'//dont have a base icon so cant make weights icon!lol
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
				var/damage = round(src.nin*3)
				if(damage >= 1)
					M.health -= damage
					sleep(2)
					view(M) << "[M] was hit by Iron Sand Imprisonment for [damage] damage!!"
					M.Death(O)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/KazeK
	verb
		Sand_Tsu() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Iron Sand Imprisonment"
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
				usr.chakra -= 8500
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=silver> Says: <font size=1><font face=verdana><b><font color=silver> Iron Sand Imprisonment!!"
				usr.firing=1
				sleep(5)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/STsunami/A = new /obj/STsunami/
					var/obj/STsunami/B = new /obj/STsunami/
					var/obj/STsunami/C = new /obj/STsunami/
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
					var/obj/STsunami/A = new /obj/STsunami/
					var/obj/STsunami/B = new /obj/STsunami/
					var/obj/STsunami/C = new /obj/STsunami/
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
					var/obj/STsunami/A = new /obj/STsunami/
					var/obj/STsunami/B = new /obj/STsunami/
					var/obj/STsunami/C = new /obj/STsunami/
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
					var/obj/STsunami/A = new /obj/STsunami/
					var/obj/STsunami/B = new /obj/STsunami/
					var/obj/STsunami/C = new /obj/STsunami/
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
				usr.firing=0
				return

obj//ERROR
	babunarm2
		density=1
		icon='sandsp.dmi'
		icon_state="trail"
		New()
			..()
			spawn()
				src.delete()
		proc/delete()
			spawn(15)
				del(src)
obj//ERROR
	sunafist
		density=1
		icon='sandsp.dmi'
		icon_state="begin"
		Move()
			..()
			var/obj/babunarm2/T = new /obj/babunarm2
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
					view(M) << "[M] was hit by Sand Spear for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Gaara
	verb
		Desert_AD()
			set category = "NinJutsu"
			set name = "Suna No Yari"
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
				view()<<"<font color=silver><b><font face=verdana>[usr]: Sand Spear!!"
				usr.chakra -= 500
				var/obj/sunafist/B = new /obj/sunafist
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
mob/Gaara
	verb
		SandArmor()
			set category = "NinJutsu"
			set name = "Sand Armor"
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
			if(!usr.Sarmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Sand Armor!"
				usr.overlays += 'Sarmor.dmi'
				usr.Sarmor =1
				usr.nin = usr.nin*1.1
				sleep(5)
				sand
				if(usr.Sarmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'Sarmor.dmi'
						usr.Sarmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto sand
			else if(usr.Sarmor)
				usr.overlays -= 'Sarmor.dmi'
				usr.Sarmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the sand armor."
				sleep(5)
				return

mob/Gaara
	verb
		SabakuSousou()
			set category = "NinJutsu"
			set name = "Sabaku Sousou"
			usr.Handseals()
			if(!usr.handseals)
				return
			for(var/mob/M in oview(5,usr))
				if(usr.sphere)
					return
				if(src.Kaiten)
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
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					Death(usr)
					return
				if(M.ritual)
					usr<<"Now, let us savor the utmost suffering together!."
					M<<"Dude! That was weak."
					usr.health -= Mnin
					Death(usr)
					return
				if(usr.chakra<=10000)
					usr<<"Not Enough Chakra"
					return
				if(M.captured)
					usr.firing=1
					var/damage=usr.nin*1.3
					view(usr)<<"Sabaku Sousou!"
					flick("sousou",M)
					M.overlays-='kyuu.dmi'
					M.overlays-='kyuu.dmi'
					usr.Chakragain()
					M.overlays-='kyuu.dmi'
					M.health-=damage
					usr.firing=0
					if(M.health<=0)
						M.Death(usr)
					sleep(20)
					M.captured=0
				else
					return



mob/Gaara
	verb
		SabakuKyuu(mob/M in oview(3))
			set category = "NinJutsu"
			set name = "Sabaku Kyuu"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.firing)
				return
			if(usr.sphere)
				return
			if(usr.Kaiten)
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
			if(!M.PK)
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
			if(M.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				M<<"Dude! That was weak."
				usr.health -= Mnin
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
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Sabaku Kyuu!"
					M.overlays+='kyuu.dmi'
					M.captured=1
					usr.Chakragain()
					M.Frozen=1
					sleep(50)
					if(M)
						M.captured=0
						M.Frozen=0
						M.overlays-='kyuu.dmi'
						M.overlays-='kyuu.dmi'
						M.overlays-='kyuu.dmi'
						M.overlays-='kyuu.dmi'
						usr.firing=0
					return
				else
					usr.random=rand(1,5)
					if(usr.random==1)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Sabaku Kyuu!"
						M.overlays+='kyuu.dmi'
						M.captured=1
						M.Frozen=1
						sleep(50)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='kyuu.dmi'
							M.overlays-='kyuu.dmi'
							M.overlays-='kyuu.dmi'
							M.overlays-='kyuu.dmi'
							usr.firing=0
						return
					if(usr.random==2)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Sabaku Kyuu!"
						M.overlays+='kyuu.dmi'
						M.captured=1
						M.Frozen=1
						sleep(50)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='kyuu.dmi'
							M.overlays-='kyuu.dmi'
							M.overlays-='kyuu.dmi'
							M.overlays-='kyuu.dmi'
						usr.firing=0
						return
					if(usr.random==3)
						usr<<"You fail to use Sabaku Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==4)
						usr<<"You fail to use Sabaku Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==5)
						usr<<"You fail to use Sabaku Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					sleep(50)
					usr.firing=0
					if(M)
						M.captured=0

mob/Gaara
	verb
		SunaShuriken()
			set category = "NinJutsu"
			set name = "Suna Shuriken"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(!usr.PK)
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
			if(usr.firing||usr.Kaiten||usr.sphere||usr.ritual)
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			else // If the firing var isn't 1...
				if(usr.SSU >= 25)
					usr.chakra -= 15
					usr.firing = 1
					usr.SSU += 1
					view()<<"[usr] Suna Shuriken!!!"
					var/obj/Sshuriken/K = new /obj/Sshuriken
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
						usr.chakra -= 15
						usr.firing = 1
						usr.SSU += 1
						view()<<"[usr] Suna Shuriken!!!"
						var/obj/Sshuriken/K = new /obj/Sshuriken
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
mob/Gaara
	verb
		SunaShushinNoJutsu(mob/M in oview(10))
			set category = "NinJutsu"
			set name = "Suna Shushin No Jutsu"
			if(usr.firing||usr.Kaiten||usr.sphere)
				return
			if(!usr.PK)
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
			if(!M.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 17)
				usr<<"Not enough Chakra!"
			if(usr.jailtime)
				return
			else
				usr.overlays += 'Sshushin.dmi'
				usr.chakra -= 17
				usr.loc = locate(M.x,M.y-1,M.z)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Suna Shushin No Jutsu!!"
				sleep(8)
				usr.overlays -= 'Sshushin.dmi'
				usr.overlays -= 'Sshushin.dmi'
				usr.overlays -= 'Sshushin.dmi'
				usr.overlays -= 'Sshushin.dmi'
mob/Gaara
	verb
		SandSphere()
			set category = "NinJutsu"
			set name = "Sand Sphere"
			if(usr.Henge)
				usr<<"Not While Your In Henge"
				return
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.firing&&!usr.sphere)
				usr<<"Not Now"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(!usr.sphere)
				view()<<"<font color = blue>[usr]: Sand Sphere!"
				usr.Frozen = 1
				usr.firing = 1
				usr.sphere = 1
				usr.overlays += /obj/Sphere
				src.verbs += typesof(/mob/Sphere/verb)

			else
				usr.Frozen = 0
				usr.firing = 0
				usr.sphere = 0
				usr.overlays -= /obj/Sphere
				usr<<"You Take Down Your Sand Sphere"
				src.verbs -= typesof(/mob/Sphere/verb)


mob/Sphere
	verb
		AttackNorth()
			set category = "Sphere"
			set name = "Attack north"
			for(var/mob/M in get_step(usr,NORTH))
				if(M.ingat||M.intank)				.
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.Kaiten||M.counter)
					return
				if(M.sphere)
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				if(M.ritual)
					usr<<"Now, let us savor the utmost suffering together!."
					M<<"Dude! That was weak."
					usr.health -= Mnin
					Death(usr)
					return
				var/damage = usr.nin
				usr.chakra -= 10
				M.overlays += 'up.dmi'
				M.health -= damage
				sleep(3)
				M.overlays -= 'up.dmi'
				if(M.health <=0)
					M.Death(usr)

		AttackSouth()
			set category = "Sphere"
			set name = "Attack south"
			for(var/mob/M in get_step(usr,SOUTH))
				if(M.ingat||M.intank)				.
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				if(M.Kaiten||M.counter)
					return
				if(M.sphere)
					return
				if(M.ritual)
					usr<<"Now, let us savor the utmost suffering together!."
					M<<"Dude! That was weak."
					usr.health -= Mnin
					Death(usr)
					return
				var/damage = usr.nin
				usr.chakra -= 10
				M.overlays += 'up.dmi'
				M.health -= damage
				sleep(3)
				M.overlays -= 'up.dmi'
				if(M.health <=0)
					M.Death(usr)
		AttackWest()
			set category = "Sphere"
			set name = "Attack west"
			for(var/mob/M in get_step(usr,WEST))
				if(M.ingat||M.intank)				.
					return
				if(M.Kaiten||M.counter)
					return
				if(M.sphere)
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
				if(M.ritual)
					usr<<"Now, let us savor the utmost suffering together!."
					M<<"Dude! That was weak."
					usr.health -= Mnin
					Death(usr)
					return
				var/damage = usr.nin
				usr.chakra -= 10
				M.overlays += 'up.dmi'
				M.health -= damage
				sleep(3)
				M.overlays -= 'up.dmi'
				if(M.health <=0)
					M.Death(usr)
		AttackEast()
			set category = "Sphere"
			set name = "Attack east"
			for(var/mob/M in get_step(usr,EAST))
				if(M.ingat||M.intank)				.
					return
				if(M.Kaiten||M.counter)
					return
				if(M.sphere)
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
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
				if(M.ritual)
					usr<<"Now, let us savor the utmost suffering together!."
					M<<"Dude! That was weak."
					usr.health -= Mnin
					Death(usr)
					return
				var/damage = usr.nin
				usr.chakra -= 10
				M.overlays += 'up.dmi'
				M.health -= damage
				sleep(3)
				M.overlays -= 'up.dmi'
				if(M.health <=0)
					M.Death(usr)