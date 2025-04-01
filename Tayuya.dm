
//*************** TAYUYA CLAN OBJ *************************//
obj
	MatekiMugenonsa
		icon = 'notes.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere||M.tasamaki)
					return
				var/damage = round(src.nin*1.3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Mateki Mugenonsa for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	MatekiMugenonsaMultiple
		icon = 'notes.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere||M.tasamaki)
					return
				var/damage = round(src.nin*1.6)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Mateki Mugenonsa Multiple for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	MatekiMugenonsaMultipleLVL2
		icon = 'notes.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere||M.tasamaki)
					return
				var/damage = round(src.nin*1.8)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Mateki Mugenonsa Multiple Level 2 for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
/*--------------------------------------------------------------*/
mob/Tayuya
	verb
		Slow_Movement()
			set category = "NinJutsu"
			set name = "Mateki Makyou no Ran"
			for(var/mob/M in oview(13,usr))
				usr.Handseals()
				if(usr.PK)
					return
				if(M.PK)
					return
				if(M.counter)
					return
				if(usr.firing)
					usr<<"Not now"
					return
				if(usr.chakra <= 500)
					usr<<"You don't have enough chakra left to Slow movements."
					return
				if(usr.AFK)
					usr<<"You can't use this jutsu while being AFK."
					usr<<"Preventing <B><font color= red>AFKing</B><font color=white>...</FONT>"
					return
				if(!usr.handseals)
					return
				else
					usr<<"You send Vibrating fluite waves through [M]'s body slowing their movement!"
					view()<<"<B>[usr]<font color=green> Says: Slow [M]'s Movement! Muwhahahahaha!"
					M.Move_Delay = 10
					usr.chakra -= 5000
					sleep(45)
					if(M)
						usr.Savedspeed = 1
						M<<"Your body recovers from [usr]'s Mateki Makyou no Ran!"
						usr<<"[M]'s Mateki Makyou no Ran ends from you!"

//*-------------------------------------------------------------*//

mob/Tayuya
	verb
		MatekiMugenonsaMultiple(mob/m in oview(usr)) // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Mateki Mugenonsa Multiple"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1||usr.tasamaki == 1) // If the mob's firing var is one...
				return
			if(usr.AFK)
				usr<<"You can't use this jutsu while being AFK."
				usr<<"Preventing <B><font color= red>AFKing</B><font color=white>...</FONT>"
				return
			if(usr.inso == 1)
				usr<<"Not while in Soutourou!"
				return
			if(usr.chakra <= 400)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				if(usr.Tayuya2 >= 100)
					usr.chakra -= 400
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.Tayuya2 += 1
					view()<<"<font size=1><font face=tahoma><b><font color=white>[usr]<font color=green> Says: Mateki Mugenonsa (Multiple)!"
					var/obj/MatekiMugenonsaMultiple/R = new /obj/MatekiMugenonsaMultiple
					usr.target=m
					R.loc = usr.loc
					R.nin=usr.gen
					R.name="[usr]"
					R.Gowner=usr
					walk_towards(R,m)
					sleep(1)
					usr.move = 1
					sleep(14)
					usr.firing = 0
					sleep(21)
					del(R)
					if (target == null)
						del(R)
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
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							return
					else
						usr.random = rand(1,20)
						if(random == 5||random==1)
							usr.ninexp += rand(1,10)
							usr.Nin()
							usr.Skills()
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 400
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.move = 0 // Disables the mob's movement
						usr.Tayuya2 += 1
						view()<<"<font size=1><font face=tahoma><b><font color=white>[usr]<font color=green> Says: Mateki Mugenonsa (Multiple)!"
						var/obj/MatekiMugenonsaMultiple/R = new /obj/MatekiMugenonsaMultiple
						usr.target=m
						R.loc = usr.loc
						R.nin=usr.gen
						R.name="[usr]"
						R.Gowner=usr
						walk_towards(R,m)
						sleep(1)
						usr.move = 1
						sleep(14)
						usr.firing = 0
						sleep(21)
						del(R)
						if (target == null)
							del(R)
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
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
							else
								return
						else
							usr.random = rand(1,20)
							if(random == 5||random==1)
								usr.ninexp += rand(1,10)
								usr.Nin()
								usr.Skills()
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(usr.ChakraC>=100)
										usr.ChakraC=100
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
							else
								return
					else
						usr<<"You failed to use Mateki Mugenonsa Multiple!"

mob/Tayuya
	verb
		MatekiMugenonsa() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Mateki Mugenonsa Single"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1||usr.tasamaki == 1) // If the mob's firing var is one...
				return
			if(usr.chakra <= 200)
				usr<<"You dont have enough chakra!"
				return
			if(usr.AFK)
				usr<<"You can't use this jutsu while being AFK."
				usr<<"Preventing <B><font color= red>AFKing</B><font color=white>...</FONT>"
				return
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				if(usr.Tayuya1 >= 100)
					usr.chakra -= 200
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.Tayuya1 += 1
					view()<<"<font size=1><font face=tahoma><b><font color=white>[usr]<font color=green> Says: Mateki Mugenonsa (Single)!"
					var/obj/MatekiMugenonsa/K = new /obj/MatekiMugenonsa
					sleep(10)
					usr.firing = 0
					K.loc = usr.loc
					K.nin=usr.gen
					K.dir = usr.dir
					K.name="[usr]"
					K.Gowner=usr
					walk(K,usr.dir)
					if (target == null)
						del(K)
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
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
					else
						usr.random = rand(1,20)
						if(random == 5||random==1)
							usr.ninexp += rand(1,10)
							usr.Nin()
							usr.Skills()
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
							else
								return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 200
						usr.Tayuya1 += 1
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=tahoma><b><font color=white>[usr]<font color=green> Says: Mateki Mugenonsa (Single)!"
						var/obj/MatekiMugenonsa/K = new /obj/MatekiMugenonsa
						sleep(10)
						usr.firing = 0
						K.loc = usr.loc
						K.nin=usr.gen
						K.dir = usr.dir
						usr.Chakragain()
						K.name="[usr]"
						K.Gowner=usr
						walk(K,usr.dir)
						if (target == null)
							del(K)
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
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							usr.random = rand(1,20)
							if(random == 5||random==1)
								usr.ninexp += rand(1,10)
								usr.Nin()
								usr.Skills()
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(usr.ChakraC>=100)
										usr.ChakraC=100
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
							else
								return
					else
						usr<<"You failed to use Mateki Mugenonsa!"
mob/Tayuya
	verb
		MatekiMugenonsaMultipleLVL2(mob/m in oview(usr)) // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Mateki Mugenonsa Multiple Lvl 2"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1||usr.tasamaki == 1) // If the mob's firing var is one...
				return
			if(usr.AFK)
				usr<<"You can't use this jutsu while being AFK."
				usr<<"Preventing <B><font color= red>AFKing</B><font color=white>...</FONT>"
				return
			if(usr.inso == 1)
				usr<<"Not while in Soutourou!"
				return
			if(usr.chakra <= 400)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				if(usr.Tayuya3 >= 100)
					usr.chakra -= 400
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.Tayuya3 += 1
					view()<<"<font size=1><font face=tahoma><b><font color=white>[usr]<font color=green> Says: Mateki Mugenonsa (Multiple 2)!"
					var/obj/MatekiMugenonsaMultipleLVL2/R = new /obj/MatekiMugenonsaMultipleLVL2
					usr.target=m
					R.loc = usr.loc
					R.nin=usr.gen
					R.name="[usr]"
					R.Gowner=usr
					walk_towards(R,m)
					sleep(1)
					usr.move = 1
					sleep(8)
					usr.firing = 0
					sleep(21)
					del(R)
					if (target == null)
						del(R)
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
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							return
					else
						usr.random = rand(1,20)
						if(random == 5||random==1)
							usr.ninexp += rand(1,10)
							usr.Nin()
							usr.Skills()
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 400
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.move = 0 // Disables the mob's movement
						usr.Tayuya2 += 1
						view()<<"<font size=1><font face=tahoma><b><font color=white>[usr]<font color=green> Says: Mateki Mugenonsa (Multiple 2)!"
						var/obj/MatekiMugenonsaMultipleLVL2/R = new /obj/MatekiMugenonsaMultipleLVL2
						usr.target=m
						R.loc = usr.loc
						R.nin=usr.gen
						R.name="[usr]"
						R.Gowner=usr
						walk_towards(R,m)
						sleep(1)
						usr.move = 1
						sleep(8)
						usr.firing = 0
						sleep(21)
						del(R)
						if (target == null)
							del(R)
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
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
							else
								return
						else
							usr.random = rand(1,20)
							if(random == 5||random==1)
								usr.ninexp += rand(1,10)
								usr.Nin()
								usr.Skills()
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(usr.ChakraC>=100)
										usr.ChakraC=100
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
							else
								return
					else
						usr<<"You failed to use Mateki Mugenonsa Multiple 2!"
obj
	doki
		icon = 'NPC Jiroubou.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				var/mob/O = src.Gowner
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*1.4)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by your Doki Beasts for [damage] damage!!"
					M.Death(O)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Tayuya
	verb
		Revolt() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Revolt of the Demon World"
			usr.Handseals()
			if(usr.firing) // If the mob's firing var is one...
				return
			if(usr.PK==0)
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
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.chakra <= 40)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				usr.DoryuuN += 1
				usr.chakra -= 3900
				usr.firing=1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <font size=1><font face=verdana><b><font color=white> Revolt of the Demon World!!"
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/doki/A = new /obj/doki/
					var/obj/doki/B = new /obj/doki/
					var/obj/doki/C = new /obj/doki/
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					sleep(110)
				if(usr.dir == SOUTH)
					var/obj/doki/A = new /obj/doki/
					var/obj/doki/B = new /obj/doki/
					var/obj/doki/C = new /obj/doki/
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = SOUTH
					B.dir = SOUTH
					C.dir = SOUTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					sleep(110)
				if(usr.dir == WEST)
					var/obj/doki/A = new /obj/doki/
					var/obj/doki/B = new /obj/doki/
					var/obj/doki/C = new /obj/doki/
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = WEST
					B.dir = WEST
					C.dir = WEST
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					sleep(110)
				if(usr.dir == EAST)
					var/obj/doki/A = new /obj/doki/
					var/obj/doki/B = new /obj/doki/
					var/obj/doki/C = new /obj/doki/
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x+1, usr.y+1, usr.z)
					A.nin=usr.nin
					B.nin=usr.nin
					C.nin=usr.nin
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = EAST
					B.dir = EAST
					C.dir = EAST
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					sleep(110)
					return
				sleep(8)
				usr.firing=0
				return