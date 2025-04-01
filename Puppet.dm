//\------------------------------------------------------------------------------/\\
//\									|Movable Puppet|							    				/\\
//\						      |Wearable BackPuppet|						    				/\\
//\      This coding was gathered and scripted by Garruea, Many people have      /\\
//\ Been trying to make a working backpuppet summon which has 1 puppet limit but /\\
//\ they couldnt figure out how to do it, so I took the liberty to find how it   /\\
//\ works. This can be reconfigured for purposes other than Naruto, This coding  /\\
//\ exactly fits every Naruto based game because of the techs that are used.     /\\
//\ There are the backpuppet icons including the Crow puppet.If you have any     /\\
//\ question or need help page me or email me at thefuryrain@hotmail.com         /\\
//\------------------------------------------------------------------------------/\\
//\								WARNING READ BELOW                              		/\\
//\------------------------------------------------------------------------------/\\
//\ Infringing or Falsly Stating Anyone Other Than The Original Coder Garruea and/\\
//\ the Original Iconner 123Azul321 for not making these Icons and Code are wrong/\\
//\    This is Copyrighted By: Byond 2008 and By: Naruto Production Inc. 2007    /\\
//\------------------------------------------------------------------------------/\\



//Variables needed for the puppet
mob/var
	puppeteer=0
	puppetinuse = 0

mob //some variables that can be in here and should stay here.
	Big_Puppet
		var
			tmp/canhit = 1

mob
	Big_Puppet
		icon = 'karasu.dmi'
		icon_state="0,0"
		density = 1
		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == original)
					return
				if(src.firing)
					return
				if(!M:PK)
					original<<"<font size = -1><font size = -1><B>Something stops your puppet from attacking [M]"
					sleep(10)
					return
				else
					var/mob/P = M
					var/Damage = src.tai/1.4
					P.health -= Damage // Takes the players health
					view() << "[src] attacks [M] for [Damage]!"
					P.Death(src)
					src.firing = 1
					sleep(15)
					src.firing = 0

obj/Backpuppet//This is the finished summoned obj backpuppet.
	name = "Wrapped Puppet"
	icon = 'Puppet Wrapped.dmi'
	worn = 0
	verb
		Summon_Puppet()
			if(usr.puppetinuse >= 1)
				usr<<"You can only have one puppet at a time."
				return
			if(usr.chakra<=45000)
				usr<<"Not Enough Chakra!"
				return
			if(usr.chakra>=45000)
				usr.puppetinuse = 1
				usr.chakra -= 45000
				var/mob/Big_Puppet/P = new/mob/Big_Puppet
				P.original = usr
				P.loc = locate(usr.x,usr.y - 1,usr.z)
				P.health = 475000
				P.name ="[usr]'s Puppet"
				P.tai = usr.tai
		Unsummon()
			for(var/mob/Big_Puppet/P in world)
				if(P.original == usr)
					usr.puppetinuse = 0
					usr<<"You destroy [P]!"
					del(P)
		Wear()
			if(src.worn)
				src:worn = 0
				usr.overlays -= 'Puppet Wrapped.dmi'//temp icon
				usr.verbs -= new /mob/Puppet/verb/Kujutsu()
				usr.verbs -= new /mob/Puppet/verb/Salamandra()
				usr.verbs -= new /mob/Puppet/verb/Poison()
				usr << "You remove the [src.name]."
				usr.puppeteer=0
				src.suffix = ""
				usr.nin=usr.Mnin
			else
				if(usr.puppeteer==1)
					usr<<"You cant wear more then one Wrapped Puppet."
					return
				src:worn = 1
				usr.overlays += 'Puppet Wrapped.dmi'
				usr.verbs += new /mob/Puppet/verb/Kujutsu()
				usr.verbs += new /mob/Puppet/verb/Salamandra()
				usr.verbs += new /mob/Puppet/verb/Poison()
				usr << "You wear the [src.name]."
				usr.puppeteer=1
				src.suffix = "Equipped"
				usr.nin += 1000
		Look()
			usr<<"This is a Master Puppet."
		Get()
			set src in oview(1)
			src.loc = usr
			usr<<"You picked up [src]"
obj/
	poison
		icon = '000.dmi'
		icon_state = "poison"
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
				var/damage = round(src.nin*1.3)
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
mob/Puppet
	verb
		Poison()
			set category = "NinJutsu"
			set name = "Doku Tekunikku"
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
			for(var/mob/Big_Puppet/P in world)
				if(P.original == usr)
					usr.chakra -= 6000
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=purple> Says: Doku Tekunikku No Jutsu!</font>"
					var/obj/poison/S1 = new /obj/poison/
					S1.loc = P.loc
					S1.nin = usr.nin
					S1.dir = P.dir
					S1.name = "[usr]"
					S1.Gowner = usr
					walk(S1,P.dir)
					sleep(25)
					usr.firing = 0
					sleep(45)
					del(S1)
mob/Puppet
	verb
		Salamandra()
			set category = "NinJutsu"
			set name = "Kurohigi Sanshuou"
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
			for(var/mob/Big_Puppet/P in world)
				if(P.original == usr)
					usr.firing=1
					usr.chakra -= 6000
					usr.bakuretsuuse=1
					flick("Poison",P)
					view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=purple> Says: Kurohigi Senshuou!</font>"
					var/damage=usr.nin*1.1
					for(var/mob/M in oview(1,P))
						M<<"You were captured by [usr]'s Puppet and have taken [damage] damage!"
						usr<<"You have given [damage] damage to [M]!"
						M.havekonchuu=1
						M.konchuuperson = "[usr]"
						POISON
						if(M.havekonchuu)
							M.health-=4500
							if(M.health <=0)
								M.Death(usr)
								M.havekonchuu=0
								M.konchuuperson=""
								M<<"[usr]'s poison has killed you"
								usr<<"You have killed [M] with your poison"
							else
								sleep(15)
								goto POISON
							sleep(300)
							if(M)
								M.havekonchuu=0
								M.konchuuperson=""
								M<<"[usr]'s poison has worn off"
								usr<<"Your poison wore off"
					sleep(60)
					usr.firing=0
					usr.bakuretsuuse=0
mob/Puppet
	verb
		Kujutsu()
			set category = "NinJutsu"
			set name = "Kujutsu Kawarimi No Jutsu"
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
			for(var/mob/Big_Puppet/P in world)
				if(P.original == usr)
					usr.firing=1
					usr.chakra -= 6000
					view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=purple> Says: Kujutsu Kawarimi No Jutsu!</font>"
					usr.loc=locate(P.x,P.y,P.z)
					sleep(25)
					usr.firing=0
