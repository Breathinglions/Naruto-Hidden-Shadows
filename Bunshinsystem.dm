obj/Click()//this will make it so if you click the turf your pet will walk to it			//like in MJ
	for(var/mob/npc/Bunshin/B in world)
		if(B.original == usr)
			if(B.Frozen)
				B.Frozen = 0
				walk_towards(B,src) // I don't know how Gunbuddy does his crap
				B.moving = 1
				sleep(5)
				B.Frozen = 1
				B.moving = 0
			else
				walk_towards(B,src)
	for(var/mob/npc/WBunshin/K in world)
		if(K.original == usr)
			if(K.Frozen)
				K.Frozen = 0
				walk_towards(K,src)
				K.moving=1
				sleep(5)
				K.Frozen=1
				K.moving =0
			else
				walk_towards(K,src)
	for(var/mob/npc/ZBunshin/K in world)
		if(K.original == usr)
			if(K.Frozen)
				K.Frozen = 0
				walk_towards(K,src)
				K.moving=1
				sleep(5)
				K.Frozen=1
				K.moving =0
			else
				walk_towards(K,src)
	for(var/mob/npc/KBunshin/K in world)
		if(K.original == usr)
			if(K.Frozen)
				K.Frozen = 0
				walk_towards(K,src)
				K.moving=1
				sleep(5)
				K.Frozen=1
				K.moving =0
			else
				walk_towards(K,src)
	for(var/mob/Big_Puppet/P in world)
		if(P.original == usr)
			if(P.Frozen)
				P.Frozen = 0
				walk_towards(P,src)
				P.moving = 1
				sleep(5)
				P.Frozen = 1
				P.moving = 0
			else
				walk_towards(P,src)
	for(var/mob/Bee/P in world)
		if(P.original == usr)
			if(P.Frozen)
				P.Frozen = 0
				walk_towards(P,src)
				P.moving=1
				sleep(5)
				P.Frozen=1
				P.moving =0
			else
				walk_towards(P,src)

	for(var/mob/Gamabunta/B in world)
		if(B.original == usr)
			if(B.Frozen)
				B.Frozen = 0
				walk_towards(B,src)
				B.moving=1
				sleep(5)
				B.Frozen=1
				B.moving =0
			else
				walk_towards(B,src)

	for(var/mob/Big_Snake/B in world)
		if(B.original == usr)
			if(B.Frozen)
				B.Frozen = 0
				walk_towards(B,src)
				B.moving=1
				sleep(5)
				B.Frozen=1
				B.moving =0
			else
				walk_towards(B,src)
	for(var/mob/Big_Slug/B in world)
		if(B.original == usr)
			if(B.Frozen)
				B.Frozen = 0
				walk_towards(B,src)
				B.moving=1
				sleep(5)
				B.Frozen=1
				B.moving =0
			else
				walk_towards(B,src)
	for(var/mob/RBat/B in world)
		if(B.original == usr)
			if(B.Frozen)
				B.Frozen = 0
				walk_towards(B,src)
				B.moving=1
				sleep(1)
				B.Frozen=1
				B.moving =0
			else
				walk_towards(B,src)



	for(var/mob/pet/P in view())
		if(P.owner == usr&&P.Frozen == 0)
			walk_towards(P,src)
	for(var/mob/wolf/P in view())
		if(P.owner == usr&&P.Frozen == 0)
			walk_towards(P,src)

turf/Click()//this will make it so if you click the turf your pet will walk to it			//like in MJ
	for(var/mob/npc/Bunshin/B in world)
		if(B.original == usr)
			if(B.Frozen)
				B.Frozen = 0
				walk_towards(B,src) // I don't know how Gunbuddy does his crap
				B.moving = 1
				sleep(5)
				B:Frozen = 1
				B:moving = 0
			else
				walk_towards(B,src)
	for(var/mob/npc/WBunshin/K in world)
		if(K.original == usr)
			if(K.Frozen)
				K.Frozen = 0
				walk_towards(K,src)
				K.moving=1
				sleep(5)
				K.Frozen=1
				K.moving =0
			else
				walk_towards(K,src)
	for(var/mob/npc/KBunshin/K in world)
		if(K.original == usr)
			if(K.Frozen)
				K.Frozen = 0
				walk_towards(K,src)
				K.moving=1
				sleep(5)
				K.Frozen=1
				K.moving =0
			else
				walk_towards(K,src)
	for(var/mob/Big_Puppet/P in world)
		if(P.original == usr)
			if(P.Frozen)
				P.Frozen = 0
				walk_towards(P,src)
				P.moving=1
				sleep(5)
				P.Frozen=1
				P.moving =0
			else
				walk_towards(P,src)
	for(var/mob/Bee/P in world)
		if(P.original == usr)
			if(P.Frozen)
				P.Frozen = 0
				walk_towards(P,src)
				P.moving=1
				sleep(5)
				P.Frozen=1
				P.moving =0
			else
				walk_towards(P,src)
	for(var/mob/Gamabunta/B in world)
		if(B.original == usr)
			if(B.Frozen)
				B.Frozen = 0
				walk_towards(B,src)
				B.moving=1
				sleep(5)
				B.Frozen=1
				B.moving =0
			else
				walk_towards(B,src)

	for(var/mob/Big_Snake/B in world)
		if(B.original == usr)
			if(B.Frozen)
				B.Frozen = 0
				walk_towards(B,src)
				B.moving=1
				sleep(5)
				B.Frozen=1
				B.moving =0
			else
				walk_towards(B,src)
	for(var/mob/npc/ZBunshin/K in world)
		if(K.original == usr)
			if(K.Frozen)
				K.Frozen = 0
				walk_towards(K,src)
				K.moving=1
				sleep(5)
				K.Frozen=1
				K.moving =0
			else
				walk_towards(K,src)
	for(var/mob/Big_Slug/B in world)
		if(B.original == usr)
			if(B.Frozen)
				B.Frozen = 0
				walk_towards(B,src)
				B.moving=1
				sleep(5)
				B.Frozen=1
				B.moving =0
			else
				walk_towards(B,src)
	for(var/mob/RBat/B in world)
		if(B.original == usr)
			if(B.Frozen)
				B.Frozen = 0
				walk_towards(B,src)
				B.moving=1
				sleep(1)
				B.Frozen=1
				B.moving =0
			else
				walk_towards(B,src)

	for(var/mob/pet/P in view())
		if(P.owner == usr&&P.Frozen == 0)
			walk_towards(P,src)
	for(var/mob/wolf/P in view())
		if(P.owner == usr&&P.Frozen == 0)
			walk_towards(P,src)
	if(usr.YT)
		usr.loc = locate(src.x,src.y,src.z)
	if(usr.CSpy)
		if(usr.Deidara) if(usr.chakra>15000)
			usr.chakra -= 3500
			if(usr.chakra<=0)
				usr.chakra = 0
			var/obj/Clayspider/K = new /obj/Clayspider
			usr.random=rand(1,12)
			K.icon_state="[usr.random]"
			K.loc = locate(src.x,src.y,src.z)
			K.nin=usr.nin
			K.Gowner=usr
			spawn(50)del(K)
		else if(usr.chakra>3500)
			usr.chakra -= 3500
			if(usr.chakra<=0)
				usr.chakra = 0
			var/obj/Clayspider/K = new /obj/Clayspider()
			usr.random=rand(1,12)
			K.icon_state="[usr.random]"
			K.loc = src
			K.nin=usr.nin
			K.Gowner=usr
			spawn(50)del(K)
	if(usr.GS)
		if(usr.Gaara) if(usr.chakra>35000)
			usr.chakra -= 15000
			if(usr.chakra<=0)
				usr.chakra = 0
			var/obj/Gsand/K = new /obj/Gsand
			usr.random=rand(1,12)
			K.icon_state="[usr.random]"
			K.loc = locate(src.x,src.y,src.z)
			K.nin=usr.nin
			K.Gowner=usr
			spawn(50)del(K)
		else if(usr.chakra>35000)
			usr.chakra -= 15000
			if(usr.chakra<=0)
				usr.chakra = 0
			var/obj/Gsand/K = new /obj/Gsand()
			usr.random=rand(1,12)
			K.icon_state="[usr.random]"
			K.loc = src
			K.nin=usr.nin
			K.Gowner=usr
			spawn(50)del(K)
	if(usr.irons)
		if(usr.rank=="Kage") if(usr.Village=="Sand")
			usr.chakra -= 15000
			if(usr.chakra<=0)
				usr.chakra = 0
			var/obj/Isand/K = new /obj/Isand
			usr.random=rand(1,12)
			K.icon_state="[usr.random]"
			K.loc = locate(src.x,src.y,src.z)
			K.nin=usr.nin
			K.Gowner=usr
			spawn(50)del(K)
		else if(usr.chakra>20000)
			usr.chakra -= 15000
			if(usr.chakra<=0)
				usr.chakra = 0
			var/obj/Isand/K = new /obj/Isand()
			usr.random=rand(1,12)
			K.icon_state="[usr.random]"
			K.loc = src
			K.nin=usr.nin
			K.Gowner=usr
			spawn(50)del(K)
	if(usr.kir)
		if(usr.Uchiha) if(usr.chakra>35000)
			usr.chakra -= 15500
			if(usr.chakra<=0)
				usr.chakra = 0
			var/obj/KirinFull/K = new /obj/KirinFull
			usr.random=rand(1,12)
			K.icon_state="[usr.random]"
			K.loc = locate(src.x,src.y,src.z)
			K.nin=usr.nin
			K.Gowner=usr
			spawn(30)del(K)
		else if(usr.chakra>3500)
			usr.chakra -= 15500
			if(usr.chakra<=0)
				usr.chakra = 0
			var/obj/KirinFull/K = new /obj/KirinFull()
			usr.random=rand(1,12)
			K.icon_state="[usr.random]"
			K.loc = src
			K.nin=usr.nin
			K.Gowner=usr
			spawn(30)del(K)
	if(usr.HSus)
		if(usr.AmaN >= 1000) if(usr.chakra>3500)
			usr.chakra -= 3500
			usr.health -= 7222
			if(usr.health<=0)
				usr.Death(usr)
			if(usr.chakra<=0)
				usr.chakra = 0
			var/obj/Kamui/K = new /obj/Kamui
			usr.random=rand(1,12)
			K.icon_state="[usr.random]"
			K.loc = locate(src.x,src.y,src.z)
			K.nin=usr.nin
			K.Gowner=usr
			spawn(50)del(K)
		else if(usr.chakra>3500)
			usr.chakra -= 3500
			usr.health -= 8600
			if(usr.health<=0)
				usr.Death(usr)
			if(usr.chakra<=0)
				usr.chakra = 0
			usr.AmaN += 1
			var/obj/Kamui/K = new /obj/Kamui()
			usr.random=rand(1,12)
			K.icon_state="[usr.random]"
			K.loc = src
			K.nin=usr.nin
			K.Gowner=usr
			spawn(50)del(K)
	if(usr.ama)
		if(usr.AmaN >= 1000) if(usr.chakra>3500)
			usr.chakra -= 3500
			usr.health -= 7222
			if(usr.health<=0)
				usr.Death(usr)
			if(usr.chakra<=0)
				usr.chakra = 0
			var/obj/AMA/K = new /obj/AMA
			usr.random=rand(1,12)
			K.icon_state="[usr.random]"
			K.loc = locate(src.x,src.y,src.z)
			K.nin=usr.nin
			K.Gowner=usr
			spawn(50)del(K)
		else if(usr.chakra>3500)
			usr.chakra -= 3500
			usr.health -= 8600
			if(usr.health<=0)
				usr.Death(usr)
			if(usr.chakra<=0)
				usr.chakra = 0
			usr.AmaN += 1
			var/obj/AMA/K = new /obj/AMA()
			usr.random=rand(1,12)
			K.icon_state="[usr.random]"
			K.loc = src
			K.nin=usr.nin
			K.Gowner=usr
			spawn(50)del(K)
	if(usr.wood1)
		if(usr.chakra>3500)
			if(usr.chakra > 3499)
				usr.chakra -= 3500
				usr.AmaN += 1
				var/obj/wood/K = new /obj/wood()
				flick("rise",K)
				K.loc = src
				K.nin=usr.nin
				K.Gowner=usr
				spawn(500)del(K)
			else
				usr<<"You do not have enough chakra!"

mob/Move()//Move proc.. it's absolutely delectable
	if(src.Frozen)//they can't move if they're locked
		return
	else
		..()
	if(src.client)
		for(var/mob/npc/Bunshin/B in world)
			if(B.original == src)
				if(B.Frozen||B.moving)
					return
				else
					walk_towards(B,src)
mob/Move()//Moving Process for the puppet.***DONT TOUCH***
	if(src.Frozen)
		return
	else
		..()
	if(src.client)
		if(src.puppetinuse >= 1)
			for(var/mob/Big_Puppet/P in world)
				if(P.original == src)
					if(P.Frozen||P.moving)
						return
					else
						return




mob/Click()//this will make it so if you click the turf your pet will walk to it			//like in MJ
	for(var/mob/npc/Bunshin/B in world)
		if(B.original == usr)
			if(B:Frozen)
				B:Frozen = 0
				walk_towards(B,src) // I don't know how Gunbuddy does his crap
				B.moving = 1
				sleep(5)
				B.Frozen = 1
				B.moving = 0
			else
				walk_towards(B,src)
	for(var/mob/npc/WBunshin/K in world)
		if(K.original == usr)
			if(K.Frozen)
				K.Frozen = 0
				walk_towards(K,src)
				K.moving=1
				sleep(5)
				K.Frozen=1
				K.moving =0
			else
				walk_towards(K,src)
	for(var/mob/npc/ZBunshin/K in world)
		if(K.original == usr)
			if(K.Frozen)
				K.Frozen = 0
				walk_towards(K,src)
				K.moving=1
				sleep(5)
				K.Frozen=1
				K.moving =0
			else
				walk_towards(K,src)
	for(var/mob/npc/KBunshin/K in world)
		if(K.original == usr)
			if(K.Frozen)
				K.Frozen = 0
				walk_towards(K,src)
				K.moving=1
				sleep(5)
				K.Frozen=1
				K.moving =0
			else
				walk_towards(K,src)
	for(var/mob/Big_Puppet/P in world)
		if(P.original == usr)
			if(P:Frozen)
				P:Frozen = 0
				walk_towards(P,src)
				P.moving = 1
				sleep(5)
				P.Frozen = 1
				P.moving = 0
			else
				walk_towards(P,src)



	for(var/mob/pet/P in view())
		if(P.owner == usr&&P.Frozen == 0)
			walk_towards(P,src)
	for(var/mob/wolf/P in view())
		if(P.owner == usr&&P.Frozen == 0)
			walk_towards(P,src)
mob/Move()//Move proc.. it's absolutely delectable
	if(src.Frozen)//they can't move if they're locked
		return
	else
		..()
	if(src.client)
		if(src.bunshin >= 1)
			for(var/mob/npc/KBunshin/K in world)
				if(K.original == src)
					if(K.Frozen||K.moving)
						return
					else
						walk_towards(K,src)



		else
			..()

mob/proc/KillBunshin()
	for(var/mob/npc/B in world)
		if(B.original == src)
			if(B.Frozen)
				src.bunshin = 0
				flick("smoke2",B)
				del(B)
			else
				src.bunshin = 0
				flick("smoke2",B)
				del(B)
mob
	verb
		BunshinK()
			set name = "Kill Bunshins"
			set category = "Commands"
			KillBunshin()