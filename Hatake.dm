mob/Hatake
	verb

		MSharingan()
			set category = "Doujutsu"
			set name = "Mangekyou Sharingan"
			if(!usr.shari&&!usr.ST&&usr.goingmange&&!usr.EMS)
				usr.overlays += /obj/HMangekyou
				usr.overlays += 'hatakesharingan.dmi'
				usr.icon_state="mangekyou"
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#696969>M</FONT><FONT COLOR=#766065>a</FONT><FONT COLOR=#835760>n</FONT><FONT COLOR=#904d5b>g</FONT><FONT COLOR=#9d4456>e</FONT><FONT COLOR=#a93a50>k</FONT><FONT COLOR=#b6314b>y</FONT><FONT COLOR=#c32746>o</FONT><FONT COLOR=#d01e41>u</FONT><FONT COLOR=#dc143c> </FONT><FONT COLOR=#d41337>S</FONT><FONT COLOR=#ca1131>h</FONT><FONT COLOR=#c10f2b>a</FONT><FONT COLOR=#b80d25>r</FONT><FONT COLOR=#af0b1f>i</FONT><FONT COLOR=#a50818>n</FONT><FONT COLOR=#9c0612>g</FONT><FONT COLOR=#93040c>a</FONT><FONT COLOR=#890206>n</FONT><FONT COLOR=#800000>!</FONT>"
				view()<<"[usr]'s pupils dialate to form the Legendary Mangekyou Sharingan"
				usr.shari=1
				usr.gen=usr.gen*1.35
				usr.nin=usr.nin*1.35
				usr.tai=usr.tai*1.35
				usr.ST=1
				usr.verbs += /mob/Uchiha/verb/Sharinganilluminate
				usr.verbs += /mob/Uchiha/verb/Sharinganfreeze
				usr.verbs += /mob/Uchiha/verb/Counter
				usr.verbs += /mob/Hatake/verb/Susanoo
				usr.see_invisible = 1
				sleep(20)
				usr.overlays -= /obj/HMangekyou
				return
			else
				if(usr.shari)
					usr<<"You release your Mangekyou Sharingan."
					usr.overlays -= /obj/HMangekyou
					usr.overlays -= 'hatakesharingan.dmi'
					usr.see_invisible = 0
					usr.nin=usr.Mnin
					usr.gen=usr.Mgen
					usr.tai=usr.Mtai
					usr.goingmange=0
					usr.verbs -= /mob/Uchiha/verb/Sharinganilluminate
					usr.verbs -= /mob/Uchiha/verb/Sharinganfreeze
					usr.verbs -= /mob/Uchiha/verb/Counter
					usr.verbs -= /mob/Hatake/verb/Susanoo
					usr.shari = 0
					sleep(5)
					usr.ST=0
					return





mob/Hatake
	verb
		Raiden()
			set category = "NinJutsu"
			set name = "Raiden"
			usr.Handseals()
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
			if(usr.firing)
				return
			if(usr.chakra<=80000)
				usr<<"You don't have enough chakra!!"
				return
			else
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=yellow> Says: Raiden!!!</FONT>"
				usr.chakra -= 75000
				usr.firing=1
				if(usr.dir==NORTH)
					usr.loc=locate(usr.x,usr.y+1,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y+2,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y+1,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y+2,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y+1,usr.z)
					sleep(1)
				if(usr.dir==SOUTH)
					usr.loc=locate(usr.x,usr.y-1,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y-2,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y-1,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y-2,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y-1,usr.z)
					sleep(1)
				if(usr.dir==EAST)
					usr.loc=locate(usr.x+1,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x+2,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x+1,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x+2,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x+1,usr.y,usr.z)
					sleep(1)
				if(usr.dir==WEST)
					usr.loc=locate(usr.x-1,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x-2,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x-1,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x-2,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x-1,usr.y,usr.z)
					sleep(1)
				sleep(14)
				usr.firing=0

obj/
	kirin
		icon = 'Kirin.dmi'
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
				var/damage = round(src.nin*1.4)
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
mob/Hatake
	verb
		Raiton_B()
			set category = "NinJutsu"
			set name = "Raiton Beast no jutsu"
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
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Lightning Beast Running Technique!</font>"
				var/obj/kirin/S1 = new /obj/kirin/
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
obj
	pet
		icon = 'Animals.dmi'
		icon_state = "Dog"
		Move_Delay=1.5
		density=1
mob/Hatake
	verb
		Fang_P(mob/M in oview())
			set category = "NinJutsu"
			set name = "Tracking Fang Technique"
			if(usr.firing)
				return
			if(usr.weaponthrow)
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
				usr<<"NONPK ZONE!"
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			var/obj/pet/L = new()
			usr.firing=1
			L.loc=usr.loc
			L.dir = usr.dir
			L.Move_Delay=1.5
			L.Gowner=usr
			walk_towards(L,M)
			usr.firing=0
			sleep(60)
			del(L)


mob/Hatake
	verb
		Raikiri()
			set category = "NinJutsu"
			set name = "Raikiri"
			usr.Handseals()
			if (usr.ingat)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if (usr.intank)
				return
			if (usr.Kaiten)
				return
			if (usr.sphere)
				return
			if(usr.inso)
				return
			if (usr.firing)
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
			if(Raikirion)
				usr <<"Your already using Raikiri!"
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
				var/damage = input("How much chakra would you like to put in?")as num
				if(usr.RaikiriU >= 10)
					if(damage <= 4999)
						usr<<"You must put at least 5000 chakra into it!!"
						return
					if(damage >= usr.chakra)
						usr<<"You put to much energy into the Raikiri and lose control of it!"
						return
					else
						view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#00bfff>R</FONT><FONT COLOR=#3bcffa>a</FONT><FONT COLOR=#75dff4>i</FONT><FONT COLOR=#afeeee>k</FONT><FONT COLOR=#84e3f3>i</FONT><FONT COLOR=#58d7f7>r</FONT><FONT COLOR=#2ccbfc>i</FONT><FONT COLOR=#00bfff>!</FONT> "
						usr.RaikiriU += 1
						usr.chakra -= damage
						if(usr.chakra<0) usr.chakra=0
						usr.RaikiriD = damage*1.2
						usr.Chakragain()
						usr.Raikirion = 1
						usr.firing = 1
						usr.overlays += 'Raikiri.dmi'
						usr.icon_state = "run"
						RD
							if(!usr.battlingRR)
								RaikiriD -= rand(100,200)
							if(!usr.battlingRiC)
								RaikiriD -= rand(100,200)
							if(usr.RaikiriD <= 1)
								usr << "Your Raikiri runs out of energy"
								usr.RaikiriD = 0
								usr.overlays -= 'Raikiri.dmi'
								usr.overlays -= 'Raikiri.dmi'
								usr.overlays -= 'Raikiri.dmi'
								usr.overlays -= 'Raikiri.dmi'
								usr.Raikirion = 0
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
							usr<<"You put to much energy into the Raikiri and lose control of it!"
							return
						else
							view() << "<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#00bfff>R</FONT><FONT COLOR=#3bcffa>a</FONT><FONT COLOR=#75dff4>i</FONT><FONT COLOR=#afeeee>k</FONT><FONT COLOR=#84e3f3>i</FONT><FONT COLOR=#58d7f7>r</FONT><FONT COLOR=#2ccbfc>i</FONT><FONT COLOR=#00bfff>!</FONT> "
							usr.RaikiriU += 1
							usr.chakra -= damage
							if(usr.chakra<0) usr.chakra=0
							usr.RaikiriD = damage*1.2
							usr.Chakragain()
							usr.Raikirion = 1
							usr.firing = 1
							usr.overlays += 'Raikiri.dmi'
							usr.icon_state = "run"
							RD
								if(!usr.battlingRR)
									RaikiriD -= rand(100,200)
								if(!usr.battlingRiC)
									RaikiriD -= rand(100,200)
								if(usr.RaikiriD <= 1)
									usr << "Your Raikiri runs out of energy"
									usr.RaikiriD = 0
									usr.overlays -= 'Raikiri.dmi'
									usr.overlays -= 'Raikiri.dmi'
									usr.overlays -= 'Raikiri.dmi'
									usr.overlays -= 'Raikiri.dmi'
									usr.Raikirion = 0
									usr.firing = 0
									return
								else
									sleep(6)
									goto RD
					else
						usr<<"You fail to use Raikiri!"
						return
mob/var/tmp/HSus=0
mob/Hatake
	verb
		Susanoo() // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Kamui"
			usr.Handseals()
			if(usr.firing) // If the mob's firing var is one...
				usr << "You must wait before using this."
				return
			if(usr.chakra <= 10000&&usr.health >= 25199)
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
			if(usr.kir)
				usr<<"Not Now"
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
				if(usr.HSus) return
				else
					usr<<"You can now use Kamui"
					usr.HSus=1
					sleep(50)
					usr.HSus=0
		OpenFirstGate()
			set category = "TaiJutsu"
			set name = "First Gate"
			if(usr.gate1 == 1)
				usr<<"You already have opened the first gate!"
			else
				if(usr.G1U >= 30)
					view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Initial gate open!!"
					usr.G1U += 1
					usr.health -= round(usr.health/1.1)
					usr.tai = usr.tai*1.1
					usr.Move_Delay =Speed2
					usr.overlays += 'firstgate.dmi'
					usr.Ldamage()
					usr.gate1 = 1
					sleep(200)
					if(usr.gate1 == 1)
						usr.gate1 = 0
						usr.tai = usr.Mtai
						usr.Move_Delay = Speed1
						usr.overlays -= 'firstgate.dmi'
						usr<<"<B><font color = blue>You close the first gate."
						return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Initial gate open!!"
						usr.G1U += 1
						usr.health -= round(usr.health/5)
						usr.tai = usr.tai*1.1
						usr.Move_Delay =Speed2
						usr.overlays += 'firstgate.dmi'
						usr.Ldamage()
						usr.gate1 = 1
						sleep(600)
						usr.gate1 = 0
						usr.tai = usr.Mtai
						usr.Move_Delay = Speed1
						usr.overlays -= 'firstgate.dmi'
						usr<<"<B><font color = blue>You closed the first gate."
					else
						usr << "You failed to open the first gate!"

obj
	bunshins
		RaitonBunshinnojutsu
			verb/RaitonBunshinNoJutsu()
				set name = "Raiton Bunshin no jutsu"
				set desc = "Create a clone of lightning that can attack"
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
					view() << "<font color=silver><b><font face=verdana>[usr] says:Raiton Bunshin No Jutsu!!"
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