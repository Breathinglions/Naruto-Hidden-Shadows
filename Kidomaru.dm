/*mob/Kidomaru
	verb
		CreateSpiderBow()//kaguya sword
			set name = "SpiderBow"
			set desc = ""
			set category = "NinJutsu"
			if (usr.firing == 1)
				usr<<"Not right now!"
			if (usr.chakra <= 13)
				usr<<"Not enough chakra."
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
				usr.chakra -= 13
				var/obj/SpiderBow/B = new/obj/SpiderBow
				B.loc = usr*/
mob/Kidomaru
	verb
		SpiderArrows()
			set category = "NinJutsu"
			set name = "Spider Arrows"
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
				usr.chakra -= 4000
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Spider Arrows!</font>"
				var/obj/SpiderArrow/S1 = new /obj/SpiderArrow/
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


mob/Kidomaru
	verb
		SpiderSpikes()
			set category = "NinJutsu"
			set name = "Spider Spikes"
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
				usr.chakra -= 3000
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Spider Spikes!</font>"
				var/obj/SpiderSpikes/S1 = new /obj/SpiderSpikes/
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


/*mob/Kidomaru
	verb
		CreateSpiderSpikes()//kaguya sword
			set name = "SpiderSpikes"
			set desc = ""
			set category = "NinJutsu"
			if (usr.firing == 1)
				usr<<"Not right now!"
			if (usr.chakra <= 13)
				usr<<"Not enough chakra."
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
				usr.chakra -= 13
				var/obj/SpiderSpikes/B = new/obj/SpiderSpikes
				B.loc = usr

mob/Kidomaru
	verb
		CreateSpiderArrows()//kaguya sword
			set name = "SpiderArrow"
			set desc = ""
			set category = "NinJutsu"
			if (usr.firing == 1)
				usr<<"Not right now!"
			if (usr.chakra <= 13)
				usr<<"Not enough chakra."
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
				usr.chakra -= 13
				var/obj/SpiderArrow/B = new/obj/SpiderArrow
				B.loc = usr*/

mob/Kidomaru
	verb
		WebSabakuSousou()
			set category = "NinJutsu"
			set name = "Web Sousou"
			usr.Handseals()
			for(var/mob/M in oview(10,usr))
				if(!usr.handseals)
					return
				if(!usr.Kyuu)
					usr<<"You Must Use Web Kyuu First"
					return
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
				if(src.ritual)
					usr<<"Now, let us savor the utmost suffering together!."
					src<<"Dude, that was weak!"
					usr.health -= src.Mnin
					Death(usr)
					return
				if(usr.chakra<=10000)
					usr<<"Not Enough Chakra"
					return
				if(M.captured)
					view(usr)<<"Web Sousou!"
					flick("Susanoo",M)
					usr.firing=1
					var/damage=usr.nin*5
					usr<<"[M] Has Taken [damage] From Web Sousou"
					M.health-=damage
					M.Death(usr)
					M.overlays-='Susanoo.dmi'
					M.overlays-='Susanoo.dmi'
					M.overlays-='Susanoo.dmi'
					usr.Chakragain()
					M.captured=0
					usr.firing=0
					return
				else
					return

mob/Kidomaru
	verb
		WebSabakuKyuu(mob/M in oview(5))
			set category = "NinJutsu"
			set name = "Web Kyuu"
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
				return
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
					usr.Kyuu = 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Web Kyuu!"
					M.overlays+='SpiderW.dmi'
					M.captured=1
					usr.Chakragain()
					M.Frozen=1
					sleep(100)
					if(M)
						M.captured=0
						M.Frozen=0
						M.overlays-='SpiderW.dmi'
						M.overlays-='SpiderW.dmi'
						M.overlays-='SpiderW.dmi'
						M.overlays-='SpiderW.dmi'
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
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Web Kyuu!"
						M.overlays+='SpiderW.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='SpiderW.dmi'
							M.overlays-='SpiderW.dmi'
							M.overlays-='SpiderW.dmi'
							M.overlays-='SpiderW.dmi'
						usr.Kyuu = 0
						usr.firing=0
						return
					if(usr.random==2)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						usr.Kyuu = 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Web Kyuu!"
						M.overlays+='SpiderW.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='SpiderW.dmi'
							M.overlays-='SpiderW.dmi'
							M.overlays-='SpiderW.dmi'
							M.overlays-='SpiderW.dmi'
						usr.Kyuu = 0
						usr.firing=0
						return
					if(usr.random==3)
						usr<<"You fail to use Web Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==4)
						usr<<"You fail to use Web Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==5)
						usr<<"You fail to use Web Kyuu"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					sleep(100)
					usr.firing=0
					if(M)
						M.captured=0

obj
	SpiderArrow
		name = "SpiderArrow"
		icon = 'SpiderArrow.dmi'
		icon_state = "arrow"
		worn = 0
		density=1
		oname="arrow"
		New()
			..()
			spawn()
				src.CheckAmount()
		proc
			CheckAmount()
				src.name= "[oname] ([src.ammount])"
		verb
			Look()
				usr<<"This is a spider made Arrow."
			Drop()
				for(var/obj/SpiderArrow/O in usr.contents)
					if(O.ammount<=0)
						del(src)
					else
						var/drop = input("How many Arrows do you wish to drop?")as num
						if(src.ammount>drop)
							usr<<"You don't have that many to drop."
						if(drop<=0)
							usr<<"You cannot do that."
						if(src.ammount>=drop)
							src.ammount-=drop
							var/obj/SpiderArrow/B = new/obj/SpiderArrow
							B.loc=locate(usr.x,usr.y-1,usr.z)
							B.ammount=drop
							view(usr)<<"[usr] drops [drop] Arrow."
							if(src.ammount<=0)
								del(src)
				usr.SaveK()
			Get()
				set src in oview(1)
				usr<<"You picked up [src]"
				for(var/obj/SpiderArrow/O in usr.contents)
					counter+=1
				if(counter<=0)
					Move(usr)
				else
					for(var/obj/SpiderArrow/O in usr.contents)
						O.ammount+=src.ammount
						O.name= "[O.name] ([O.ammount])"
						del(src)
		Bump(A)
			var/mob/O = src.Gowner
			if(istype(A,/obj/Log))
				for(var/obj/Log/L in oview(3,O))
					if(L)
						O<<"You cannot be that close to the log"
						O.weaponthrow=0
						del(src)
						return
				O.random=rand(1,3)
				if(O.random==3)
					if(O.Mkunaiskill<=O.cap)
						O<<"Your kunai skill increases!"
						O.Mkunaiskill+=5
						O.kunaiskill=O.Mkunaiskill
					else
						usr<<"You have reached your kunai cap."
				if(O.random==1)
					if(O.Mkunaiskill<=O.cap)
						O<<"Your kunai skill increases!"
						O.Mkunaiskill+=10
						O.kunaiskill=O.Mkunaiskill
					else
						usr<<"You have reached your kunai cap."
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = round(src.nin*1.7)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [Gowner]'SpiderArrow [damage] damage!!"
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	SpiderSpikes
		name = "SpiderSpikes"
		icon = 'SpiderS.dmi'
		icon_state = "multi"
		worn = 0
		density=1
		oname="spikes"
		price = 1000
		New()
			..()
			spawn()
				src.CheckAmount()
		proc
			CheckAmount()
				src.name= "[oname] ([src.ammount])"
		verb
			Look()
				usr<<"This is a spider made Spike."
			Drop()
				for(var/obj/SpiderSpikes/O in usr.contents)
					if(O.ammount<=0)
						del(src)
					else
						var/drop = input("How many Spikes do you wish to drop?")as num
						if(src.ammount>drop)
							usr<<"You don't have that many to drop."
						if(drop<=0)
							usr<<"You cannot do that."
						if(src.ammount>=drop)
							src.ammount-=drop
							var/obj/SpiderSpikes/B = new/obj/SpiderSpikes
							B.loc=locate(usr.x,usr.y-1,usr.z)
							B.ammount=drop
							view(usr)<<"[usr] drops [drop] Spikes."
							if(src.ammount<=0)
								del(src)
				usr.SaveK()
			Get()
				set src in oview(1)
				usr<<"You picked up [src]"
				for(var/obj/SpiderSpikes/O in usr.contents)
					counter+=1
				if(counter<=0)
					Move(usr)
				else
					for(var/obj/SpiderSpikes/O in usr.contents)
						O.ammount+=src.ammount
						O.name= "[O.name] ([O.ammount])"
						del(src)
		Bump(A)
			var/mob/O = src.Gowner
			if(istype(A,/obj/Log))
				for(var/obj/Log/L in oview(3,O))
					if(L)
						O<<"You cannot be that close to the log"
						O.weaponthrow=0
						del(src)
						return
				O.random=rand(1,3)
				if(O.random==3)
					if(O.Mkunaiskill<=O.cap)
						O<<"Your kunai skill increases!"
						O.Mkunaiskill+=5
						O.kunaiskill=O.Mkunaiskill
					else
						usr<<"You have reached your kunai cap."
				if(O.random==1)
					if(O.Mkunaiskill<=O.cap)
						O<<"Your kunai skill increases!"
						O.Mkunaiskill+=10
						O.kunaiskill=O.Mkunaiskill
					else
						usr<<"You have reached your kunai cap."
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = round(src.nin*1.7)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [Gowner]'SpiderSpike [damage] damage!!"
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

mob/Kidomaru
	verb
		SpiderSpew(mob/M in get_step(src,src.dir))
			set category = "NinJutsu"
			set name = "Spider Spew"
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
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#6495ed>S</FONT><FONT COLOR=#549cf0>p</FONT><FONT COLOR=#43a3f3>i</FONT><FONT COLOR=#33abf7>d</FONT><FONT COLOR=#22b2fa>e</FONT><FONT COLOR=#11b9fd>r</FONT><FONT COLOR=#00bfff> </FONT><FONT COLOR=#20c3fb>S</FONT><FONT COLOR=#3fc8f6>p</FONT><FONT COLOR=#5fccf1>e</FONT><FONT COLOR=#7ed0eb>w</FONT><FONT COLOR=#9ed4e6>!</FONT><FONT COLOR=#bdd9e1>!</FONT><FONT COLOR=#dcdcdc>!</FONT>"
				var/damage=usr.gen*1.2
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				usr<<"You slow [M] with your Spider Web slowing their movement!"
				view()<<"[M] takes [damage] damage from Spider Web Spew!"
				if(M)
					if(usr.dir==NORTH)
						M.dir=NORTH
					if(usr.dir==WEST)
						M.dir=WEST
					if(usr.dir==SOUTH)
						M.dir=SOUTH
					if(usr.dir==EAST)
						M.dir=EAST
				sleep(15)
				usr.firing=0
				M.Savedspeed = M.Move_Delay
				M.Move_Delay = 10
				sleep(40)
				M.Move_Delay = usr.Savedspeed
				M<<"You can move normally now!"
				usr<<"[M]'s movements return"


