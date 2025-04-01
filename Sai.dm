

mob/Sai
	verb
		InkKyuu(mob/M in oview(10))
			set category = "NinJutsu"
			set name = "Artistic Bind"
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
			if(M.captured)
				usr<<"He is already caught!"
				return
			else
				if(usr.KyuuN>=100)
					usr.chakra -= 10000
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.KyuuN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: GOTCHA!"
					M.overlays+='inktrap.dmi'
					M.captured=1
					usr.Chakragain()
					M.Frozen=1
					sleep(100)
					if(M)
						M.captured=0
						M.Frozen=0
						M.overlays-='inktrap.dmi'
						M.overlays-='inktrap.dmi'
						M.overlays-='inktrap.dmi'
						M.overlays-='inktrap.dmi'
						usr.firing=0
					return
				else
					usr.random=rand(1,5)
					if(usr.random==1)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: GOTCHA!"
						M.overlays+='inktrap.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='inktrap.dmi'
							M.overlays-='inktrap.dmi'
							M.overlays-='inktrap.dmi'
							M.overlays-='inktrap.dmi'
							usr.firing=0
						return
					if(usr.random==2)
						usr.chakra -= 10000
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.KyuuN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: GOTCHA!"
						M.overlays+='inktrap.dmi'
						M.captured=1
						M.Frozen=1
						sleep(100)
						if(M)
							M.captured=0
							M.Frozen=0
							M.overlays-='inktrap.dmi'
							M.overlays-='inktrap.dmi'
							M.overlays-='inktrap.dmi'
							M.overlays-='inktrap.dmi'
						usr.firing=0
						return
					if(usr.random==3)
						usr<<"You fail to use ART"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==4)
						usr<<"You fail to use art"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					if(usr.random==5)
						usr<<"You fail to use art"
						usr.firing=1
						sleep(40)
						usr.firing=0
						return
					sleep(100)
					usr.firing=0
					if(M)
						M.captured=0
		ArtisticSousou()
			set category = "NinJutsu"
			set name = "Artistick Sousou"
			usr.Handseals()
			if(!usr.handseals)
				return
			for(var/mob/M in oview(10,usr))
				if(usr.sphere)
					return
				if(src.Kaiten)
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
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					Death(usr)
					return
				if(usr.chakra<=10000)
					usr<<"Not Enough Chakra"
					return
				if(M.captured)
					usr.firing=1
					var/damage=usr.gen*1.4
					view(usr)<<"Artistic Sousou!"
					flick("boom",M)
					M.overlays-='inktrap.dmi'
					M.overlays-='inktrap.dmi'
					usr.Chakragain()
					M.overlays-='inktrap.dmi'
					M.health-=damage
					M.captured=0
					usr.firing=0
					if(M.health<=0)
						M.Death(usr)
				else
					return
		InkArmor()
			set category = "NinJutsu"
			set name = "Ink armor"
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
			if(!usr.Barmor&&!usr.firing)
				view()<<"<font color = blue>[usr]:Ink Shell!"
				usr.overlays += 'inkbind.dmi'
				usr.Barmor =1
				usr.nin = usr.gen*1.3
				sand
				if(usr.Barmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'inkbind.dmi'
						usr.Barmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto sand
			else if(usr.Barmor)
				usr.overlays -= 'inkbind.dmi'
				usr.Barmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the Ink Shell."
		InkBird() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Ink Bird Flock"
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
			if(usr.YHU == 1)
				return
			else // If the firing var isn't 1...
				usr.YHU = 1
				usr.YHekiUses += 1
				usr.chakra -= 39
				view()<<"[usr] Says:Ink Art: Barrage of Birds"
				sleep(10)
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/Yo/A = new /obj/Yo/
					var/obj/Yo/B = new /obj/Yo/
					var/obj/Yo/C = new /obj/Yo/
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.gen
					B.nin=usr.gen
					C.nin=usr.gen
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(30)
					usr.YHU = 0
					sleep(370)
					del(A)
					del(B)
					del(C)
					sleep(110)
				if(usr.dir == SOUTH)
					var/obj/Yo/A = new /obj/Yo/
					var/obj/Yo/B = new /obj/Yo/
					var/obj/Yo/C = new /obj/Yo/
					A.loc = locate(usr.x, usr.y-1, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y-1, usr.z)
					A.nin=usr.gen
					B.nin=usr.gen
					C.nin=usr.gen
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = SOUTH
					B.dir = SOUTH
					C.dir = SOUTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(30)
					usr.YHU = 0
					sleep(370)
					del(A)
					del(B)
					del(C)
					sleep(110)
				if(usr.dir == WEST)
					var/obj/Yo/A = new /obj/Yo/
					var/obj/Yo/B = new /obj/Yo/
					var/obj/Yo/C = new /obj/Yo/
					A.loc = locate(usr.x-1, usr.y, usr.z)
					C.loc = locate(usr.x-1, usr.y-1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					A.nin=usr.gen
					B.nin=usr.gen
					C.nin=usr.gen
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = WEST
					B.dir = WEST
					C.dir = WEST
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(30)
					usr.YHU = 0
					sleep(370)
					del(A)
					del(B)
					del(C)
					sleep(110)
				if(usr.dir == EAST)
					var/obj/Yo/A = new /obj/Yo/
					var/obj/Yo/B = new /obj/Yo/
					var/obj/Yo/C = new /obj/Yo/
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y-1, usr.z)
					B.loc = locate(usr.x+1, usr.y+1, usr.z)
					A.nin=usr.gen
					B.nin=usr.gen
					C.nin=usr.gen
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					A.dir = EAST
					B.dir = EAST
					C.dir = EAST
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					sleep(30)
					usr.YHU = 0
					sleep(370)
					del(A)
					del(B)
					del(C)
					sleep(110)
					return
				return
		InkSkroll(mob/m in oview(usr)) // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Throw Scroll"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
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
			if(m.counter)
				usr<<"They copy and reflect it back at you."
				m<<"You copy and reflect it back at them."
				usr.health -= m.Mnin/5
				Death(usr)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(m.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)

				return
			else // If the firing var isn't 1...
				if(usr.Rai2N >= 52)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.Rai2N += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Catch This!"
					var/obj/sk/R = new /obj/sk
					usr.target=m
					R.loc = usr.loc
					R.nin=usr.gen
					R.name="[usr]"
					usr.Chakragain()
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
						usr.chakra -= 15
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.move = 0 // Disables the mob's movement
						usr.Rai2N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Catch This!"
						var/obj/sk/R = new /obj/sk
						usr.target=m
						R.loc = usr.loc
						R.nin=usr.gen
						R.name="[usr]"
						usr.Chakragain()
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
		Slowdown(mob/M in get_step(src,src.dir))
			set category = "NinJutsu"
			set name = "Ink Tracker"
			usr.Handseals()
			if(usr.firing)
				usr<<"Not now"
				return
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
			if(!usr.handseals)
				return
			else
				usr<<"You throw ink on [M]'s feet slowing their movement!"
				M.Move_Delay = 10
				sleep(600)
				if(M)
					M.Move_Delay = usr.Savedspeed
					M<<"Your ink wears off!"
					usr<<"[M]'s torchure ends"
		Deathnote() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Deathnote"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
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
			else // If the firing var isn't 1...
				if(usr.YHU >= 0)
					usr.chakra -= 15
					usr.Chakragain()
					usr.firing = 1
					var/obj/lefty/O = new /obj/lefty
					var/obj/middley/L = new /obj/middley
					var/obj/righty/N = new /obj/righty
					var/obj/topy/M1 = new /obj/topy
					var/obj/bottomy/K = new /obj/bottomy
					var/obj/toprighty/TR = new /obj/toprighty
					var/obj/bottomrighty/BR = new /obj/bottomrighty
					var/obj/toplefty/TL = new /obj/toplefty
					var/obj/bottomlefty/BL = new /obj/bottomlefty
					var/obj/scrrol/T = new /obj/scrrol
					usr.YHU += 1
					usr.handseals=0
					view()<<"[usr] Says: Ink Death Note"
					K.Gowner=usr
					K.nin=usr.gen
					usr.Frozen=1
					if(usr.dir==NORTH)
						if(K)
							K.loc = usr.loc
							K.y+=2
						if(L)
							L.loc = usr.loc
							L.y+=3
						if(M1)
							M1.loc = usr.loc
							M1.y+=4
						if(O)
							O.loc = usr.loc
							O.y+=3
							O.x-=1
						if(N)
							N.loc = usr.loc
							N.y+=3
							N.x+=1
						if(TR)
							TR.loc = usr.loc
							TR.y+=4
							TR.x+=1
						if(TL)
							TL.loc = usr.loc
							TL.y+=4
							TL.x-=1
						if(BR)
							BR.loc = usr.loc
							BR.y+=2
							BR.x+=1
						if(BL)
							BL.loc = usr.loc
							BL.y+=2
							BL.x-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y+=1
					if(usr.dir==SOUTH)
						if(K)
							K.loc = usr.loc
							K.y-=2
						if(L)
							L.loc = usr.loc
							L.y-=3
						if(M1)
							M1.loc = usr.loc
							M1.y-=4
						if(O)
							O.loc = usr.loc
							O.y-=3
							O.x-=1
						if(N)
							N.loc = usr.loc
							N.y-=3
							N.x+=1
						if(TR)
							TR.loc = usr.loc
							TR.y-=2
							TR.x+=1
						if(TL)
							TL.loc = usr.loc
							TL.y-=2
							TL.x-=1
						if(BR)
							BR.loc = usr.loc
							BR.y-=4
							BR.x+=1
						if(BL)
							BL.loc = usr.loc
							BL.y-=4
							BL.x-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.y-=1
					if(usr.dir==WEST)
						if(K)
							K.loc = usr.loc
							K.x-=2
						if(L)
							L.loc = usr.loc
							L.x-=3
						if(M1)
							M1.loc = usr.loc
							M1.x-=4
						if(O)
							O.loc = usr.loc
							O.y-=1
							O.x-=3
						if(N)
							N.loc = usr.loc
							N.y+=1
							N.x-=3
						if(TR)
							TR.loc = usr.loc
							TR.x-=2
							TR.y+=1
						if(TL)
							TL.loc = usr.loc
							TL.x-=4
							TL.y+=1
						if(BR)
							BR.loc = usr.loc
							BR.x-=2
							BR.y-=1
						if(BL)
							BL.loc = usr.loc
							BL.x-=4
							BL.y-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x-=1
					if(usr.dir==EAST)
						if(K)
							K.loc = usr.loc
							K.x+=2
						if(L)
							L.loc = usr.loc
							L.x+=3
						if(M1)
							M1.loc = usr.loc
							M1.x+=4
						if(O)
							O.loc = usr.loc
							O.y-=1
							O.x+=3
						if(N)
							N.loc = usr.loc
							N.y+=1
							N.x+=3
						if(TR)
							TR.loc = usr.loc
							TR.x+=4
							TR.y+=1
						if(TL)
							TL.loc = usr.loc
							TL.x+=2
							TL.y+=1
						if(BR)
							BR.loc = usr.loc
							BR.x+=4
							BR.y-=1
						if(BL)
							BL.loc = usr.loc
							BL.x+=2
							BL.y-=1
						if(T)
							T.dir = usr.dir
							T.loc = usr.loc
							T.x+=1
					for(var/mob/M in oview(4,usr))
						if(K)
							if(M.loc==K.loc)
								if(M.Kaiten)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Death Note."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Death Note."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.gen*1.4
								view()<<"[M] has taken [damage] Damage from [usr]'s Death Note"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(T)
							if(M.loc==T.loc)
								if(M.Kaiten)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Death Note."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Death Note."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.gen*1.4
								view()<<"[M] has taken [damage] Damage from [usr]'s Death Note."
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(L)
							if(M.loc==L.loc)
								if(M.Kaiten||M.counter)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Death Note."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s spell."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.Mnin/5
									Death(usr)
									return
								var/damage=usr.gen*1.4
								view()<<"[M] has taken [damage] Damage from [usr]'s Death Note"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(M1)
							if(M.loc==M1.loc)
								if(M.Kaiten)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Death Note."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Death Note."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.gen/5
									Death(usr)
									return
								var/damage=usr.nin*1.4
								view()<<"[M] has taken [damage] Damage from [usr]'s Death Note"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(N)
							if(M.loc==N.loc)
								if(M.Kaiten)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Death Note."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Death Note."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.gen/5
									Death(usr)
									return
								var/damage=usr.nin*1.4
								view()<<"[M] has taken [damage] Damage from [usr]'s Death Note"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(O)
							if(M.loc==O.loc)
								if(M.Kaiten)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Death Note."
									return
								if(M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Death Note."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.gen/5
									Death(usr)
									return
								var/damage=usr.nin*1.4
								view()<<"[M] has taken [damage] Damage from [usr]'s Death Note"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(BL)
							if(M.loc==BL.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Death Note."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.gen/5
									Death(usr)
									return
								var/damage=usr.nin*1.4
								view()<<"[M] has taken [damage] Damage from [usr]'s Death Note"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(BR)
							if(M.loc==BR.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Death Note."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.gen/5
									Death(usr)
									return
								var/damage=usr.nin*1.4
								view()<<"[M] has taken [damage] Damage from [usr]'s Death Note"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(TR)
							if(M.loc==TR.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Death Note."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.gen/5
									Death(usr)
									return
								var/damage=usr.nin*1.4
								view()<<"[M] has taken [damage] Damage from [usr]'s Death Note"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(TL)
							if(M.loc==TL.loc)
								if(M.Kaiten||M.sphere)
									usr<<"Your attack doesn't harm [M]."
									M<<"You block [usr]'s Death Note."
									return
								if(M.counter)
									usr<<"They copy and reflect it back at you."
									M<<"You copy and reflect it back at them."
									usr.health -= M.gen/5
									Death(usr)
									return
								var/damage=usr.nin*1.4
								view()<<"[M] has taken [damage] Damage from [usr]'s Death Note"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,8)
						if(random == 5||random==1)
							usr.Mnin += rand(1,2)
							usr.nin = usr.gen
							usr.Nin()
							usr.Skills()
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
					else
						usr.random = rand(1,10)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
					sleep(30)
					usr.firing = 0
					usr.Frozen=0
					sleep(45)
					del(K)
					del(T)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 15
						usr.firing = 1
						var/obj/GoukakyuuHead/K = new /obj/GoukakyuuHead
						var/obj/scrrol/T = new /obj/scrrol
						usr.YHU += 1
						usr.Frozen=1
						view()<<"[usr] Says: Ink Death Note"
						K.Gowner=usr
						K.nin=usr.gen
						if(usr.dir==NORTH)
							if(K)
								K.loc = usr.loc
								K.y+=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.y+=1
						if(usr.dir==SOUTH)
							if(K)
								K.loc = usr.loc
								K.y-=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.y-=1
						if(usr.dir==WEST)
							if(K)
								K.loc = usr.loc
								K.x-=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.x-=1
						if(usr.dir==EAST)
							if(K)
								K.loc = usr.loc
								K.x+=2
							if(T)
								T.dir = usr.dir
								T.loc = usr.loc
								T.x+=1
						for(var/mob/M in oview(4,usr))
							if(K)
								if(M.loc==K.loc)
									if(M.Kaiten||M.sphere)
										usr<<"Your attack doesn't harm [M]."
										M<<"You block [usr]'s Death Note."
										return
									if(M.counter)
										usr<<"They copy and reflect it back at you."
										M<<"You copy and reflect it back at them."
										usr.health -= M.gen/5
										Death(usr)
										return
									var/damage=usr.nin*1.4
									view()<<"[M] has taken [damage] Damage from [usr]'s Death Note"
									M.health-=damage
									if(M.health<=0)
										M.Death(usr)
						for(var/mob/M in oview(4,usr))
							if(T)
								if(M.loc==T.loc)
									if(M.Kaiten||M.sphere)
										usr<<"Your attack doesn't harm [M]."
										M<<"You block [usr]'s Death Note."
										return
									if(M.counter)
										usr<<"They copy and reflect it back at you."
										M<<"You copy and reflect it back at them."
										usr.health -= M.gen/5
										Death(usr)
										return
									var/damage=usr.nin*1.4
									view()<<"[M] has taken [damage] Damage from [usr]'s Death "
									M.health-=damage
									if(M.health<=0)
										M.Death(usr)
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
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							usr.random = rand(1,20)
							if(random == 5||random==1)
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(usr.ChakraC>=100)
										usr.ChakraC=100
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
						sleep(10)
						usr.firing = 0
						usr.Frozen=0
						sleep(45)
						del(K)
						del(T)

		HomingInk(mob/M in oview(usr)) // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Homing Ink"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
				return

			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return

			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return

			else // If the firing var isn't 1...
				if(usr.Sai&&src.Mnin >=100)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.SS += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>HA HA HA INK Agouny!</FONT>"
					var/obj/Ink/K = new /obj/Ink
					usr.target=M
					usr.Chakragain()
					K.loc = usr.loc
					K.nin=usr.gen
					K.Move_Delay=2
					K.name="[usr]"
					K.Gowner=usr
					walk_towards(K,M)
					sleep(1)
					usr.move = 1
					sleep(8)
					usr.firing = 0
					sleep(21)
					del(K)
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
							return
					else
						usr.random = rand(1,20)
						if(random == 5||random==1)
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

		InkDd() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Mad Ink Dragon"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
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
			else // If the firing var isn't 1...
				if(usr.Sai&&src.Mnin >=100)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.SS += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=red> Says: Ink Art Dragon Destruction!"
					var/obj/InkD/K = new /obj/InkD
					usr.Chakragain()
					K.loc = usr.loc
					K.nin=usr.gen
					K.Move_Delay=0
					K.name="[usr]"
					K.Gowner=usr
					sleep(1)
					usr.move = 1
					sleep(8)
					usr.firing = 0
					sleep(21)
					del(K)
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
							return
		PaintedSnake() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Ink Art Lion"
			usr.Handseals()
			if(usr.firing||usr.Kaiten == 1) // If the mob's firing var is one...
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.PK==0)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [usr]"
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
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)

				return
			else // If the firing var isn't 1...
				if(usr.Fuuton2N >= 25)
					usr.chakra -= 15
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.Fuuton2N += 1
					view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Fuuton: Snake Summon!!! ATTACK!"
					var/obj/PSnake/K = new /obj/PSnake
					K.loc = usr.loc
					K.nin=usr.gen
					K.dir = usr.dir
					K.Move_Delay=2
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
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
					sleep(10)
					usr.firing = 0
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 15
						usr.Fuuton2N += 1
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Fuuton: AGAIN!"
						var/obj/PSnake/K = new /obj/PSnake
						K.loc = usr.loc
						K.nin=usr.gen
						K.Move_Delay=2
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
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(usr.ChakraC>=100)
										usr.ChakraC=100
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
						sleep(10)
						usr.firing = 0
						sleep(45)
						del(K)





mob/npc/Sai
	name = "Sai"
	icon = 'Sai.dmi'
	PK = 0
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "???"
			switch(input("What, I am Sai",text) in list ("I'm one of you, too!","Forget it"))
				if("I'm one of you, too!")
					if(usr.Sai == 1)
						usr<<"Hello."
						if(usr.Sai&&src.Mnin >=100)
							usr << "<B><font color = blue>You learned how to protect yourself!"
							usr.verbs += new /mob/Sai/verb/InkArmor()
						else
							usr<<"You need nin Tai to learn to draw armor."
						if(usr.Sai&&src.Mnin >=1250)
							usr << "<B><font color = blue>You learned how to protect yourself!"
							usr.verbs += new /mob/Sai/verb/HomingInk()
						else
							usr<<"You need nin Tai to learn to draw armor."
						if(usr.Sai&&usr.Mtai >=100)
							usr << "<B><font color = blue>go and throw a scroll at someone!"
							usr.verbs += new /mob/Sai/verb/InkSkroll()
						else
							usr<<"You need 100 Tai."
						if(usr.Sai&&usr.Mnin >=1000)
							usr << "<B><font color = blue>You learned how to draw birds!"
							usr.verbs += new /mob/Sai/verb/InkBird()
							usr.verbs += new /mob/Sai/verb/InkDd()
						else
							usr<<"You need 1000 nin to learn how to draw birds."
						if(usr.Sai&&usr.Mnin >=2000)
							usr << "<B><font color = blue>You learned Ink Bind!"
							usr.verbs += new /mob/Sai/verb/InkKyuu()
						else
							usr<<"You need 2000 nin to learn Ink Beasts."
						if(usr.Sai&&usr.Mnin>=1000)
							usr<<"<b><font color=blue>You learned how to paint a Snake...Lol!!"
							usr.verbs +=new /mob/Sai/verb/PaintedSnake()
					else
						usr<<"Please Leave, You Are Disrupting My Picture!"
						return
				if("Forget it")
					usr<<"Fine"
					return
//obj/techs/Overlays/Fallen_moon_Center
//
//    icon = 'Fallen moon.dmi'
//    icon_state = "fm center"
//    density = 0
//    layer = 999
//
//    New()
//        pixel_y = 64
//        pixel_x = 0
//        src.overlays += new/obj/techs/Overlays/Fallen_moon_Top_Left
//        src.overlays += new/obj/techs/Overlays/Fallen_moon_Top
//        src.overlays += new/obj/techs/Overlays/Fallen_moon_Top_Right
//        src.overlays += new/obj/techs/Overlays/Fallen_moon_Middle_Left
//        src.overlays += new/obj/techs/Overlays/Fallen_moon_Middle_Right
//        src.overlays += new/obj/techs/Overlays/Fallen_moon_Bottom_Right
//        src.overlays += new/obj/techs/Overlays/Fallen_moon_Bottom_Left
//        src.overlays += new/obj/techs/Overlays/Fallen_moon_Bottom
//
/obj/techs/Overlays/Fallen_moon_Top_Right

    icon = 'inkdeathsymbol.dmi'
    icon_state = "fm top 3"
    density = 0
    layer = 999

    New()
        pixel_y = 32
        pixel_x = 32


/obj/techs/Overlays/Fallen_moon_Top

    icon = 'inkdeathsymbol.dmi'
    icon_state = "fm top 2"
    density = 0
    layer = 999

    New()
        pixel_y = 32
        pixel_x = 0


/obj/techs/Overlays/Fallen_moon_Top_Left

    icon = 'inkdeathsymbol.dmi'
    icon_state = "fm top 1"
    density = 0
    layer = 999

    New()
        pixel_y = 32
        pixel_x = -32



/obj/techs/Overlays/Fallen_moon_Middle_Left

    icon = 'inkdeathsymbol.dmi'
    icon_state = "fm side 1"
    density = 0
    layer = 999

    New()
        pixel_x = -32


/obj/techs/Overlays/Fallen_moon_Middle_Right

    icon = 'inkdeathsymbol.dmi'
    icon_state = "fm side 2"
    density = 0
    layer = 999

    New()
        pixel_x = 32


/obj/techs/Overlays/Fallen_moon_Bottom_Right

    icon = 'inkdeathsymbol.dmi'
    icon_state = "fm bottom 3"
    density = 0
    layer = 999

    New()
        pixel_x = 32
        pixel_y = -32


/obj/techs/Overlays/Fallen_moon_Bottom_Left

    icon = 'inkdeathsymbol.dmi'
    icon_state = "fm bottom 1"
    density = 0
    layer = 999

    New()
        pixel_x = -32
        pixel_y = -32


/obj/techs/Overlays/Fallen_moon_Bottom

    icon = 'inkdeathsymbol.dmi'
    icon_state = "fm bottom 2"
    density = 0
    layer = 999

    New()
        pixel_y = -32

obj
	scrrol
		icon='inkdeathsymbol.dmi'
		icon_state="scroll"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)
	middley
		icon='inkdeathsymbol.dmi'
		icon_state="fm center"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)
	bottomy
		icon='inkdeathsymbol.dmi'
		icon_state="fm bottom 2"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)
	topy
		icon='inkdeathsymbol.dmi'
		icon_state="fm top 2"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)
	lefty
		icon='inkdeathsymbol.dmi'
		icon_state="fm side 1"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)
	righty
		icon='inkdeathsymbol.dmi'
		icon_state="fm side 2"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	toplefty
		icon='inkdeathsymbol.dmi'
		icon_state="fm top 1"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)
	toprighty
		icon='inkdeathsymbol.dmi'
		icon_state="fm top 3"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	bottomlefty
		icon='inkdeathsymbol.dmi'
		icon_state="fm bottom 1"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)
	bottomrighty
		icon='inkdeathsymbol.dmi'
		icon_state="fm bottom 3"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)
obj
	PSnake
		icon = '000.dmi'
		icon_state = "snake"
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
					return
				if(M.counter)
					del(src)
					return
				var/damage = round(src.nin)
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
	PLion
		icon = '000.dmi'
		icon_state = "lion"
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.PK==0)
					usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
					return
				if(M.counter)
					del(src)
					return
				var/damage = round(src.nin)
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
	InkD
		icon = 'inkdragon.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*1.6)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Art for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
	Ink
		icon = 'inkspit.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*1.3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Art for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
	InkBeast
		icon = 'inkbeast.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
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
					view(M) << "[M] was hit by Art for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
	Yo
		icon = 'Ink Artist Bird.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*1.6)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] wat hit by Ink Bird for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
	sk
		icon = 'inkscroll.dmi'
		icon_state = ""
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*1.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] wat hit by Scroll for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
	ArtScroll
		name = "Scroll"
		icon = 'scroll.dmi'
		icon_state = "8"
		worn = 0
		price = 0
		verb
			Wear()
				if(usr:BSworn == 1)
					src.worn = 0
					usr:BSworn = 0
					usr.overlays -= 'scroll.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.bonesword = 0
					usr.swordD = 0
					usr.tai = usr.Mtai
				else
					if(usr.spinesword)
						usr<<"You can only weild one Scroll at a time"
						return
					src.worn = 1
					usr:BSworn = 1
					usr.overlays += 'scroll.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 1000
					usr.swordD = usr.cap*1.2
					usr.bonesword = 1
			Look()
				usr<<"This is a art scroll."