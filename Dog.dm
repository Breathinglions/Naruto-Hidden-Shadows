mob
	pet
		icon = 'Animals.dmi'
		icon_state = "Dog"
		Move_Delay=1
		tai=500
		Mhealth = 100000
		density=1
		health = 1000
		isdog=1
		NPC = 1
		Move()
			..()
			var/mob/O = src.owner
			if(src.Frozen)
				return
			src.random = rand(1,50)
			if(src.random==1)
				src.tai += 1
				src.Mhealth += rand(2,10)
				src.health += rand(2,10)
				O.Mhealth=src.Mhealth
				O.tai=src.tai
		Bump(mob/M)
			..()
			var/mob/P = src
			if(istype(M,/mob/))
				if(M == owner||M.name == src.name||Wfight==0||fighting)
					return
				if(M.PK==0)
					return
				if(src.PK==0)
					return
				else
					var/Damage = P.tai
					M.health -= Damage
					M.Death(src)
					view() << "[src] attacks [M] for [Damage]!"
					src.fighting = 1
					sleep(5)
					src.fighting = 0

mob
	wolf
		icon = 'Animals.dmi'
		icon_state = "Wolf"
		Move_Delay=1
		tai=500
		Mhealth = 100000
		density=1
		health = 1000
		isdog=1
		NPC = 1
		Move()
			..()
			var/mob/O = src.owner
			if(src.Frozen)
				return
			src.random = rand(1,50)
			if(src.random==1)
				src.tai += 1
				src.Mhealth += rand(2,10)
				src.health += rand(2,10)
				O.Mhealth=src.Mhealth
				O.tai=src.tai
		Bump(mob/M)
			..()
			var/mob/P = src
			if(istype(M,/mob/))
				if(M == owner||M.name == src.name||Wfight==0||fighting)
					return
				if(M.PK==0)
					return
				if(src.PK==0)
					return
				else
					var/Damage = P.tai
					M.health -= Damage
					M.Death(src)
					view() << "[src] attacks [M] for [Damage]!"
					src.fighting = 1
					sleep(5)
					src.fighting = 0

mob/dogstuff
	verb
		Pickup(mob/pet/P in oview(3),mob/wolf/P in oview(3))
			set category = "Dog"
			if(P.owner == usr)
				P.loc = usr
				P.Frozen =1
			else
				usr<<"This dog does not belong to you."

		Drop(mob/pet/P in src.contents,mob/wolf/P in src.contents)
			set category = "Dog"
			if(P.health >= 1)
				P.loc=locate(usr.x,usr.y-1,usr.z)
				P.Frozen = 0
				P.owner=usr
			else
				usr<<"Your dog is hurt and cannot be dropped.."

		Aggressive(mob/pet/P in oview(),mob/wolf/P in oview())
			set category = "Dog"
			if(P.owner == usr&&P.Wfight == 0)
				P.Wfight = 1
				usr<<"Your dog will now attack anything it bumps into."
			else if(P.owner == usr&&P.Wfight == 1)
				usr<<"Your dog will no longer attack anything."
				P.Wfight = 0
			else
				usr<<"This is not your dog!"

		Sit(var/mob/pet/P in oview(1),mob/wolf/P in oview(1))
			set category = "Dog"
			if(P.owner==usr&&P.sit == 0)
				P.Frozen=1
				walk(src,0)
			else if(P.owner==usr&&P.sit == 1)
				P.Frozen=0
				walk(src,0)
			else
				usr<<"This is not your dog."
				return
		Come(mob/pet/P in oview(),mob/wolf/P in oview())
			set category = "Dog"
			if(P.owner==usr)
				P.Frozen=0
				walk_towards(P,src)
		FollowSomeone(mob/M in view())
			set category = "Dog"
			for(var/mob/pet/P in oview())
				if(P.owner == usr&&P.Frozen == 0)
					walk_towards(P,M)
			for(var/mob/wolf/P in oview())
				if(P.owner == usr&&P.Frozen == 0)
					walk_towards(P,M)

/*mob/dogstuff1
	verb
		Pickup()
			set category = "Dog"
			for(var/mob/wolf/P in oview(3))
				if(P.owner == usr)
					P.loc = usr
					P.Frozen =1
				else
					usr<<"This dog does not belong to you."

		Drop()
			set category = "Dog"
			for(var/mob/wolf/P in src.contents)
				if(P.health >= 1)
					P.loc=locate(usr.x,usr.y-1,usr.z)
					P.Frozen = 0
					P.owner=usr
				else
					usr<<"Your dog is hurt and cannot be dropped.."
					return
		Aggressive()
			set category = "Dog"
			for(var/mob/wolf/P in oview())
				if(P.owner == usr&&P.Wfight == 0)
					P.Wfight = 1
					usr<<"Your dog will now attack anything it bumps into."
					return
				else if(P.owner == usr&&P.Wfight == 1)
					usr<<"Your dog will no longer attack anything."
					P.Wfight = 0
					return
				else
					usr<<"This is not your dog!"
					return
		Sit(var/mob/wolf/P in oview(1))
			set category = "Dog"
			if(P.owner==usr&&P.sit == 0)
				P.Frozen=1
				walk(src,0)
			else if(P.owner==usr&&P.sit == 1)
				P.Frozen=0
				walk(src,0)
			else
				usr<<"This is not your dog."
				return
		Come()
			set category = "Dog"
			for(var/mob/wolf/P in view())
				if(P.owner==usr)
					P.Frozen=0
					walk_towards(P,src)
		FollowSomeone(mob/M in view())
			set category = "Dog"
			for(var/mob/wolf/P in oview())
				if(P.owner == usr&&P.Frozen == 0)
					walk_towards(P,M)*/



