obj
	bunshins
		RaitonBunshinnojutsu
			verb/IchiBunshinNoJutsu()
				set name = "Ichi Bunshin no jutsu"
				set desc = "Create a clone that can attack"
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
					view() << "<font color=silver><b><font face=verdana>[usr] says:Ichi Bunshin No Jutsu!!"
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

obj/
	rasens
		icon = 'RasenShurikenn.dmi'
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
				var/damage = round(src.nin*2)
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
mob/Naruto
	verb
		Rasen_S()
			set category = "NinJutsu"
			set name = "Rasen Shuriken no jutsu"
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
			if(usr.chakra<=20000)
				usr<<"Not enough Chakra!!"
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
				usr.chakra -= 12000
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=red> Says: Rasen-Shuriken No Jutsu!</font>"
				var/obj/rasens/S1 = new /obj/rasens/
				S1.loc = usr.loc
				S1.nin = usr.nin
				S1.dir = usr.dir
				S1.name = "[usr]"
				S1.Gowner = usr
				walk(S1,usr.dir)
				sleep(25)
				usr.firing = 0
				sleep(45)
				del(S1)

mob/Naruto
	verb
		UzumakiBarrage(mob/M in get_step(src,src.dir))
			set category = "TaiJutsu"
			set name = "Uzumaki Barrage"
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
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: NARUTO!!! UZUMAKI BARRAGE!</FONT>"
				var/damage=usr.tai*1.5
				usr.KillBunshin()
				usr.firing=1
				view()<<"[M] takes [damage] damage from Uzumaki Barrage!"
				var/mob/npc/KBunshin/S = new /mob/npc/KBunshin
				var/mob/npc/KBunshin/T = new /mob/npc/KBunshin
				var/mob/npc/KBunshin/U = new /mob/npc/KBunshin
				var/mob/npc/KBunshin/V = new /mob/npc/KBunshin
				if(V)
					V.original = usr
					V.name = "[usr.name]"
					V.icon = usr.icon
					V.overlays += usr.overlays
					V.loc = locate(M.x+1, M.y, M.z)
					V.tai = usr:tai*0.8
					V.health = 100000
					usr.chakra -= 3000
				if(U)
					U.original = usr
					U.name = "[usr.name]"
					U.icon = usr.icon
					U.overlays+=usr.overlays
					U.loc = locate(M.x-1, M.y, M.z)
					U.tai = usr:tai*0.8
					U.health = 100000
					usr.chakra -= 3000
				if(T)
					T.original = usr
					T.name = "[usr.name]"
					T.icon = usr.icon
					T.overlays+=usr.overlays
					T.loc = locate(M.x, M.y + 1, M.z)
					T.tai = usr:tai*0.8
					T.health = 100000
					usr.chakra -= 3000
				if(S)
					S.original = usr
					S.name = "[usr.name]"
					S.icon = usr.icon
					S.overlays+=usr.overlays
					S.loc = locate(M.x, M.y - 1, M.z)
					S.tai = usr:tai*0.8
					S.health = 100000
					usr.chakra -= 3000
				M.health -= damage
				M.Death(usr)
				sleep(14)
				usr.firing=0

mob/Naruto
	verb
		BRasengan()
			set category = "NinJutsu"
			set name = "Blazing Rasengan"
			if (usr.ingat)
				return
			if (usr.intank)
				return
			if (usr.Kaiten)
				return
			if (usr.sphere)
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.PK==0)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [usr]"
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
			if (usr.firing)
				return
			if(Rasenganon)
				usr <<"Your already using Blazing Rasengan!"
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else
				var/damage = input("How much chakra would you like to put in?")as num
				if(usr.RasenganU >= 30)
					if(damage <= 49999)
						usr<<"You must put at least 50000 chakra into it!!"
						return
					if(damage >= usr.chakra)
						usr<<"You put to much energy into the Blazing Rasengan and lose control of it!"
						return
					else
						view() << "<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Blazing Rasengan!</FONT>"
						usr.RasenganU += 1
						usr.chakra -= damage
						if(usr.chakra<0) usr.chakra=0
						usr.RasenganD = damage*1.2
						usr.Rasenganon = 1
						usr.firing = 1
						usr.Chakragain()
						usr.overlays += '000.dmi'
						usr.icon_state = "run"
						RD
							if(!usr.battlingRC)
								RasenganD -= rand(1000,2000)
							if(usr.RasenganD <= 1&&!usr.battlingRC)
								usr << "Your Rasengan runs out of energy"
								usr.RasenganD = 0
								usr.Rasenganon = 0
								usr.overlays -= '000.dmi'
								usr.overlays -= '000.dmi'
								usr.overlays -= '000.dmi'
								usr.overlays -= '000.dmi'
								usr.overlays -= '000.dmi'
								usr.firing = 0
								return
							else
								sleep(6)
								goto RD
				else
					usr.random = rand (1,3)
					if(usr.random == 1||usr.random == 2)
						if(damage <= 49999)
							usr<<"You must put at least 50000 chakra into it!!"
							return
						if(damage >= usr.chakra)
							usr<<"You put to much energy into the rasengan and lose control of it!"
							return
						else
							view() << "<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Blazing Rasengan!</FONT>"
							usr.Rasenganon = 1
							usr.RasenganU += 1
							usr.chakra -= damage
							if(usr.chakra<0) usr.chakra=0
							usr.RasenganD = damage*1.1
							usr.Chakragain()
							usr.firing = 1
							usr.overlays += '000.dmi'
							usr.icon_state = "run"
							RD
								if(!usr.battlingRC)
									RasenganD -= rand(1000,2000)
								if(usr.RasenganD <= 1)
									usr << "Your Rasengan runs out of energy"
									usr.RasenganD = 0
									usr.overlays -= '000.dmi'
									usr.overlays -= '000.dmi'
									usr.overlays -= '000.dmi'
									usr.overlays -= '000.dmi'
									usr.overlays -= '000.dmi'
									usr.Rasenganon = 0
									return
								else
									sleep(6)
									goto RD
					else
						usr<<"You fail to use Blazing Rasengan!"
						return

mob/jutsu
	verb
		NisenRendan()
			set category = "NinJutsu"
			set name="Nisen Rendan"
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
					var/damage=usr.nin*1.6
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
			for(var/mob/npc/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*1.6
					for(var/mob/M in oview(2,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(30)
					usr.bakuretsuuse=0
