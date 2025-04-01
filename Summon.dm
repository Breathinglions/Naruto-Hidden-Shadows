obj/Big_Snake_Scroll//DO NOT USE : IT IS BAD!!(use . instead)
	icon ='scrolls.dmi'
	icon_state="snake"
	verb
		Summon_Snake()
			if(usr.chakra <= 30000)
				usr<<"Not enough chakra!!"
				return
			if(usr.puppetinuse >= 1)
				usr<<"You can only have one summon at a time."
				return
			if(usr.chakra>=1000)
				usr.puppetinuse = 1
				usr.chakra -= 35000
				var/mob/Big_Snake/P = new/mob/Big_Snake
				P.original = usr
				P.loc = locate(usr.x,usr.y - 1,usr.z)
				P.health = usr.health*1.2
				P.name ="Big Snake"
				P.tai = usr.tai
		Unsummon()
			for(var/mob/Big_Snake/P in world)
				if(P.original == usr)
					usr.puppetinuse = 0
					usr<<"You destroy [P]!"
					del(P)
		Get()
			set src in oview()
			usr.contents+=src

obj/Slug_Summoning_Scroll
	icon = 'scrolls.dmi'
	icon_state = "slug"
	verb
		Summon_Slug()
			if(usr.chakra <= 30000)
				usr<<"Not enough chakra!!"
				return
			if(usr.puppetinuse >= 1)
				usr<<"You can only have one summon at a time."
				return
			if(usr.chakra>=1000)
				usr.puppetinuse = 1
				usr.chakra -= 35000
				view()<<"<b><font color=green>Kuchiyose no jutsu!!"
				var/mob/Big_Slug/P = new/mob/Big_Slug
				P.original = usr
				P.loc = locate(usr.x,usr.y - 1,usr.z)
				P.health = usr.health*1.2
				P.name ="Big Slug"
				P.tai = usr.tai
		Unsummon()
			for(var/mob/Big_Slug/P in world)
				if(P.original == usr)
					usr.puppetinuse = 0
					usr<<"You destroy [P]!"
					del(P)
		Get()
			set src in oview(1)
			src.loc = usr
			usr<<"You picked up a [src]"

obj/Frog_Summoning_Scroll
	icon = 'scrolls.dmi'
	icon_state = "frog"
	verb
		Summon_Frog()
			if(usr.chakra <= 30000)
				usr<<"Not enough chakra!!"
				return
			if(usr.puppetinuse >= 1)
				usr<<"You can only have one summon at a time."
				return
			if(usr.chakra>=1000)
				usr.puppetinuse = 1
				usr.chakra -= 35000
				view()<<"<b><font color=green>Kuchiyose no jutsu!!"
				var/mob/Gamabunta/P = new/mob/Gamabunta
				P.original = usr
				P.loc = locate(usr.x,usr.y - 1,usr.z)
				P.health = usr.health*1.2
				P.name ="Gamabunta"
				P.tai = usr.tai
		Unsummon()
			for(var/mob/Gamabunta/P in world)
				if(P.original == usr)
					usr.puppetinuse = 0
					usr<<"You destroy [P]!"
					del(P)
		Get()
			set src in oview(1)
			src.loc = usr
			usr<<"You picked up a [src]"

obj/Bee_Summoning_Scroll
	icon = 'scrolls.dmi'
	icon_state = "bee"
	verb
		Summon_Bee()
			if(usr.chakra <= 30000)
				usr<<"Not enough chakra!!"
				return
			if(usr.puppetinuse >= 1)
				usr<<"You can only have one summon at a time."
				return
			if(usr.chakra>=1000)
				usr.puppetinuse = 1
				usr.chakra -= 35000
				view()<<"<b><font color=green>Kuchiyose no jutsu!!"
				var/mob/Bee/P = new/mob/Bee
				P.original = usr
				P.loc = locate(usr.x,usr.y - 1,usr.z)
				P.health = usr.health*1.2
				P.name ="Bee"
				P.tai = usr.tai
		Unsummon()
			for(var/mob/Bee/P in world)
				if(P.original == usr)
					usr.puppetinuse = 0
					usr<<"You destroy [P]!"
					del(P)
		Get()
			set src in oview(1)
			src.loc = usr
			usr<<"You picked up a [src]"

mob/var/P=0
obj/Click()


turf/Click()
	for(var/mob/Big_Slug/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()
mob/Click()
	for(var/mob/Big_Slug/M in view())
		if(M.owner==usr)
			walk_towards(M,src)
	..()


mob
	Bee
		icon='beetha1.dmi'
		icon_state="2"
		density=1
		layer=FLY_LAYER

		NPC = 1
		proc/Die()
			flick("smoke2",src)
			del(src)
		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == original)
					return
				if(src.firing)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"NONE PK ZONE!!!"
					return
				else
					var/mob/P = M
					var/Damage = src.tai*1.4
					P.health -= Damage // Takes the players health
					view() << "The [src] attacks [M] for [Damage]!"
					P.Death(src)
					src.firing = 1
					sleep(7)
					src.firing = 0
		New()
			..()
			overlays+=/obj/bpart2
			overlays+=/obj/bpart3
			overlays+=/obj/bpart4
			overlays+=/obj/bpart5

			..()

obj
	bpart2
		icon='beetha1.dmi'
		icon_state="1"
		density=1
		pixel_y=32
		name="2"
obj
	bpart3
		icon='beetha1.dmi'
		icon_state="3"
		density=1
		pixel_y=-32
		name="3"
obj
	bpart4
		icon='beetha1.dmi'
		icon_state="4"
		density=1
		pixel_x=32
		name="4"
obj
	bpart5
		icon='beetha1.dmi'
		icon_state="5"
		pixel_x=-32
		density=1
		name="5"

mob
	Gamabunta
		icon='gammabunta1.dmi'
		icon_state="1,1"
		density=1
		layer=FLY_LAYER

		NPC = 1
		proc/Die()
			flick("smoke2",src)
			del(src)
		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == original)
					return
				if(src.firing)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"NONE PK ZONE!!!"
					return
				else
					var/mob/P = M
					var/Damage = src.tai*1.5
					P.health -= Damage // Takes the players health
					view() << "The [src] attacks [M] for [Damage]!"
					P.Death(src)
					src.firing = 1
					sleep(7)
					src.firing = 0
		New()
			..()
			overlays+=/obj/part2
			overlays+=/obj/part3
			overlays+=/obj/part4
			overlays+=/obj/part5
			overlays+=/obj/part6
			overlays+=/obj/part7
			overlays+=/obj/part8
			overlays+=/obj/part9
			..()
obj
	part2
		icon='gammabunta1.dmi'
		icon_state="1,2"
		density=1
		pixel_y=32
		name="1"
obj
	part3
		icon='gammabunta1.dmi'
		icon_state="0,1"
		density=1
		pixel_x=-32
		name="2"
obj
	part4
		icon='gammabunta1.dmi'
		icon_state="2,1"
		density=1
		pixel_x=32
		name="3"
obj
	part5
		icon='gammabunta1.dmi'
		icon_state="0,2"
		pixel_x=-32
		density=1
		pixel_y=32
		name="4"
obj
	part6
		icon='gammabunta1.dmi'
		icon_state="2,2"
		pixel_x=32
		density=1
		pixel_y=32
		name="5"
obj
	part7
		icon='gammabunta1.dmi'
		icon_state="0,0"
		pixel_x=-32
		pixel_y=-32
		density=1
		name="6"
obj
	part8
		icon='gammabunta1.dmi'
		icon_state="1,0"
		density=1
		pixel_y=-32
		name="7"
obj
	part9
		icon='gammabunta1.dmi'
		icon_state="2,0"
		pixel_x=32
		density=1
		pixel_y=-32
		name="8"
mob
	Big_Snake
		icon='orochimarusnake.dmi'
		icon_state="0,0"
		density=1
		layer=FLY_LAYER

		NPC = 1
		proc/Die()
			flick("smoke2",src)
			del(src)
		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == original)
					return
				if(src.firing)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"NONE PK ZONE!!!"
					return
				else
					var/mob/P = M
					var/Damage = src.tai*1.5
					P.health -= Damage // Takes the players health
					view() << "The [src] attacks [M] for [Damage]!"
					P.Death(src)
					src.firing = 1
					sleep(5)
					src.firing = 0
		New()
			..()
			overlays+=/obj/snake1
			overlays+=/obj/snake2
			overlays+=/obj/snake3
			overlays+=/obj/snake4
			overlays+=/obj/snake5
			..()
obj
	snake1
		icon='orochimarusnake.dmi'
		icon_state="0,1"
		density=1
		pixel_y=32
		name="2"
obj
	snake2
		icon='orochimarusnake.dmi'
		icon_state="1,0"
		density=1
		pixel_x=32
		name="2"
obj
	snake3
		icon='orochimarusnake.dmi'
		icon_state="1,1"
		density=1
		pixel_x=32
		pixel_y=32
		name="2"
obj
	snake4
		icon='orochimarusnake.dmi'
		icon_state="0,2"
		density=1
		pixel_y=64
		name="2"
obj
	snake5
		icon='orochimarusnake.dmi'
		icon_state="1,2"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
mob
	Big_Slug
		icon='katsuya(1).dmi'
		icon_state="1,0"
		density=1
		layer=FLY_LAYER

		NPC = 1
		proc/Die()
			flick("smoke2",src)
			del(src)
		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == original)
					src.loc=M.loc
					return
				if(src.firing)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"NONE PK ZONE!!!"
					return
				else
					var/mob/P = M
					var/Damage = src.tai*1.4
					P.health -= Damage // Takes the players health
					view() << "The [src] attacks [M] for [Damage]!"
					P.Death(src)
					src.firing = 1
					sleep(5)
					src.firing = 0
		New()
			..()
			overlays+=/obj/kata1
			overlays+=/obj/kata2
			overlays+=/obj/kata3
			overlays+=/obj/kata4
			overlays+=/obj/kata5
			..()
obj
	kata1
		icon='katsuya(1).dmi'
		icon_state="0,0"
		density=1
		pixel_x=-32

obj
	kata2
		icon='katsuya(1).dmi'
		icon_state="2,0"
		density=1
		pixel_x=32

obj
	kata3
		icon='katsuya(1).dmi'
		icon_state="1,1"
		density=1
		pixel_y=32
obj
	kata4
		icon='katsuya(1).dmi'
		icon_state="0,1"
		density=1
		pixel_x=-32
		pixel_y=32

obj
	kata5
		icon='katsuya(1).dmi'
		icon_state="2,1"
		density=1
		pixel_x=32
		pixel_y=32


mob
	RBat
		icon='Bat.dmi'
		icon_state="1,1"
		density=1
		layer=FLY_LAYER

		NPC = 1
		proc/Die()
			flick("smoke2",src)
			del(src)
		Bump(atom/M)
			if(istype(M,/mob/)) // If they run into the player
				if(M == original)
					return
				if(src.firing)
					return
				if(src.Kaiten||src.sphere)
					return
				if(src.PK==0)
					usr<<"NONE PK ZONE!!!"
					return
				else
					var/mob/P = M
					var/Damage = src.tai*3
					P.health -= Damage // Takes the players health
					view() << "The [src] attacks [M] for [Damage]!"
					P.Death(src)
					src.firing = 1
					sleep(7)
					src.firing = 0
		New()
			..()
			overlays+=/obj/rbat2
			overlays+=/obj/rbat3
			overlays+=/obj/rbat4
			overlays+=/obj/rbat5
			overlays+=/obj/rbat6
			overlays+=/obj/rbat7
			overlays+=/obj/rbat8
			overlays+=/obj/rbat9

			..()

obj
	rbat2
		icon='Bat.dmi'
		icon_state="1,2"
		density=1
		pixel_y=32
		name="2"
obj
	rbat3
		icon='Bat.dmi'
		icon_state="1,0"
		density=1
		pixel_y=-32
		name="3"
obj
	rbat4
		icon='Bat.dmi'
		icon_state="2,1"
		density=1
		pixel_x=32
		name="4"
obj
	rbat5
		icon='Bat.dmi'
		icon_state="0,1"
		pixel_x=-32
		density=1
		name="5"
obj
	rbat6
		icon='Bat.dmi'
		icon_state="0,0"
		pixel_x=-32
		pixel_y=-32
		density=1
		name="6"
obj
	rbat7
		icon='Bat.dmi'
		icon_state="0,2"
		pixel_x=-32
		pixel_y=32
		density=1
		name="7"
obj
	rbat8
		icon='Bat.dmi'
		icon_state="2,2"
		pixel_x=32
		pixel_y=32
		density=1
		name="8"
obj
	rbat9
		icon='Bat.dmi'
		icon_state="2,0"
		pixel_x=32
		pixel_y=-32
		density=1
		name="9"


obj/BCape//This is the finished summoned obj backpuppet.
	name = "Black Cape"
	icon = 'Cape.dmi'
	worn = 0
	verb
		Summon_Dragon()
			if(usr.puppetinuse >= 1)
				usr<<"You can only have one summon at a time."
				return
			if(usr.chakra>=1000)
				view()<<"<font color=red>Low and Behold as I shape and shift the boundries of life itself. Witness its birth! Blood Demon's Dragon"
				usr.puppetinuse = 1
				var/mob/RBat/P = new/mob/RBat
				P.original = usr
				P.loc = locate(usr.x,usr.y - 1,usr.z)
				P.health = usr.health*1.2
				P.name ="[usr]'s Dragon"
				P.tai = usr.tai
		Unsummon()
			for(var/mob/RBat/P in world)
				if(P.original == usr)
					usr.puppetinuse = 0
					usr<<"You destroy [P]!"
					del(P)
		Wear()
			if(src.worn)
				src:worn = 0
				usr.overlays -= 'Cape.dmi'//temp icon
				usr << "You remove the [src.name]."
				usr.puppeteer=0
				src.suffix = ""
				usr.nin=usr.Mnin
			else
				if(usr.puppeteer==1)
					usr<<"You cant wear more then one cape."
					return
				src:worn = 1
				usr.overlays += 'Cape.dmi'
				usr << "You wear the [src.name]."
				usr.puppeteer=1
				src.suffix = "Equipped"
				usr.nin += 1000
		Look()
			usr<<"This is a hero's cape."
		Drop()
			if(src.worn)
				usr << "Not while its being worn."
			if(!src.worn)
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.SaveK()
		Get()
			set src in oview(1)
			src.loc = usr
			usr<<"You picked up [src]"

