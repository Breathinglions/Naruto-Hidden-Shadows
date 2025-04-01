obj
	hachisenbon
		icon = 'needles.dmi'//dont have a base icon so cant make weights icon!lol
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
				var/damage = round(src.nin*1.4)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [usr]'s bees for [damage] damage!!"
					M.Death(O)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Kamizuri
	verb
		hsenbon() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Hachi Senbon no jusu"
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else // If the firing var isn't 1...
				usr.DoryuuN += 1
				usr.chakra -= 39
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <font size=1><font face=verdana><b><font color=yellow> Hachi Senbon no jutsu!!"
				usr.firing=1
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/hachisenbon/A = new /obj/hachisenbon/
					var/obj/hachisenbon/B = new /obj/hachisenbon/
					var/obj/hachisenbon/C = new /obj/hachisenbon/
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
					var/obj/flameb/A = new /obj/hachisenbon/
					var/obj/flameb/B = new /obj/hachisenbon/
					var/obj/flameb/C = new /obj/hachisenbon/
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
					var/obj/hachisenbon/A = new /obj/hachisenbon/
					var/obj/hachisenbon/B = new /obj/hachisenbon/
					var/obj/hachisenbon/C = new /obj/hachisenbon/
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
					var/obj/hachisenbon/A = new /obj/hachisenbon/
					var/obj/hachisenbon/B = new /obj/hachisenbon/
					var/obj/hachisenbon/C = new /obj/hachisenbon/
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
				sleep(5)
				usr.firing=0
				return


mob/Kamizuri
	verb
		BeeSabakuSousou()
			set category = "NinJutsu"
			set name = "Bee Sousou"
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
					view(usr)<<"Bee Sousou!"
					flick("sousou",M)
					M.overlays-='BeeArmor.dmi'
					M.overlays-='BeeArmor.dmi'
					usr.Chakragain()
					M.overlays-='BeeArmor.dmi'
					M.health-=damage
					usr.firing=0
					if(M.health<=0)
						M.Death(usr)
					sleep(30)
					M.captured=0
				else
					return
mob/Kamizuri
	verb
		BeeSabakuKyuu(mob/M in oview(3))
			set category = "NinJutsu"
			set name = "Bee Kyuu"
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
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
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Bee Kyuu!"
					M.overlays+='BeeArmor.dmi'
					M.captured=1
					usr.Chakragain()
					M.Frozen=1
					sleep(50)
					if(M)
						M.captured=0
						M.Frozen=0
						M.overlays-='BeeArmor.dmi'
						M.overlays-='BeeArmor.dmi'
						M.overlays-='BeeArmor.dmi'
						M.overlays-='BeeArmor.dmi'
						usr.firing=0
					return
				else
					usr.random=rand(1,5)
					if(usr.random==1)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Bee Kyuu!"
						M.overlays+='BeeArmor.dmi'
						M.captured=1
						M.Frozen=1
						sleep(50)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='BeeArmor.dmi'
							M.overlays-='BeeArmor.dmi'
							M.overlays-='BeeArmor.dmi'
							M.overlays-='BeeArmor.dmi'
							usr.firing=0
						return
					if(usr.random==2)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Bee Kyuu!"
						M.overlays+='BeeArmor.dmi'
						M.captured=1
						M.Frozen=1
						sleep(50)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='BeeArmor.dmi'
							M.overlays-='BeeArmor.dmi'
							M.overlays-='BeeArmor.dmi'
							M.overlays-='BeeArmor.dmi'
						usr.firing=0
						return
					if(usr.random==3)
						usr<<"You fail to use Bee Kyuu"
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
					sleep(50)
					usr.firing=0
					if(M)
						M.captured=0

mob/Kamizuri
	verb
		BeeArmor()
			set category = "NinJutsu"
			set name = "Bee Armor"
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
				view()<<"<font color = yellow>[usr]: Bee Armor!"
				usr.overlays += 'BeeArmor.dmi'
				usr.Barmor =1
				usr.nin = usr.nin*1.1
				sand
				if(usr.Barmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'BeeArmor.dmi'
						usr.Barmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto sand
			else if(usr.Barmor)
				usr.overlays -= 'BeeArmor.dmi'
				usr.Barmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the bee armor."

mob/Kamizuri
	verb
		Destroybee()
			set category = "NinJutsu"
			set name = "Destroy Bee"
			for(var/mob/M in world)
				if(M.havebee)
					M.havebee=0
					M<<"A Bee has fallen off"
					usr<<"A Bee has fallen off [M]'s shoulder"
mob/Kamizuri
	verb
		summonbees()
			set category = "NinJutsu"
			set name = "Summon Bees"
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
				usr.Bees = 15
				usr<<"You now have 15 Bees"
mob/Kamizuri
	verb
		Placebee(mob/M in oview(2))
			set category = "NinJutsu"
			set name = "Place Bee"
			if(usr.beedelay)
				return
			if(M)
				if(M.havebee)
					usr<<"Only one bee at a time."
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
			if(M.Kaiten||M.sphere||M.counter)
				usr << "Your Bee would be killed if you put it on them right now!"
				return
			if(usr.Bees <= 0)
				usr<<"You dont have any Bees to place!"
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
				usr<<"You place a chakra draining Bee on [M]!"
				usr.chakra -= 120
				usr.Bees -= 1
				M.havebee = 1
				M.beeperson="[usr]"
				sleep(600)
				if(M)
					M.havebee=0
					M.beeperson=""
					M<<"[usr]'s bee has fallen off your shoulder."
					usr<<"A bee has fallen off of [M]'s shoulder."
mob/Kamizuri
	verb
		ExplodeBee()
			set category = "NinJutsu"
			set name = "Explode Bee"
			usr.Handseals()
			if(usr.konchdelay)
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			for(var/mob/M in world)
				if(M.havebee&&M.beeperson=="[usr]")
					usr.beedelay=1
					flick("boom",M)
					var/damage = round(usr.nin*1.1)
					M<<"[usr]'s Bee explodes on your shoulder giving you [damage] damage!"
					usr<<"A Bee explodes on [M]'s shoulder giving them [damage] damage!"
					M.havebee=0
					M.beeperson=null
					usr.Chakragain()
					M.health -= damage
					M.Death(usr)
			sleep(30)
			usr.beedelay=0