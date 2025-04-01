mob/Medical
	verb
		InfoCards()
			set category = "Doujutsu"
			set name = "InfoCards"
			for(var/mob/M in world)
				if(usr.Froze)
					usr<<"Your Frozen"
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				if(M.client&&M.z==usr.z)
					usr<<"{\icon[M][M.name],Rank - [M.rank], health - [M.health],Chakra - [M.chakra]"
					usr<<"Tai - [M.tai],Nin - [M.nin],Gen - [M.gen]"
					usr<<"Location; [M.x],[M.y]"

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
				M<<"[usr] begins to use his chakra to heal you."
				usr<<"You begin to heal [M]"
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
		ChakraAbsorb(mob/M in view(1))
			set category = "NinJutsu"
			set name = "Absorb"
			usr.Handseals()
			if(!M) return
			if(M==usr)
				return
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
			if(usr.health>=usr.Mhealth)
				usr<<"Your at Max Health"
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else
				usr<<"You start to absorb [M]"
				usr.overlays+='chakra.dmi'
				var/damage = round(src.nin*1.2)
				if(damage >= 1)
					M.health -= damage
					usr.health += damage
					usr.chakra += damage
					M<<"[usr] is absorbing you."
					usr.Death(M)
					usr.overlays-='chakra.dmi'

		ChakraNoMesu()
			set category = "GenJutsu"
			set name = "Chakra No Mesu"
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
			if(!usr.scalpel)
				usr<<"You concentrate the chakra to your hands to develop chakra scalpels."
				usr.verbs += new /mob/Medical/verb/SliceTendons()
				usr.verbs += new /mob/Medical/verb/ScrewNerves()
				usr.scalpel =1
				usr.gen = usr.gen*1.1
				mesu
				if(usr.scalpel)
					usr.chakra -=3.5
					if(usr.chakra <= 4)
						usr<<"You stop using Chakra No Mesu."
						usr.scalpel = 0
						usr.verbs -= new /mob/Medical/verb/SliceTendons()
						usr.verbs -= new /mob/Medical/verb/ScrewNerves()
						return
					else
						sleep(4)
						goto mesu
			else if(usr.scalpel)
				usr.scalpel=0
				usr<<"You stop using Chakra No Mesu."
				usr.verbs -= new /mob/Medical/verb/SliceTendons()
				usr.verbs -= new /mob/Medical/verb/ScrewNerves()
				usr.gen = usr.Mgen
		SliceTendons(mob/M in get_step(src,src.dir))
			set category = "TaiJutsu"
			set name = "Slice Tendons"
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
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else
				usr<<"You slice [M]'s Tendons slowing their movement!"
				M<<"Your Tendons were sliced!"
				usr.firing=1
				M.health -= usr.gen*1.5
				M.Death(usr)
				M.Move_Delay = 10
				sleep(60)
				M.Move_Delay = usr.Savedspeed
				M<<"Your tendons miraculously heal!"
				usr<<"[M]'s Tendons heal"
				usr.firing=0
		ScrewNerves(mob/M in get_step(src,src.dir))
			set category = "TaiJutsu"
			set name = "Screw Nerves"
			if(usr.firing==1)
				usr<<"Not now"
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
			if(M.PK==0)
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else
				usr<<"You screw [M]'s nerves messing their movement!"
				M.screwed = 1
				sleep(150)
				if(M)
					M.screwed = 0
					M<<"Your nerves miraculously heal!"
					usr<<"[M]'s nerves heal"
mob/Medical
	verb
		SSM()
			set category = "SenJutsu"
			set name = "Snake Sage Mode"
			if(!usr.PK||usr.caught||usr.resting||usr.meditating||usr.Kaiten)return
			if(!usr.Smode&&!usr.firing)
				view()<<"<font color=#FF8103>Time Begins to Slow, as Nature is being drawn in by [usr]!"
				usr.overlays += 'SnakeSage.dmi'
				usr.Smode =1
				usr.nin = usr.nin*1.4
				usr.tai = usr.tai*1.4
				usr.gen = usr.gen*1.4
				fire
				if(usr.Smode)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'SnakeSage.dmi'
						usr.Smode = 0
						usr.nin = usr.Mnin
						usr.tai = usr.Mtai
						usr.gen = usr.Mnin
						return
					else
						sleep(4)
						goto fire
			else if(usr.Smode)
				usr.overlays -= 'SnakeSage.dmi'
				usr.Smode =0
				usr.nin = usr.Mnin
				usr.tai = usr.Mtai
				usr.gen = usr.Mgen
				usr<<"Time Begins to go normal speed...."