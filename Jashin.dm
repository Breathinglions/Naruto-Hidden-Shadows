mob/Hidan
	verb
		Steal_B(mob/M in get_step(src,src.dir))
			set category = "NinJutsu"
			set name = "Blood Capture"
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
					usr<<"You only need one drop of his blood for your ritual."
					return
			if(usr.firing)
				return
			if(M.Kaiten||M.sphere||M.counter)
				usr << "You won't be able to take their blood while they are using that jutsu!"
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else
				usr<<"You take a drop of blood from [M]!"
				M<<"Your blood has been taken for [usr]'s ritual!"
				M.health -= usr.tai*1.5
				usr.overlays += 'HidanSkel.dmi'
				M.havekonchuu = 1
				M.konchuuperson="[usr]"
				sleep(200)
				if(M)
					M.havekonchuu=0
					M.konchuuperson=""
					M<<"[usr] no longer has your blood."
					usr<<"Your Ritual is no longer working."
					usr.overlays -= 'HidanSkel.dmi'

mob/Hidan
	verb
		Ritual()
			set category = "NinJutsu"
			set name = "Death Controlling Possessed Blood"
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
					var/damage = round(usr.tai*1.5)
					M<<"[usr]'s Ritual injures you for [damage] damage!"
					usr<<"[M] receives [damage] damage from your Ritual Technique!"
					usr.overlays -= 'HidanSkel.dmi'
					M.havekonchuu=0
					M.konchuuperson=null
					usr.Chakragain()
					M.health -= damage
					M.Death(usr)
			sleep(30)
			usr.konchdelay=0

mob/Hidan
	verb
		Immortal() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Ritual of the Immortal"
			if(usr.Henge)
				usr<<"Not While Your In Henge"
				return
			if(usr.chakra <= 20000)
				usr<<"You dont have enough chakra!"
				return
			if(usr.Kaiten&&!usr.sphere)
				usr<<"Not Now"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(!usr.firing)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=red> Says: Preparations for the Ritual are complete!! Don't waste your time trying to kill an immortal... "
				usr.firing=1
				usr.Frozen=1
				usr.ritual=1
				usr.overlays += 'HidanSkel.dmi'
				usr.overlays += 'JashinCircle.dmi'
				OMG
				if(usr.firing)
					usr.chakra -=25300
					if(usr.chakra <= 30099)
						usr.overlays -= 'HidanSkel.dmi'
						usr.overlays -= 'JashinCircle.dmi'
						usr.ritual=0
						usr.firing=0
						usr.Frozen=0
					else
						sleep(15)
						goto OMG
			else
				usr.firing = 0
				usr.ritual=0
				usr.Frozen=0
				usr.overlays -= 'HidanSkel.dmi'
				usr.overlays -= 'JashinCircle.dmi'
				usr<<"<B><font color = red>Your ritual ends"


mob/Hidan
	verb
		Scythe_S()
			set category = "TaiJutsu"
			set name = "Three Blade Scythe Slasher"
			for(var/mob/M in oview(1,usr))
				if (M.inspike)
					return
				if(usr.firing)
					return
				if (M.sphere)
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
				if(src.ritual)
					usr<<"Now, let us savor the utmost suffering together!."
					src<<"Dude, that was weak!"
					usr.health -= src.Mnin
					Death(usr)
					return
				if (M.ingat == 1)
					usr << "Your attack bounces off of [M] because they are in gatsuuga.."
					return
				else
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=red> Says: Three-Blade Scythe Slasher!!"
					var/damage=usr.tai*1.6
					M.health -= damage
					M.Death(usr)
					usr.firing=1
					view()<<"[M] takes [damage] damage from Three-Blade Scythe Slasher!!"
					if(M)
						if(usr.dir==NORTH)
							M.dir=NORTH
						if(usr.dir==WEST)
							M.dir=WEST
						if(usr.dir==SOUTH)
							M.dir=SOUTH
						if(usr.dir==EAST)
							M.dir=EAST
					sleep(14)
					usr.firing=0

obj/
	redfalcon
		icon = 'bigdragonz.dmi'
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
mob/Hidan
	verb
		Soaring()
			set category = "NinJutsu"
			set name = "Soaring Scythe Attack"
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
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=red> Says: Soaring Scythe Technique!!</font>"
				var/obj/redfalcon/S1 = new /obj/redfalcon/
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

mob/Hidan
	verb
		ChakraRitual((mob/M in oview(10)))
			set category = "GenJutsu"
			set name = "Chakra Ritual"
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
			if(M.PK==0)
				usr<<"<font size = -1><B>Something stops you from attacking [M]"
				return
			if(usr.PK==0)
				usr<<"<font size = -1><B>Something stops you from attacking [usr]"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if (M.ingat == 1)
				usr << "Your attack bounces off of [M] because they are in gatsuuga..."
				return
			else
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Chakra Ritual!</FONT>"
				var/damage=usr.gen*1.5
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from Chakra Ritual!"
				if(M)
					if(usr.dir==NORTH)
						M.dir=NORTH
					if(usr.dir==WEST)
						M.dir=WEST
					if(usr.dir==SOUTH)
						M.dir=SOUTH
					if(usr.dir==EAST)
						M.dir=EAST
				sleep(14)
				usr.firing=0

		DeathRitual((mob/M in oview(10)))
			set category = "GenJutsu"
			set name = "Death Ritual"
			set desc = "This really doesnt cause death but alot of damage! So use it on the hardest oppenents!"
			if(usr.firing)
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(M.PK==0)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
				return
			if(usr.PK==0)
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
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if (M.ingat == 1)
				usr << "Your attack bounces off of [M] because they are in gatsuuga..."
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Death Ritual!</FONT>"
				var/damage=usr.nin*1.7
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from Death Ritual!"
				if(M)
					if(usr.dir==NORTH)
						M.dir=NORTH
					if(usr.dir==WEST)
						M.dir=WEST
					if(usr.dir==SOUTH)
						M.dir=SOUTH
					if(usr.dir==EAST)
						M.dir=EAST
				sleep(14)
				usr.firing=0