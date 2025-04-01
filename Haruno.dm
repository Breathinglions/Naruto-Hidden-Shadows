obj/
	HLog
		icon = '000.dmi'
		icon_state = "Log"
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
				var/damage = round(src.tai*1.35)
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
mob/Haruno
	verb
		DeathlyTreeTrap() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Deathly Tree Trap"
			if(usr.firing)
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
			if(!usr.PK)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [usr]"
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
					usr.chakra -= 3000
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.SensatsuN += 1
					view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Deathly Tree Trap!</FONT>"
					var/obj/HLog/S1 = new /obj/HLog
					var/obj/HLog/S2 = new /obj/HLog
					var/obj/HLog/S3 = new /obj/HLog
					var/obj/HLog/S4 = new /obj/HLog
					usr.Chakragain()
					if(S1)
						S1.loc = usr.loc
						S1.nin = usr.tai
						S1.dir = NORTH
						S1.name = "[usr]"
						S1.Gowner = usr
						walk(S1,NORTH)
					if(S2)
						S2.loc = usr.loc
						S2.nin = usr.tai
						S2.dir = SOUTH
						S2.name = "[usr]"
						S2.Gowner = usr
						walk(S2,SOUTH)
					if(S3)
						S3.loc = usr.loc
						S3.nin = usr.tai
						S3.dir = WEST
						S3.name = "[usr]"
						S3.Gowner = usr
						walk(S3,WEST)
					if(S4)
						S4.loc = usr.loc
						S4.nin = usr.tai
						S4.dir = EAST
						S4.name = "[usr]"
						S4.Gowner = usr
						walk(S4,EAST)
					sleep(15)
					usr.firing = 0
					sleep(45)
					del(S1)
					del(S2)
					del(S3)
					del(S4)
					return

		InnerHaruno2(mob/M in get_step(src,src.dir))
			set category = "TaiJutsu"
			set name = "Cherry Blossom Impact"
			if (M.inspike)
				return
			if(usr.firing)
				return
			if (M.sphere)
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(!M.PK)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
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
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=red> Says: CHERRY BLOSSOM IMPACT!!!</FONT>"
				var/damage=usr.tai*1.9
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from [usr]'s Cherry Blossom Impact!!"
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
				sleep(14)
				usr.firing=0
		Shousen_Jutsu(mob/M in view(1))
			set category = "GenJutsu"
			set name = "Shousen Jutsu"
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
				M<<"[usr] begins to use his chakra to heal you."
				usr<<"You begin to heal [M]"
				usr.firing=0
				sleep(200)
				if(M)
					M.health += M.Mhealth/2
					if(M.health > M.Mhealth)
						M.health = M.Mhealth
		Restore_Jutsu(mob/M in view(1))
			set category = "GenJutsu"
			set name = "Restore Jutsu"
			usr.Handseals()
			if(usr.firing)
				usr<<"This cannot be done"
				return
			if(!usr.handseals)
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			else
				M<<"[usr] begins to use his chakra to remove all conditions."
				usr<<"You begin to restore [M]"
				sleep(200)
				if(M)
					M.Froze=0
					M.Frozen=0
					M.caught=0
					M.captured=0
					M.screwed=0
					M:sight &= ~BLIND
		Chakra_ES()
			set category = "TaiJutsu"
			set name = "Chakra Enhanced Strength"
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
			if(usr.chakra<=5000)
				usr<<"Not enough Chakra!!"
				return
			if(!usr.scalpel)
				usr<<"You concentrate the chakra to your hands to develop chakra scalpels."
				usr.scalpel =1
				usr.tai = usr.tai*1.45
				mesu
				if(usr.scalpel)
					usr.chakra -=750
					if(usr.chakra <= 1500)
						usr<<"You stop using Chakra Enhanced Strength."
						usr.scalpel = 0
						usr.tai = usr.Mtai
						return
					else
						sleep(4)
						goto mesu
			else if(usr.scalpel)
				usr.scalpel=0
				usr<<"You stop using Chakra Enhanced Strength."
				usr.tai = usr.Mtai
mob/Haruno
	verb
		Cherry_BI2()
			set category = "TaiJutsu"
			set name = "Cherry Blossom Impact Crater"
			if(usr.firing) // If the mob's firing var is one...
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
			if(usr.chakra <= 9999)
				usr<<"You dont have enough chakra!"
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else // If the firing var isn't 1...
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
				view()<<"[usr]: <font color=red>Cherry Blossom Impact Crater!!"
				var/obj/redb/F = new /obj/redb/
				var/obj/redb/G = new /obj/redb/
				var/obj/redb/H = new /obj/redb/
				var/obj/redb/I = new /obj/redb/
				var/obj/redb/J = new /obj/redb/
				var/obj/redb/L = new /obj/redb/
				var/obj/redb/A = new /obj/redb/
				var/obj/redb/B = new /obj/redb/
				var/obj/redb/M2 = new /obj/redb/
				var/obj/redb/N = new /obj/redb/
				var/obj/redb/O = new /obj/redb/
				var/obj/redb/P = new /obj/redb/
				var/obj/redb/D = new /obj/redb/
				var/obj/redb/E = new /obj/redb/
				var/obj/redb/C = new /obj/redb/
				var/obj/redb/K = new /obj/redb/
				var/obj/redb/Q = new /obj/redb/
				var/obj/redb/R = new /obj/redb/
				var/obj/redb/S = new /obj/redb/
				var/obj/redb/T = new /obj/redb/
				var/obj/redb/W = new /obj/redb/
				var/obj/redb/X = new /obj/redb/
				var/obj/redb/Y = new /obj/redb/
				var/obj/redb/Z = new /obj/redb/
				var/obj/redb/AB = new /obj/redb/
				var/obj/redb/AC = new /obj/redb/
				var/obj/redb/AD = new /obj/redb/
				var/obj/redb/AE = new /obj/redb/
				var/obj/redb/AF = new /obj/redb/
				var/obj/redb/AG = new /obj/redb/
				var/obj/redb/AH = new /obj/redb/
				var/obj/redb/AI = new /obj/redb/
				var/obj/redb/AJ = new /obj/redb/
				var/obj/redb/AK = new /obj/redb/
				var/obj/redb/AL = new /obj/redb/
				var/obj/redb/AM = new /obj/redb/
				var/obj/redb/AN = new /obj/redb/
				var/obj/redb/AO = new /obj/redb/
				var/obj/redb/AP = new /obj/redb/
				var/obj/redb/AQ = new /obj/redb/
				var/obj/redb/AR = new /obj/redb/
				var/obj/redb/AS = new /obj/redb/
				var/obj/redb/AT = new /obj/redb/
				var/obj/redb/AU = new /obj/redb/
				var/obj/redb/AV = new /obj/redb/
				var/obj/redb/AW = new /obj/redb/
				var/obj/redb/AX= new /obj/redb/
				var/obj/redb/AY = new /obj/redb/
				var/obj/redb/AZ = new /obj/redb/
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
				A.tai=usr.tai
				B.tai=usr.tai
				C.tai=usr.tai
				D.tai=usr.tai
				E.tai=usr.tai
				F.tai=usr.tai
				G.tai=usr.tai
				H.tai=usr.tai
				I.tai=usr.tai
				J.tai=usr.tai
				K.tai=usr.tai
				L.tai=usr.tai
				M2.tai=usr.tai
				N.tai=usr.tai
				O.tai=usr.tai
				P.tai=usr.tai
				Q.tai=usr.tai
				R.tai=usr.tai
				S.tai=usr.tai
				T.tai=usr.tai
				W.tai=usr.tai
				X.tai=usr.tai
				Y.tai=usr.tai
				Z.tai=usr.tai
				AB.tai=usr.tai
				AC.tai=usr.tai
				AD.tai=usr.tai
				AE.tai=usr.tai
				AF.tai=usr.tai
				AG.tai=usr.tai
				AH.tai=usr.tai
				AI.tai=usr.tai
				AJ.tai=usr.tai
				AK.tai=usr.tai
				AL.tai=usr.tai
				AM.tai=usr.tai
				AN.tai=usr.tai
				AO.tai=usr.tai
				AP.tai=usr.tai
				AQ.tai=usr.tai
				AR.tai=usr.tai
				AS.tai=usr.tai
				AV.tai=usr.tai
				AW.tai=usr.tai
				AX.tai=usr.tai
				AY.tai=usr.tai
				AZ.tai=usr.tai
				AU.tai=usr.tai
				AV.tai=usr.tai
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
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
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
				for(var/mob/M in oview(3,usr))
					var/damage=round(usr.tai*1.6)
					view()<<"[M] has taken [damage] damage from [usr]'s Cherry Blossom Impact Crater!!"
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