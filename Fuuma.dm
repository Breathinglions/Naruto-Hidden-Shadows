mob/Fuuma/verb
	AntLion(mob/M in oview(4))
		set name = "Ant-Lion Crater"
		set category = "NinJutsu"
		usr.Handseals()
		if(usr.firing)
			return
		if(usr.Frozen)
			usr<<"Your Frozen"
			return
		if(M.PK==0)
			usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
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
		if(usr.chakra <= 10)
			usr << "Not enough chakra!"
			return
		if(usr.inso)
			return
		if(usr.Kaiten||usr.counter)
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
		if(usr.gate1)
			return
		if(usr.gate2)
			return
		if(usr.gate3)
			return
		if(usr.gate4)
			return
		if(usr.gate5)
			return
		if(usr.gate6)
			return
		if(usr.gate7)
			return
		if(usr.gate8)
			return
		if(!usr.handseals)
			return
		else
			if(M.captured == 1)
				usr<<"They are captured."
				return
			if(usr.chakra<=9999)
				return
			if(usr.chakra>=10000)
				usr.chakra -= 10000
				usr.firing =1
				view() << "<font color = red>[usr]:<FONT COLOR=#a52a2a> CRATER!!!"
				sleep(20)
				usr.firing=0
				M.captured=1
				M.overlays += 'AL.dmi'
				usr.Chakragain()
				M.Frozen=1
				sleep(100)
				M.captured=0
				M.Frozen=0
				M.overlays -= 'AL.dmi'
				M.overlays -= 'AL.dmi'
				M.overlays -= 'AL.dmi'
				M.overlays -= 'AL.dmi'
				M.overlays -= 'AL.dmi'

	ChakraThreads(mob/M in oview(4))
		set name = "Chakra Threads"
		set category = "NinJutsu"
		usr.Handseals()
		if(usr.firing)
			return
		if(usr.Frozen)
			usr<<"Your Frozen"
			return
		if(usr.caught)
			usr<<"Your captured"
			return
		if(M.PK==0)
			usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
			return
		if(usr.PK==0)
			usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [usr]"
			return
		if(usr.captured)
			usr<<"Your captured"
			return
		if(usr.chakra <= 10)
			usr << "Not enough chakra!"
			return
		if(usr.inso)
			return
		if(usr.Kaiten||usr.counter)
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
		if(usr.gate1)
			return
		if(usr.gate2)
			return
		if(usr.gate3)
			return
		if(usr.gate4)
			return
		if(usr.gate5)
			return
		if(usr.gate6)
			return
		if(usr.gate7)
			return
		if(usr.gate8)
			return
		if(!usr.handseals)
			return
		else
			if(M.captured == 1)
				usr<<"They are captured."
				return
			if(usr.chakra<=9999)
				return
			if(usr.chakra>=10000)
				usr.chakra -= 10000
				usr.firing =1
				view() << "<font color = red>[usr]:<FONT COLOR=#a52a2a> Chakra Thread!!!"
				sleep(20)
				usr.firing=0
				M.captured=1
				M.overlays += 'CT.dmi'
				usr.Chakragain()
				M.Frozen=1
				sleep(100)
				M.captured=0
				M.Frozen=0
				M.overlays -= 'CT.dmi'
				M.overlays -= 'CT.dmi'
				M.overlays -= 'CT.dmi'
				M.overlays -= 'CT.dmi'
				M.overlays -= 'CT.dmi'
	NinjaSwordStrike(mob/M in get_step(src,src.dir))
		set category = "NinJutsu"
		set name = "Ninja Sword Strike"
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
			view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: SSSSSSTRIKE!!!</FONT>"
			var/damage=usr.tai*1.3
			M.health -= damage
			if(M.health<=0)
				M.Death(usr)
			usr.firing=1
			view()<<"[M] takes [damage] damage from Ninja Sword Strike!"
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
	ChakraNoItu(mob/M in oview(5))
		set category = "NinJutsu"
		set name = "Chakra No Itu"
		if(M.inspike)
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
		else
			usr.firing=1
			var/damage=usr.nin*1.3
			M.health-=damage
			view()<<"[M] takes [damage] damage from Chakra No Itu"
			M.Death(usr)
			sleep(100)
			usr.firing=0


