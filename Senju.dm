mob/var/tmp/wood1=0


mob/Senju
	verb
		Branch() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Mokuton Shiten Shuriken no Jutsu"
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
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Mokuton Shiten Shuriken no Jutsu!"
					var/obj/Branch/K = new /obj/Branch
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
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Mokuton Shiten Shuriken no Jutsu!"
						var/obj/Branch/K = new /obj/Branch
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

obj
	Branch
		icon = 'wood shuriken.dmi'
		icon_state = ""
		density = 1
		Move()
			var/delay = 0
			sleep(delay)
			..()
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
					view(M) << "[M] was hit by fast cutting Shuriken made off Brank for [damage] damage!!"
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
	wood
		icon = 'wood.dmi'
		icon_state = ""
		layer=10
		New()
			.=..()
			spawn()
				while(src)
					sleep(5)
					for(var/mob/M in oview(0,src))
						if(M.counter||M.hokage||M.Hidan||M.Kakuzu||!M.PK||M.Deidara||M.Sasori||M.Itachi)
							del(src)
							return
						var/damage = round(src.nin*1.3)
						if(damage >= 1)
							M.health -= damage
							var/mob/O = src.Gowner
							view(M) << "[M] was hit by [O]'s trees for [damage] damage!!"
							M.Death(O)

obj
	wdragon1
		density=1
		icon='dragonw.dmi'
		icon_state=""
		New()
			..()
			spawn()
				src.delete()
		proc/delete()
			spawn(15)
				del(src)
obj
	wdragon
		density=1
		icon='dragonw.dmi'
		icon_state="head"
		Move()
			..()
			var/obj/wdragon1/T = new /obj/wdragon1
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
				if(M.Kaiten||M.sphere||!M.PK)
					return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					del(src)
					return
				var/damage = round(src.nin*1.55)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Mokuton Mokuryuu no Jutsu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

mob/Senju
	verb
		Dragon()
			set name = "Mokuton Mokuryuu no Jutsu"
			set category = "NinJutsu"
			usr.Handseals()
			if(usr.firing)
				return
			if(usr.chakra <= 10000)
				usr<<"You dont have enough power!"
				return
			if(usr.caught||usr.captured)
				usr<<"Your captured"
				return
			if(!usr.handseals)
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.Frozen||usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.resting)
				usr<<"Not while resting/meditating"
				return
			else
				usr.firing=1
				view()<<"<font color=silver><b><font face=verdana>[usr]: Mokuton Mokuryuu no Jutsu!"
				usr.chakra -= 500
				var/obj/wdragon/B = new /obj/wdragon
				var/obj/wdragon/C = new /obj/wdragon
				var/obj/wdragon/D = new /obj/wdragon
				var/obj/wdragon/E = new /obj/wdragon
				B.Gowner=usr
				C.Gowner=usr
				D.Gowner=usr
				E.Gowner=usr
				B.nin = usr.nin
				C.nin = usr.nin
				D.nin = usr.nin
				E.nin = usr.nin
				B.loc = usr.loc
				C.loc = usr.loc
				D.loc = usr.loc
				E.loc = usr.loc
				B.Move_Delay=0
				C.Move_Delay=0
				D.Move_Delay=0
				E.Move_Delay=0
				usr.Chakragain()
				walk(B,NORTH)
				walk(C,SOUTH)
				walk(D,WEST)
				walk(E,EAST)
				sleep(50)
				usr.firing=0
				sleep(15)
				del(B)
				del(C)
				del(D)
				del(E)

mob/Senju
	verb
		Jikai() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Mokuton Hijutsu Jukai Kotan"
			usr.Handseals()
			if(usr.firing)
				return
			if(usr.chakra <= 10000)
				usr<<"You dont have enough power!"
				return
			if(usr.caught||usr.captured)
				usr<<"Your captured"
				return
			if(!usr.handseals)
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.Frozen||usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.resting)
				usr<<"Not while resting/meditating"
				return
			else // If the firing var isn't 1...
				if(usr.wood1) return
				else
					usr<<"You force trees to grow on any surface"
					usr.wood1=1
					sleep(100)
					usr.wood1=0

mob/var
	toori

mob/Senju
	verb
		Healing()
			set name = "Chiyu no Chikara"
			set category = "NinJutsu"
			//no handseals
			if(!usr.PK)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [usr]"
				return
			if(usr.Mhealth == usr.health)
				usr<<"You're already fully restored!"
			if(usr.Froze||usr.Frozen)
				usr<<"You're Frozen"
				return
			if(usr.caught||usr.captured)
				usr<<"You're captured"
				return
			if(usr.resting||usr.meditating)
				usr<<"Not while resting/meditating"
				return
			if(usr.firing)
				return
			if(usr.chakra<=225000) //takes 1/4 of your chakra doe
				usr<<"You don't have enough chakra!!"
				return
			else
				usr.chakra -= 225000 //1/4 chakra.
				usr.health = usr.Mhealth //max health... MAX FUCKING HEALTH
				view(usr)<<"<font size=1><font face=Tahoma><b><font color=white><BIG>\icon[usr.face_icon]</BIG><font size = 1>[usr]: I'm not easy to kill.."


mob
	npc
		WBunshin
			NPC = 1
			proc/Die()
				flick("smoke",src)
				del(src)
			Bump(atom/M)
				if(istype(M,/mob/)) // If they run into the player
					if(M == bowner||M == src.original||M.name==src.name)
						return
					else
						if(src.firing)
							return
						var/mob/P = M
						var/Damage = src.tai
						var/mob/O = src.original
						src.firing=1
						if(P.Kaiten)
							del(src)
						if(P.drunk&&P.Lee)
							view()<<"[M] dodges [src]'s attack"
							sleep(13)
							src.firing=0
							return
						P.health -= Damage
						view() << "[O] attacks [M] for [Damage]!"
						P.Death(O)
						sleep(10)
						src.firing=0

mob/var/Wbunshin

obj
	bunshins
		MokutonBunshinnojutsu
			verb/WoodBunshinNoJutsu()
				set name = "Mokuton Bunshin no jutsu"
				set desc = "Create a clone that can attack"
				set category = "NinJutsu"
				usr.Handseals()
				if(usr.chakra <= 17)
					usr << "Not enough chakra!"
					return
				if(usr.Froze||usr.Frozen)
					usr<<"Your Frozen"
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				if(usr.caught||usr.captured)
					usr<<"Your captured"
					return
				if(!usr.PK)
					usr<<"NON PK ZONE!"
					return
				if(!usr.handseals||usr.firing)
					return
				else
					usr.KillBunshin()
					usr.firing=1
					view() << "<font color=silver><b><font face=verdana>[usr] says: <font color = #6F4242>Mokuton Bunshin No Jutsu!!"
					var/mob/npc/WBunshin/S = new /mob/npc/WBunshin
					usr.Chakragain()
					usr.Wbunshin += 1
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
	Hands
		icon= 'Hands.dmi'
		layer = MOB_LAYER+2
		density = 1


mob/Senju
	verb
		Hand(mob/M in view())
			set name = "Mokuton Hotei no Jutsu"
			set category = "NinJutsu"
			usr.Handseals()
			if(M.inspike||usr.firing||M.sphere||!M.PK||!usr.PK)
				return
			if(usr.Froze||usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught||usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting||usr.meditating)
				usr<<"Not while resting"
				return
			if(usr.chakra<=10000)
				usr<<"Not enough chakra!"
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
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR='#808080'>M</FONT><FONT COLOR='#938b82'>o</FONT><FONT COLOR='#a69783'>k</FONT><FONT COLOR='#b9a285'>u</FONT><FONT COLOR='#ccae86'>t</FONT><FONT COLOR='#deb887'>o</FONT><FONT COLOR='#c3a47a'>n</FONT><FONT COLOR='#a68f6b'>:</FONT><FONT COLOR='#8a7a5d'> </FONT><FONT COLOR='#6e654e'>H</FONT><FONT COLOR='#515040'>o</FONT><FONT COLOR='#353b31'>t</FONT><FONT COLOR='#515040'>e</FONT><FONT COLOR='#6e654e'>i</FONT><FONT COLOR='#8a7a5d'> </FONT><FONT COLOR='#a68f6b'>n</FONT><FONT COLOR='#c3a47a'>o</FONT><FONT COLOR='#deb887'> </FONT><FONT COLOR='#ccae86'>J</FONT><FONT COLOR='#b9a285'>u</FONT><FONT COLOR='#a69783'>t</FONT><FONT COLOR='#938b82'>s</FONT><FONT COLOR='#808080'>u</FONT>"
				var/obj/Hands/S = new /obj/Hands
				var/obj/Hands/T = new /obj/Hands
				var/obj/Hands/U = new /obj/Hands
				var/obj/Hands/V = new /obj/Hands
				if(V)
					V.Gowner = usr
					V.loc = locate(M.x+1, M.y, M.z)
				if(U)
					U.Gowner = usr
					U.loc = locate(M.x-1, M.y, M.z)
				if(T)
					T.Gowner = usr
					T.loc = locate(M.x, M.y + 1, M.z)
				if(S)
					S.Gowner = usr
					S.icon = 'hands.dmi'
					S.loc = locate(M.x, M.y - 1, M.z)
					S.icon_state = "hold"
				flick("rise",V)
				flick("rise",U)
				flick("rise",T)
				flick("rise",S)
				M.Frozen = 1
				var/dmg = 1.1*usr.nin
				M.health -= dmg
				M<<"As the Hands are squeezing you, you get hurt for [dmg] damage!"
				if(M.health < 1)
					M.Frozen = 0
					del(V)
					del(U)
					del(T)
					del(S)
					M.Death(usr)
				sleep(200)
				M.Frozen = 0
				del(V) //delete erything bang bang
				del(U)
				del(T)
				del(S)
mob/Senju
	verb
		SM()
			set category = "SenJutsu"
			set name = "Sage Mode"
			if(!usr.PK||usr.caught||usr.resting||usr.meditating||usr.Kaiten)return
			if(!usr.Smode&&!usr.firing)
				view()<<"<font color=red>[usr] concentrates as he tries to gather as much energy as possible!"
				usr.overlays += 'HashiSage.dmi'
				usr.Smode =1
				usr.firing=1
				usr.nin = usr.nin*1.5
				usr.tai = usr.tai*1.5
				usr.gen = usr.gen*1.5
				usr.verbs += /mob/Senju/verb/Tori
			//	usr.verbs += /mob/Senju/verb/Arm
				sleep(15)
				usr.firing=0
				fire
				if(usr.Smode)
					usr.chakra -=750
					if(usr.chakra <= 749)
						usr.overlays -= 'HashiSage.dmi'
						usr.Smode = 0
						usr.nin = usr.Mnin
						usr.tai = usr.Mtai
						usr.gen = usr.Mnin
						return
					else
						sleep(10)
						goto fire
			else if(usr.Smode)
				usr.overlays -= 'HashiSage.dmi'
				usr.Smode =0
				usr.nin = usr.Mnin*0.9
				usr.tai = usr.Mtai*0.9
				usr.gen = usr.Mgen*0.9
				usr.verbs -= /mob/Senju/verb/Tori
			//	usr.verbs -= /mob/Senju/verb/Arm
				usr<<"[usr] experience exhaustion as he releases the contained natural energy!"

obj
	Tori
		icon= 'Toris.dmi'
		layer = MOB_LAYER+2
		density = 1
obj/var
	Tori

mob/Senju
	verb
		Tori()
			set name = "Senpou Myoujinmon"
			set category = "SenJutsu"
			usr.Handseals()
			if(!usr.PK)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [usr]"
				return
			if(usr.Froze||usr.Frozen)
				usr<<"You're Frozen"
				return
			if(usr.caught||usr.captured)
				usr<<"You're captured"
				return
			if(usr.resting||usr.meditating)
				usr<<"Not while resting/meditating"
				return
			if(usr.chakra<=25000)
				usr<<"You don't have enough chakra!!"
				return
			if(usr.toori)
				return
			if(usr.firing)
				return
			else
				usr.chakra -= 25000
				usr.firing = 1
				usr.toori = 1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR='#ff0000'>S</FONT><FONT COLOR='#ed0909'>e</FONT><FONT COLOR='#d91212'>n</FONT><FONT COLOR='#c61a1a'>p</FONT><FONT COLOR='#b22222'>o</FONT><FONT COLOR='#b93131'>u</FONT><FONT COLOR='#c04040'>:</FONT><FONT COLOR='#c74e4e'> </FONT><FONT COLOR='#cd5c5c'>M</FONT><FONT COLOR='#c85151'>y</FONT><FONT COLOR='#c34545'>o</FONT><FONT COLOR='#bd3a3a'>u</FONT><FONT COLOR='#b82e2e'>j</FONT><FONT COLOR='#b22222'>i</FONT><FONT COLOR='#c61a1a'>n</FONT><FONT COLOR='#d91212'>m</FONT><FONT COLOR='#ed0909'>o</FONT><FONT COLOR='#ff0000'>n</FONT>"
				var/obj/Tori/F = new /obj/Tori/
				var/obj/Tori/G = new /obj/Tori/
				var/obj/Tori/H = new /obj/Tori/
				var/obj/Tori/I = new /obj/Tori/
				var/obj/Tori/J = new /obj/Tori/
				var/obj/Tori/L = new /obj/Tori/
				var/obj/Tori/A = new /obj/Tori/
				var/obj/Tori/B = new /obj/Tori/
				var/obj/Tori/M2 = new /obj/Tori/
				var/obj/Tori/N = new /obj/Tori/
				var/obj/Tori/O = new /obj/Tori/
				var/obj/Tori/P = new /obj/Tori/
				var/obj/Tori/D = new /obj/Tori/
				var/obj/Tori/E = new /obj/Tori/
				var/obj/Tori/C = new /obj/Tori/
				var/obj/Tori/K = new /obj/Tori/
				var/obj/Tori/Q = new /obj/Tori/
				var/obj/Tori/R = new /obj/Tori/
				var/obj/Tori/S = new /obj/Tori/
				var/obj/Tori/T = new /obj/Tori/
				var/obj/Tori/W = new /obj/Tori/
				var/obj/Tori/X = new /obj/Tori/
				var/obj/Tori/Y = new /obj/Tori/
				var/obj/Tori/Z = new /obj/Tori/
				var/obj/Tori/AB = new /obj/Tori/
				var/obj/Tori/AC = new /obj/Tori/
				var/obj/Tori/AD = new /obj/Tori/
				var/obj/Tori/AE = new /obj/Tori/
				var/obj/Tori/AF = new /obj/Tori/
				var/obj/Tori/AG = new /obj/Tori/
				var/obj/Tori/AH = new /obj/Tori/
				var/obj/Tori/AI = new /obj/Tori/
				var/obj/Tori/AJ = new /obj/Tori/
				var/obj/Tori/AK = new /obj/Tori/
				var/obj/Tori/AL = new /obj/Tori/
				var/obj/Tori/AM = new /obj/Tori/
				var/obj/Tori/AN = new /obj/Tori/
				var/obj/Tori/AO = new /obj/Tori/
				var/obj/Tori/AP = new /obj/Tori/
				var/obj/Tori/AQ = new /obj/Tori/
				var/obj/Tori/AR = new /obj/Tori/
				var/obj/Tori/AS = new /obj/Tori/
				var/obj/Tori/AT = new /obj/Tori/
				var/obj/Tori/AU = new /obj/Tori/
				var/obj/Tori/AV = new /obj/Tori/
				var/obj/Tori/AW = new /obj/Tori/
				var/obj/Tori/AX= new /obj/Tori/
				var/obj/Tori/AY = new /obj/Tori/
				var/obj/Tori/AZ = new /obj/Tori/
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
				K.Tori=1
				A.loc = locate(usr.x+1,usr.y,usr.z)
				A.Tori=1
				C.loc = locate(usr.x-1,usr.y,usr.z)
				C.Tori=1
				B.loc = locate(usr.x,usr.y+1,usr.z)
				B.Tori=1
				D.loc = locate(usr.x,usr.y-1,usr.z)
				D.Tori=1
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				E.Tori=1
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				F.Tori=1
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				G.Tori=1
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				H.Tori=1
				I.loc = locate(usr.x+2,usr.y,usr.z)
				I.Tori=1
				J.loc = locate(usr.x-2,usr.y,usr.z)
				J.Tori=1
				L.loc = locate(usr.x,usr.y+2,usr.z)
				L.Tori=1
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				M2.Tori=1
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				N.Tori=1
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
				O.Tori=1
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				P.Tori=1
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				Q.Tori=1
				R.loc = locate(usr.x+3,usr.y,usr.z)
				R.Tori=1
				S.loc = locate(usr.x-3,usr.y,usr.z)
				S.Tori=1
				T.loc = locate(usr.x,usr.y+3,usr.z)
				T.Tori=1
				W.loc = locate(usr.x,usr.y-3,usr.z)
				W.Tori=1
				X.loc = locate(usr.x+3,usr.y+3,usr.z)
				X.Tori=1
				Y.loc = locate(usr.x-3,usr.y-3,usr.z)
				Y.Tori=1
				Z.loc = locate(usr.x-3,usr.y+3,usr.z)
				Z.Tori=1
				AB.loc = locate(usr.x-3,usr.y-2,usr.z)
				AB.Tori=1
				AC.loc = locate(usr.x+3,usr.y+2,usr.z)
				AC.Tori=1
				AD.loc = locate(usr.x+3,usr.y-2,usr.z)
				AD.Tori=1
				AE.loc = locate(usr.x-3,usr.y+2,usr.z)
				AE.Tori=1
				AF.loc = locate(usr.x+2,usr.y+3,usr.z)
				AF.Tori=1
				AG.loc = locate(usr.x-2,usr.y-3,usr.z)
				AG.Tori=1
				AH.loc = locate(usr.x-2,usr.y+3,usr.z)
				AH.Tori=1
				AI.loc = locate(usr.x+2,usr.y-3,usr.z)
				AI.Tori=1
				AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
				AJ.Tori=1
				AK.loc = locate(usr.x+1,usr.y+2,usr.z)
				AK.Tori=1
				AL.loc = locate(usr.x+1,usr.y-2,usr.z)
				AL.Tori=1
				AM.loc = locate(usr.x-1,usr.y+2,usr.z)
				AM.Tori=1
				AN.loc = locate(usr.x+2,usr.y+1,usr.z)
				AN.Tori=1
				AO.loc = locate(usr.x-2,usr.y-1,usr.z)
				AO.Tori=1
				AP.loc = locate(usr.x-2,usr.y+1,usr.z)
				AP.Tori=1
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AQ.Tori=1
				AR.loc = locate(usr.x-1,usr.y-3,usr.z)
				AR.Tori=1
				AS.loc = locate(usr.x+1,usr.y+3,usr.z)
				AS.Tori=1
				AT.loc = locate(usr.x+1,usr.y-3,usr.z)
				AT.Tori=1
				AU.loc = locate(usr.x-1,usr.y+3,usr.z)
				AU.Tori=1
				AV.loc = locate(usr.x+3,usr.y+1,usr.z)
				AV.Tori=1
				AW.loc = locate(usr.x-3,usr.y-1,usr.z)
				AW.Tori=1
				AX.loc = locate(usr.x-3,usr.y+1,usr.z)
				AX.Tori=1
				AY.loc = locate(usr.x+3,usr.y-1,usr.z)
				AY.Tori=1
				AZ.loc = locate(usr.x+3,usr.y-3,usr.z)
				AZ.Tori=1
				if(usr.dir == NORTH)
					usr.loc = locate(usr.x, usr.y-4,usr.z)
				if(usr.dir == SOUTH)
					usr.loc = locate(usr.x, usr.y+4,usr.z)
				if(usr.dir == WEST)
					usr.loc = locate(usr.x-4, usr.y,usr.z)
				if(usr.dir == EAST)
					usr.loc = locate(usr.x+4, usr.y,usr.z)
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
					var/damage=round(usr.tai*1.3)
					if(M.Flight||!M.density) //that's why, loool
						M.density = 1
						M.Flight = 0
						M.overlays -= 'Flight.dmi'
					view()<<"[M] has taken [damage] damage from [usr]'s Tori No Mai"
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
				sleep(50)
				usr.firing = 0
				sleep(550)
				usr.toori = 0
