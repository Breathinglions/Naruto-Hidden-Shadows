mob/var/tmp/CSpy=0
mob/Deidara
	verb
		ClayMine() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Spider Clay Mines"
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
			if(usr.chakra <= 40000)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				usr.DoryuuN += 1
				usr.firing=1
				usr.chakra -= 35500
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=white> Says: Go Forth My Clay Creations: Spider Clay Mines!!!"
				usr.Chakragain()
				if(usr.dir==NORTH)
					var/obj/Clayspider/A = new /obj/Clayspider/
					A.loc = locate(usr.x, usr.y+2, usr.z)
					A.nin=usr.nin
					A.Gowner=usr
					A.Move_Delay=1.5
					A.dir=NORTH
					walk(A,usr.dir)
					sleep(60)
					del(A)
					return
				if(usr.dir==SOUTH)
					var/obj/Clayspider/A = new /obj/Clayspider/
					A.loc = locate(usr.x, usr.y-2, usr.z)
					A.nin=usr.nin
					A.Gowner=usr
					A.Move_Delay=1.5
					A.dir=SOUTH
					walk(A,usr.dir)
					sleep(60)
					del(A)
					return
				if(usr.dir==EAST)
					var/obj/Clayspider/A = new /obj/Clayspider/
					A.loc = locate(usr.x+2, usr.y, usr.z)
					A.nin=usr.nin
					A.Gowner=usr
					A.Move_Delay=1.5
					A.dir=EAST
					walk(A,usr.dir)
					sleep(60)
					del(A)
					return
				if(usr.dir==WEST)
					var/obj/Clayspider/A = new /obj/Clayspider/
					A.loc = locate(usr.x-2, usr.y, usr.z)
					A.nin=usr.nin
					A.Gowner=usr
					A.Move_Delay=1.5
					A.dir = WEST
					walk(A,usr.dir)
					sleep(60)
					del(A)
					return
				sleep(25)
				usr.firing=0
				return

mob/Deidara
	verb
		ClaySousou()
			set category = "NinJutsu"
			set name = "Clay Sousou"
			usr.Handseals()
			for(var/mob/M in oview(10,usr))
				if(!usr.handseals)
					return
				if(!usr.Kyuu)
					usr<<"You Must Use Clay Kyuu First"
					return
				if(usr.sphere)
					return
				if(src.Kaiten)
					return
				if(M.SShield)
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
					view(usr)<<"Clay Sousou!"
					flick("sousou",M)
					usr.firing=1
					var/damage=usr.nin*1.1
					usr<<"[M] Has Taken [damage] From Clay Sousou"
					M.health-=damage
					M.Death(usr)
					M.overlays-='PaperArmor.dmi'
					M.overlays-='PaperArmor.dmi'
					M.overlays-='PaperArmor.dmi'
					usr.Chakragain()
					usr.firing=0
					sleep(30)
					M.captured=0
				else
					return

mob/jutsu
	verb
		ClayArt_BE()
			set category = "NinJutsu"
			set name="Clay Art Bunshin Explosion Technique"
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
					view(B)<<"[usr]'s Clay Bunshin explodes!"
					var/damage=usr.nin*1.6
					for(var/mob/M in oview(3,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(14)
					usr.bakuretsuuse=0
			for(var/mob/npc/KBunshin/B in world)
				if(B.original == usr)
					usr.bakuretsuuse=1
					flick("smoke2",B)
					view(B)<<"[usr]'s Bunshin explodes!"
					var/damage=usr.nin*1.6
					for(var/mob/M in oview(3,B))
						M<<"You have taken [damage] damage!"
						del(B)
						usr<<"You have given [damage] damage to [M]!"
						M.health-=damage
						if(M.health<=0)
							M.Death(usr)
					sleep(14)
					usr.bakuretsuuse=0
mob/Deidara
	verb
		ClayKyuu(mob/M in oview(10))
			set category = "NinJutsu"
			set name = "Clay Kyuu"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.firing)
				return
			if(usr.sphere)
				return
			if(usr.Kaiten)
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
			if(M.Kaiten)
				return
			if(M.captured)
				usr<<"He is already caught!"
				return
			else
				if(usr.KyuuN>=100)
					usr.chakra -= 10000
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.KyuuN += 1
					usr.Kyuu = 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Clay Kyuu!"
					M.overlays+='PaperArmor.dmi'
					M.captured=1
					usr.Chakragain()
					M.Frozen=1
					sleep(100)
					if(M)
						M.captured=0
						M.Frozen=0
						M.overlays-='PaperArmor.dmi'
						M.overlays-='PaperArmor.dmi'
						M.overlays-='PaperArmor.dmi'
						M.overlays-='PaperArmor.dmi'
					usr.firing=0
					usr.Kyuu = 0
					return
				else
					usr.random=rand(1,5)
					if(usr.random==1)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						usr.Kyuu = 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Clay Kyuu!"
						M.overlays+='PaperArmor.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='PaperArmor.dmi'
							M.overlays-='PaperArmor.dmi'
							M.overlays-='PaperArmor.dmi'
							M.overlays-='PaperArmor.dmi'
						usr.firing=0
						usr.Kyuu = 0
						return
					if(usr.random==2)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						usr.Kyuu = 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Clay Kyuu!"
						M.overlays+='PaperArmor.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='PaperArmor.dmi'
							M.overlays-='PaperArmor.dmi'
							M.overlays-='PaperArmor.dmi'
							M.overlays-='PaperArmor.dmi'
						usr.firing=0
						usr.Kyuu = 0
						return
					if(usr.random==3)
						usr<<"You fail to use Clay Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==4)
						usr<<"You fail to use Clay Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==5)
						usr<<"You fail to use Clay Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					sleep(100)
					usr.firing=0
					if(M)
						M.captured=0
mob/Deidara
	verb
		DestroyClay()
			set category = "NinJutsu"
			set name = "Destroy Clay"
			for(var/mob/M in world)
				if(M.havekonchuu)
					M.havekonchuu=0
					M<<"Some clay has fallen off"
					usr<<"Some clay has fallen off [M]'s shoulder"

mob/Deidara
	verb
		ClayArmor()
			set category = "NinJutsu"
			set name = "Clay Armor"
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
			if(!usr.Barmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Clay Armor!"
				usr.overlays += 'PaperArmor.dmi'
				usr.Barmor =1
				usr.nin = usr.nin*1.1
				sand
				if(usr.Barmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'PaperArmor.dmi'
						usr.Barmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto sand
			else if(usr.Barmor)
				usr.overlays -= 'PaperArmor.dmi'
				usr.Barmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the Clay armor."
mob/Deidara
	verb
		summonclay()
			set category = "NinJutsu"
			set name = "Summon Clay"
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
			if(usr.chakra <= 10)
				usr<<"Not enough Chakra!"
			else
				usr.chakra -= 15
				usr.Konchuu = 15
				usr<<"You now have 15 Clay Parts"

mob/Deidara
	verb
		Placeclay(mob/M in oview(1))
			set category = "NinJutsu"
			set name = "Place Clay"
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
			if(usr.konchdelay)
				return
			if(M)
				if(M.havekonchuu)
					usr<<"Only one clay pieace at a time."
					return
			if(usr.firing)
				return
			if(M.Kaiten||M.sphere||M.counter)
				usr << "Your Clay would be destroyed if you put it on them right now!"
				return
			if(usr.Konchuu <= 0)
				usr<<"You dont have any clay to place!"
				return
			if(usr.chakra <= 12)
				usr<<"Not enough Chakra!"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			else
				usr<<"You place a chakra draining Clay on [M]!"
				usr.chakra -= 120
				usr.Konchuu -= 1
				M.havekonchuu = 1
				M.clayperson="[usr]"
				sleep(600)
				if(M)
					M.havekonchuu=0
					M.clayperson=""
					M<<"[usr]'s Clay has fallen off your shoulder."
					usr<<"A pieace of Clay has fallen off of [M]'s shoulder."

mob/Deidara
	verb
		ExplodeClay()
			set category = "NinJutsu"
			set name = "Explode Clay"
			usr.Handseals()
			if(usr.konchdelay)
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
			if(usr.caught)
				usr<<"Your captured"
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
			for(var/mob/M in world)
				if(M.havekonchuu&&M.clayperson=="[usr]")
					usr.konchdelay=1
					flick("boom",M)
					var/damage = round(usr.nin*1.1)
					M<<"[usr]'Clay explodes on your shoulder giving you [damage] damage!"
					usr<<"A Clay pieace explodes on [M]'s shoulder giving them [damage] damage!"
					M.havekonchuu=0
					M.clayperson=null
					usr.Chakragain()
					M.health -= damage
					M.Death(usr)
			sleep(30)
			usr.konchdelay=0
obj/
	ClayBird
		icon = 'Clay Bird.dmi'
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
mob/Deidara
	verb
		ClayBird()
			set category = "NinJutsu"
			set name = "Clay Art Bird Bombardment"
			usr.Handseals()
			if(!usr.handseals||usr.firing||usr.sphere||usr.Kaiten||src.Kaiten)return
			if(usr.chakra<=5000)
				usr<<"Not Enough Chakra!!"
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
				usr.chakra -= 3000
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Clay Art: Bird Bombardment!</font>"
				var/obj/ClayBird/S1 = new /obj/ClayBird/
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

obj
	Senban2
		icon='invis.dmi'
		layer = MOB_LAYER+2
mob/Deidara
	verb
		C4()
			set category = "NinJutsu"
			set name = "Clay Art C4 Self-Detonate"
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else // If the firing var isn't 1...
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green>: Art is an Explosion!"
				var/obj/Senban2/K = new /obj/Senban2/
				K.owner=usr
				K.loc = locate(usr.x,usr.y,usr.z)
				K.senban=1
				usr.overlays+='Boom.dmi'
				flick("rise",K)
				for(var/mob/M in oview(5,usr))
					var/damage=round(usr.Mhealth/1.4)
					view()<<"[M] has taken [damage] damage from [usr]'s detonation"
					usr.health-= damage
					M.health-=damage
					if(M.health<=0)
						M.Death(usr)
					if(usr.health<=0)
						Death(usr)
				sleep(100)
				usr.overlays-='Boom.dmi'
				del(K)
				sleep(100)
				usr.firing=0
