mob/Itachi
	verb
		FireShuriken()
			set category="TaiJutsu"
			set name = "Katon Housenka Tsumabeni"
			if(usr.firing)
				return
			if(!usr.PK)
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
			for(var/obj/Shuriken/S in view(10,usr))
				S.overlays +='firekunai.dmi'
				view(usr)<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=red> Says: Katon Hosenka Tsumabeni!"
				usr.firing=1
				usr.chakra-=100
				usr.Chakragain()
				S.tai=usr.tai*1.6
				sleep(3)
				usr.firing=0
				for(var/obj/Kunai/O in usr.contents)
					O.ammount-=1
					if(O.ammount<=0)
						del(O)

mob/var/Miror
mob/Itachi
	verb
		MirrorTechnique(mob/M in view())
			set name = "Magen Kyou Tenchi-Ten"
			set category = "Doujutsu"
			if(!M.PK&&M.NPC||usr.Miror)
				return
			else
				usr.Miror = 1
				view(usr)<<"<font size=1><font face=Tahoma><b><font color=white><BIG>\icon[usr.face_icon]</BIG><font size = 1>[usr]: Not so fast..."
				var/Loc1 = usr.loc
				var/Loc2 = M.loc
				usr.loc = Loc2;M.loc = Loc1
				if(usr.Froze)
					M.Froze = 1
					usr.Froze = 0
				if(usr.caught)
					M.caught = 1
					usr.caught = 0
				if(usr.captured)
					M.captured = 1
					usr.captured = 0
				if(usr.Frozen)
					M.Frozen = 1
					usr.Frozen = 0
				usr.chakra -= 1000
				sleep(300)
				usr.Miror = 0

mob/Itachi/verb/Crow_Switch()
	for(var/mob/npc/CBunshin/C in world)
		var/Loc1 = usr.loc
		var/Loc2 = C.loc
		usr.loc = Loc2;C.loc = Loc1


mob
	npc
		CBunshin
			NPC = 1
			proc/Die()
				flick("crow",src)
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
						view() << "The [src] attacks [M] for [Damage]!"
						P.Death(O)
						sleep(10)
						src.firing=0

obj
	bunshins
		CrowBunshinnojutsu
			verb/CrowBunshinNoJutsu()
				set name = "Crow Bunshin no Jutsu"
				set desc = "Create a clone of crows that can attack"
				set category = "NinJutsu"
				usr.Handseals()
				if(usr.chakra <= 50)
					usr << "Not enough chakra!"
					return
				if(usr.firing||!usr.handseals)
					return
				if(usr.resting||usr.meditating)
					usr<<"Not while resting/meditating"
					return
				if(usr.Frozen||usr.Froze)
					usr<<"Your Frozen"
					return
				if(usr.caught||usr.captured)
					usr<<"Your captured"
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				else
					usr.KillBunshin()
					usr.firing=1
					view() << "<font color=silver><b><font face=verdana>[usr] says:Crow Bunshin No Jutsu!!"
					var/mob/npc/CBunshin/S = new /mob/npc/CBunshin
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