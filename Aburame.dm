mob/Aburame
	verb
		KonchuuSousou(mob/M in oview(5,usr))
			set category = "NinJutsu"
			set name = "Konchuu Sousou"
			usr.Handseals()
			if(!usr.handseals)
				return
			if(usr.sphere)
				return
			if(src.Kaiten)
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(!M.PK)
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
			if(M.SShield)
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
				var/damage=usr.nin*1.1
				view(usr)<<"Konchuu Sousou!"
				flick("sousou",M)
				M.overlays-='BugArmor.dmi'
				M.overlays-='BugArmor.dmi'
				usr.Chakragain()
				M.overlays-='BugArmor.dmi'
				M.chakra-=damage
				M.captured=0
				usr.firing=0
				if(M.health<=0)
					M.Death(usr)
					return
				sleep(15)
			else
				return
mob/Aburame
	verb
		KonchuuKyuu(mob/M in oview(3))
			set category = "NinJutsu"
			set name = "Konchuu Kyuu"
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
			if(M.SShield)
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
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Konchuu Kyuu!"
					M.overlays+='BugArmor.dmi'
					M.captured=1
					usr.Chakragain()
					M.Frozen=0
					sleep(100)
					if(M)
						M.captured=0
						M.Frozen=0
						M.overlays-='BugArmor.dmi'
						M.overlays-='BugArmor.dmi'
						M.overlays-='BugArmor.dmi'
						M.overlays-='BugArmor.dmi'
						usr.firing=0
					return
				else
					usr.random=rand(1,5)
					if(usr.random==1)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Konchuu Kyuu!"
						M.overlays+='BugArmor.dmi'
						M.captured=1
						M.Frozen=0
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='BugArmor.dmi'
							M.overlays-='BugArmor.dmi'
							M.overlays-='BugArmor.dmi'
							M.overlays-='BugArmor.dmi'
							usr.firing=0
						return
					if(usr.random==2)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Konchuu Kyuu!"
						M.overlays+='BugArmor.dmi'
						M.captured=1
						M.Frozen=0
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='BugArmor.dmi'
							M.overlays-='BugArmor.dmi'
							M.overlays-='BugArmor.dmi'
							M.overlays-='BugArmor.dmi'
						usr.firing=0
						return
					if(usr.random==3)
						usr<<"You fail to use Konchuu Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==4)
						usr<<"You fail to use Konchuu Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==5)
						usr<<"You fail to use Konchuu Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					sleep(100)
					usr.firing=0
					if(M)
						M.captured=0
mob/Aburame
	verb
		DestroyKonchuu()
			set category = "NinJutsu"
			set name = "Destroy Konchuu"
			for(var/mob/M in world)
				if(M.havekonchuu)
					M.havekonchuu=0
					M<<"A Konchuu has fallen off"
					usr<<"A Konchuu has fallen off [M]'s shoulder"

mob/Aburame
	verb
		BugArmor()
			set category = "NinJutsu"
			set name = "Konchuu Armor"
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
			if(!usr.Bgarmor&&!usr.firing)
				view()<<"<font color = blue>[usr]: Konchuu Armor!"
				usr.overlays += 'BugArmor.dmi'
				usr.Bgarmor =1
				usr.nin = usr.nin*1.1
				sleep(5)
				sand
				if(usr.Bgarmor)
					usr.chakra -=450
					if(usr.chakra <= 400)
						usr.overlays -= 'BugArmor.dmi'
						usr.Bgarmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto sand
			else if(usr.Bgarmor)
				usr.overlays -= 'BugArmor.dmi'
				usr.Bgarmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the Konchuu armor."
				sleep(5)
mob/Aburame
	verb
		summonkonchuu()
			set category = "NinJutsu"
			set name = "Summon Konchuu"
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
				usr<<"You now have 15 Konchuu"

mob/Aburame
	verb
		Placekonchuu(mob/M in oview(2))
			set category = "NinJutsu"
			set name = "Place Konchuu"
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
			if(M.SShield)
				return
			if(usr.konchdelay)
				return
			if(M)
				if(M.havekonchuu)
					usr<<"Only one bug at a time."
					return
			if(usr.firing)
				return
			if(M.Kaiten||M.sphere||M.counter)
				usr << "Your Konchuu would be killed if you put it on them right now!"
				return
			if(usr.Konchuu <= 0)
				usr<<"You dont have any konchuu bugs to place!"
				return
			if(usr.chakra <= 10000)
				usr<<"Not enough Chakra!"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			else
				usr<<"You place a chakra draining Konchuu on [M]!"
				usr.Konchuu -= 1
				M.havekonchuu = 1
				M.konchuuperson="[usr]"
				BUGZ
				if(M.havekonchuu)
					M.chakra -=2500
					if(M.chakra <= 2000)
						M.havekonchuu=0
						M.konchuuperson=""
						M<<"[usr]'s bug has fallen off your shoulder."
						usr<<"A bug has fallen off of [M]'s shoulder."
				else
					sleep(15)
					goto BUGZ
				sleep(600)
				if(M)
					M.havekonchuu=0
					M.konchuuperson=""
					M<<"[usr]'s bug has fallen off your shoulder."
					usr<<"A bug has fallen off of [M]'s shoulder."

mob/Aburame
	verb
		ExplodeKonchuu()
			set category = "NinJutsu"
			set name = "Explode Konchuu"
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
				if(M.havekonchuu&&M.konchuuperson=="[usr]")
					usr.konchdelay=1
					flick("boom",M)
					var/damage = round(usr.nin*1.1)
					M<<"[usr]'s Konchuu explodes on your shoulder giving you [damage] damage!"
					usr<<"A Konchuu explodes on [M]'s shoulder giving them [damage] damage!"
					M.havekonchuu=0
					M.konchuuperson=null
					usr.Chakragain()
					M.health -= damage
					M.Death(usr)
			sleep(30)
			usr.konchdelay=0
mob/Aburame
	verb
		Mushi() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Mushi Kame No Jutsu"
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
			if(!usr.Kaiten&&!usr.firing&&!usr.Frozen)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=blue> Says: Mushi Kame No Jutsu!!"
				usr.Frozen = 1
				usr.firing = 1
				usr.overlays += 'Mushi.dmi'
				usr.Kaiten =1
				OMG
				if(usr.Kaiten)
					usr.chakra -=100
					if(usr.chakra <= 120)
						usr.overlays -= 'Mushi.dmi'
						usr.Kaiten = 0
						usr.firing = 0
					else
						sleep(15)
						goto OMG
			else if(usr.Kaiten&&usr.Frozen)
				usr.Frozen = 0
				usr.overlays -= 'Mushi.dmi'
				usr.Kaiten =0
				usr.firing=0
				usr<<"You release your Mushi Kame No Jutsu."