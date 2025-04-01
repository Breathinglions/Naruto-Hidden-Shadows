

obj/
	YLog
		icon = 'Log ThrowY.dmi'
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
				var/damage = round(src.nin*1.6)
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
obj
	tree
		icon='YamatoJutsu Tree.dmi'
		layer = MOB_LAYER+2

mob/Yamato
	verb
		LogThrow()
			set category = "NinJutsu"
			set name = "Log Throw"
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else // If the firing var isn't 1...
				usr.chakra -= 10000
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Log Throw!</font>"
				var/obj/YLog/S1 = new /obj/YLog/
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

mob/Yamato
	verb
		WoodCage(mob/M in oview(10))
			set category = "NinJutsu"
			set name = "Wood Prison"
			usr.Handseals()
			if(!usr.handseals||usr.firing||usr.sphere||usr.Kaiten||M.Kaiten)return
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
			if(M.captured)
				usr<<"He is already caught!"
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			else
				if(usr.KyuuN>=100)
					usr.chakra -= 10000
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.KyuuN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Wood Prison!"
					M.overlays+='YamatoJutsu Prison.dmi'
					M.captured=1
					usr.Chakragain()
					M.Frozen=1
					sleep(50)
					if(M)
						M.captured=0
						M.Frozen=0
						M.overlays-='YamatoJutsu Prison.dmi'
						M.overlays-='YamatoJutsu Prison.dmi'
						M.overlays-='YamatoJutsu Prison.dmi'
						M.overlays-='YamatoJutsu Prison.dmi'
						usr.firing=0
					return
				else
					usr.random=rand(1,5)
					if(usr.random==1)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Wood Prison!"
						M.overlays+='YamatoJutsu Prison.dmi'
						M.captured=1
						M.Frozen=1
						sleep(50)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='YamatoJutsu Prison.dmi'
							M.overlays-='YamatoJutsu Prison.dmi'
							M.overlays-='YamatoJutsu Prison.dmi'
							M.overlays-='YamatoJutsu Prison.dmi'
							usr.firing=0
						return
					if(usr.random==2)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Wood Prison!"
						M.overlays+='YamatoJutsu Prison.dmi'
						M.captured=1
						M.Frozen=1
						sleep(50)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='YamatoJutsu Prison.dmi'
							M.overlays-='YamatoJutsu Prison.dmi'
							M.overlays-='YamatoJutsu Prison.dmi'
							M.overlays-='YamatoJutsu Prison.dmi'
						usr.firing=0
						return
					sleep(50)
					usr.firing=0
					if(M)
						M.captured=0

mob/Yamato
	verb
		WoodShield() // Verb used for firing the beam
			set category = "GenJutsu"
			set name = "Wood shield"
			if(usr.Henge)
				usr<<"Not While Your In Henge"
				return
			if(usr.chakra < 100)
				usr<<"You dont have enough chakra!"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.InKASS)
				usr<<"Not while you are in your Kyuubi Aura Shield!"
				return
			if(!usr.Kaiten&&!usr.firing)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Wood Sheild!!!"
				usr.Frozen = 1
				usr.firing = 1
				usr.overlays += 'YamatoJutsu Shield.dmi'
				usr.Kaiten =1
				OMG
				if(usr.Kaiten)
					usr.chakra -=100
					if(usr.chakra <= 99)
						usr.firing = 0
						usr.overlays -= 'YamatoJutsu Shield.dmi'
						usr.Kaiten = 0
					else
						sleep(4)
						goto OMG
			else if(usr.Kaiten)
				usr.Frozen = 0
				usr.firing = 0
				usr.overlays -= 'YamatoJutsu Shield.dmi'
				usr.Kaiten =0
				usr<<"You release Wood Shield."
obj
	WWall
		icon = 'YamatoJutsu Shield.dmi'//dont have a base icon so cant make weights icon!lol
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
					view(M) << "[M] was hit by Wood Wall for [damage] damage!!"
					M.Death(O)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Yamato
	verb
		WoodW() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Mokuton Jukai Heki"
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
				usr.chakra -= 4500
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Mokuton Jukai Heki!!"
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/WWall/A = new /obj/WWall/
					var/obj/WWall/B = new /obj/WWall/
					var/obj/WWall/C = new /obj/WWall/
					var/obj/WWall/D = new /obj/WWall/
					var/obj/WWall/E = new /obj/WWall/
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
					var/obj/WWall/A = new /obj/WWall/
					var/obj/WWall/B = new /obj/WWall/
					var/obj/WWall/C = new /obj/WWall/
					var/obj/WWall/D = new /obj/WWall/
					var/obj/WWall/E = new /obj/WWall/
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
					var/obj/WWall/A = new /obj/WWall/
					var/obj/WWall/B = new /obj/WWall/
					var/obj/WWall/C = new /obj/WWall/
					var/obj/WWall/D = new /obj/WWall/
					var/obj/WWall/E = new /obj/WWall/
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
					var/obj/WWall/A = new /obj/WWall/
					var/obj/WWall/B = new /obj/WWall/
					var/obj/WWall/C = new /obj/WWall/
					var/obj/WWall/D = new /obj/WWall/
					var/obj/WWall/E = new /obj/WWall/
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

mob/Yamato
	verb
		JukaiKotan()
			set category = "NinJutsu"
			set name = "Mokuton Hijutsu Jukai Kotan"
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			if(usr.chakra < 10000)
				usr<<"You dont have enough chakra!"
				return
			else // If the firing var isn't 1...
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
				view()<<"[usr]: Mokuton Hijutsu Jukai Kotan!"
				usr.chakra -= 10000
				var/obj/tree/F = new /obj/tree/
				var/obj/tree/G = new /obj/tree/
				var/obj/tree/H = new /obj/tree/
				var/obj/tree/I = new /obj/tree/
				var/obj/tree/J = new /obj/tree/
				var/obj/tree/L = new /obj/tree/
				var/obj/tree/A = new /obj/tree/
				var/obj/tree/B = new /obj/tree/
				var/obj/tree/M2 = new /obj/tree/
				var/obj/tree/N = new /obj/tree/
				var/obj/tree/O = new /obj/tree/
				var/obj/tree/P = new /obj/tree/
				var/obj/tree/D = new /obj/tree/
				var/obj/tree/E = new /obj/tree/
				var/obj/tree/C = new /obj/tree/
				var/obj/tree/K = new /obj/tree/
				var/obj/tree/Q = new /obj/tree/
				var/obj/tree/R = new /obj/tree/
				var/obj/tree/S = new /obj/tree/
				var/obj/tree/T = new /obj/tree/
				var/obj/tree/W = new /obj/tree/
				var/obj/tree/X = new /obj/tree/
				var/obj/tree/Y = new /obj/tree/
				var/obj/tree/Z = new /obj/tree/
				var/obj/tree/AB = new /obj/tree/
				var/obj/tree/AC = new /obj/tree/
				var/obj/tree/AD = new /obj/tree/
				var/obj/tree/AE = new /obj/tree/
				var/obj/tree/AF = new /obj/tree/
				var/obj/tree/AG = new /obj/tree/
				var/obj/tree/AH = new /obj/tree/
				var/obj/tree/AI = new /obj/tree/
				var/obj/tree/AJ = new /obj/tree/
				var/obj/tree/AK = new /obj/tree/
				var/obj/tree/AL = new /obj/tree/
				var/obj/tree/AM = new /obj/tree/
				var/obj/tree/AN = new /obj/tree/
				var/obj/tree/AO = new /obj/tree/
				var/obj/tree/AP = new /obj/tree/
				var/obj/tree/AQ = new /obj/tree/
				var/obj/tree/AR = new /obj/tree/
				var/obj/tree/AS = new /obj/tree/
				var/obj/tree/AT = new /obj/tree/
				var/obj/tree/AU = new /obj/tree/
				var/obj/tree/AV = new /obj/tree/
				var/obj/tree/AW = new /obj/tree/
				var/obj/tree/AX= new /obj/tree/
				var/obj/tree/AY = new /obj/tree/
				var/obj/tree/AZ = new /obj/tree/
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
				K.jukai=1
				A.loc = locate(usr.x+1,usr.y,usr.z)
				A.jukai=1
				C.loc = locate(usr.x-1,usr.y,usr.z)
				C.jukai=1
				B.loc = locate(usr.x,usr.y+1,usr.z)
				B.jukai=1
				D.loc = locate(usr.x,usr.y-1,usr.z)
				D.jukai=1
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				E.jukai=1
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				F.jukai=1
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				G.jukai=1
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				H.jukai=1
				I.loc = locate(usr.x+2,usr.y,usr.z)
				I.jukai=1
				J.loc = locate(usr.x-2,usr.y,usr.z)
				J.jukai=1
				L.loc = locate(usr.x,usr.y+2,usr.z)
				L.jukai=1
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				M2.jukai=1
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				N.jukai=1
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
				O.jukai=1
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				P.jukai=1
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				Q.jukai=1
				R.loc = locate(usr.x+3,usr.y,usr.z)
				R.jukai=1
				S.loc = locate(usr.x-3,usr.y,usr.z)
				S.jukai=1
				T.loc = locate(usr.x,usr.y+3,usr.z)
				T.jukai=1
				W.loc = locate(usr.x,usr.y-3,usr.z)
				W.jukai=1
				X.loc = locate(usr.x+3,usr.y+3,usr.z)
				X.jukai=1
				Y.loc = locate(usr.x-3,usr.y-3,usr.z)
				Y.jukai=1
				Z.loc = locate(usr.x-3,usr.y+3,usr.z)
				Z.jukai=1
				AB.loc = locate(usr.x-3,usr.y-2,usr.z)
				AB.jukai=1
				AC.loc = locate(usr.x+3,usr.y+2,usr.z)
				AC.jukai=1
				AD.loc = locate(usr.x+3,usr.y-2,usr.z)
				AD.jukai=1
				AE.loc = locate(usr.x-3,usr.y+2,usr.z)
				AE.jukai=1
				AF.loc = locate(usr.x+2,usr.y+3,usr.z)
				AF.jukai=1
				AG.loc = locate(usr.x-2,usr.y-3,usr.z)
				AG.jukai=1
				AH.loc = locate(usr.x-2,usr.y+3,usr.z)
				AH.jukai=1
				AI.loc = locate(usr.x+2,usr.y-3,usr.z)
				AI.jukai=1
				AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
				AJ.jukai=1
				AK.loc = locate(usr.x+1,usr.y+2,usr.z)
				AK.jukai=1
				AL.loc = locate(usr.x+1,usr.y-2,usr.z)
				AL.jukai=1
				AM.loc = locate(usr.x-1,usr.y+2,usr.z)
				AM.jukai=1
				AN.loc = locate(usr.x+2,usr.y+1,usr.z)
				AN.jukai=1
				AO.loc = locate(usr.x-2,usr.y-1,usr.z)
				AO.jukai=1
				AP.loc = locate(usr.x-2,usr.y+1,usr.z)
				AP.jukai=1
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AQ.jukai=1
				AR.loc = locate(usr.x-1,usr.y-3,usr.z)
				AR.jukai=1
				AS.loc = locate(usr.x+1,usr.y+3,usr.z)
				AS.jukai=1
				AT.loc = locate(usr.x+1,usr.y-3,usr.z)
				AT.jukai=1
				AU.loc = locate(usr.x-1,usr.y+3,usr.z)
				AU.jukai=1
				AV.loc = locate(usr.x+3,usr.y+1,usr.z)
				AV.jukai=1
				AW.loc = locate(usr.x-3,usr.y-1,usr.z)
				AW.jukai=1
				AX.loc = locate(usr.x-3,usr.y+1,usr.z)
				AX.jukai=1
				AY.loc = locate(usr.x+3,usr.y-1,usr.z)
				AY.jukai=1
				AZ.loc = locate(usr.x+3,usr.y-3,usr.z)
				AZ.jukai=1
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
					var/damage=round(usr.nin*1.45)
					view()<<"[M] has taken [damage] damage from [usr]'s Mokuton Hijutsu Jukai Kotan!"
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
				sleep(10)
				usr.firing=0
obj
	bunshins
		WoodClone
			verb/WoodClone()
				set name = "Wood clone"
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
					view() << "<font color=silver><b><font face=verdana>[usr] says:Wood Clone!!"
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