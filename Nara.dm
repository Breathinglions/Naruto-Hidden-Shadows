mob/Nara
	verb
		ShadowNoJutsu()
			set category = "GenJutsu"
			set name = "Concentration"
			if(usr.resting)
				return
			if(usr.meditating)
				return
			if(usr.firing)
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
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.SHarmor&&!usr.firing)
				view()<<"<font color=silver><b><font face=verdana>[usr]: Come on, Concentrate!!"
				usr.SHarmor =1
				usr.gen = usr.gen*1.1
				sand
				if(usr.SHarmor)
					usr.chakra -=100
					if(usr.chakra <= 4)
						usr.SHarmor = 0
						usr.gen = usr.Mgen
						return
					else
						sleep(4)
						goto sand
			else if(usr.SHarmor)
				usr.SHarmor =0
				usr.gen = usr.Mgen
				usr<<"You stop concentrating."
mob/Nara
	verb
		kageteleport(mob/M in world)
			set popup_menu = 0
			set category = "NinJutsu"
			set name = "Kage Teleport"
			usr.Handseals()
			if(M.Notele)
				return
			if(usr.jailtime)
				usr<<"Not While Jailed"
				return
			if(usr.resting)
				return
			if(usr.meditating)
				return
			if(usr.firing)
				return
			if(!usr.handseals)
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
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(!M.PK)
				usr<<"NON PK ZONE!"
				return
			if(M.z==2||M.z==10||M.z==13||M.z==15||M.z==16||M.z==17||M.z==18||M.z==20||M.z==25||M.z==28||M.z==29||M.z==30||M.z==96||M.z==97||M.z==98||M.z==99||M.z==100)
				usr<<"You can not teleport there."
			else
				M << "[usr] teleports next to you"
				usr << "You teleport next to [M]"
				usr.loc = locate(M.x,M.y-1,M.z)

mob/Nara
	verb
		kageshibari(mob/M in oview(13))
			set category = "NinJutsu"
			set name = "Kage Shibari no Jutsu"
			usr.Handseals()
			if(usr.resting)
				return
			if(usr.meditating)
				return
			if(usr.firing)
				return
			if(!usr.handseals)
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
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(!M.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 5000)
				usr<<"Not enough Chakra!"
			else
				if(usr.Kshibari)
					for(var/obj/shibari/K in world)
						if(K.owner==usr)
							del(K)
							usr.Kshibari=0
							M.Frozen=0
							M.caught=0
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
					for(var/obj/shibaritrail/T in world)
						if(T.owner==usr)
							del(T)
							usr.Kshibari=0
							M.Frozen=0
							M.caught=0
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
							M.overlays-='kagekubi.dmi'
				else
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#708090>K</FONT><FONT COLOR=#707f8d>a</FONT><FONT COLOR=#6f7c89>g</FONT><FONT COLOR=#6f7a85>e</FONT><FONT COLOR=#6e7781> </FONT><FONT COLOR=#6d757d>S</FONT><FONT COLOR=#6c7379>h</FONT><FONT COLOR=#6b7075>i</FONT><FONT COLOR=#6b6e71>b</FONT><FONT COLOR=#6a6b6d>a</FONT><FONT COLOR=#696969>r</FONT><FONT COLOR=#777777>i</FONT><FONT COLOR=#848484> </FONT><FONT COLOR=#929292>N</FONT><FONT COLOR=#a0a0a0>o</FONT><FONT COLOR=#aeaeae> </FONT><FONT COLOR=#bbbbbb>J</FONT><FONT COLOR=#c9c9c9>u</FONT><FONT COLOR=#d7d7d7>t</FONT><FONT COLOR=#e5e5e5>s</FONT><FONT COLOR=#f2f2f2>u</FONT><FONT COLOR=#ffffff>!</FONT>"
					var/obj/shibari/K = new /obj/shibari
					K.loc = usr.loc
					usr.Chakragain()
					K.Move_Delay = 1
					K.gen = usr.gen
					usr.Kshibari=1
					K.owner = usr
					K.target=M
					usr.Frozen=1

		ExtendShadow()
			set category = "NinJutsu"
			set name = "Extend Shadow"
			usr.chakra -= 5000
			for(var/obj/shibari/K in world)
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.Froze)
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
				if(K.owner == usr)
					step_towards(K,K.target)
					usr.Frozen=1
				if(usr.chakra<=5000)
					del(K)
					usr.Kshibari=0
					usr<<"You have hold has sliped"
					for(var/obj/shibaritrail/T in world)
						if(T.owner == usr)
							usr.Frozen=0
							del(T)
		RetractShadow()
			set category = "NinJutsu"
			set name = "Retract Shadow"
			usr.chakra -= 5000
			for(var/obj/shibari/K in world)
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.Froze)
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
				K.move=1
				if(K.owner == usr)
					for(var/mob/M in K.loc)
						if(K.owner == M)
							if(K.loc == M.loc)
								usr.Frozen=0
								del(K)
								usr.Kshibari=0
								M.Frozen=0
								for(var/obj/shibaritrail/A in world)
									if(A.owner==usr)
										del(A)
								return
					for(var/obj/shibaritrail/T in oview(1,K))
						if(T.owner==usr)
							K.loc = T.loc
							K.dir=T.dir
							del(T)
						else
							del(K)
							for(var/obj/shibaritrail/L in world)
								if(L.owner==usr)
									del(L)
							usr.Frozen=0
							usr.kubi=0
							usr.Kshibari=0
							usr.firing=0
							del(K)

							del(T)

						for(var/mob/M in oview(11,K))
							if(M==K.target)
								if(K.loc==M.loc)
									M.Frozen=1
									M.caught=1
								else
									M.Frozen=0
									M.caught=0
									M.kubi=0
									M.overlays-='kagekubi.dmi'
									M.overlays-='kagekubi.dmi'
									M.overlays-='kagekubi.dmi'
		KageKubiShibaru()
			set category = "NinJutsu"
			set name="Kage Kubi Shibaru"
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.Froze)
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
			for(var/obj/shibari/K in world)
				if(K.owner==usr)
					for(var/mob/M in world)
						if(M.caught&&!M.kubi)
							M.kubi=1
							usr.chakra-=3000
							M.overlays+='kagekubi.dmi'
							var/damage=round(usr.gen*1.3)
							if(damage<=5)
								usr<<"Your neck bind is too weak, [M] breaks out!"
								return
							else
								ROFL
									if(usr.chakra<=20000)
										M.Frozen=0
										usr.Frozen=0
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												return
									if(!M.caught)
										M.Frozen=0
										usr.Frozen=1
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												return
									if(!usr.Kshibari)
										M.Frozen=0
										usr.Frozen=1
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
									if(!M.kubi)
										M.Frozen=0
										usr.Frozen=1
										M.caught=0
										M.kubi=0
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										M.overlays-='kagekubi.dmi'
										for(var/obj/shibaritrail/T in world)
											if(T.owner==usr)
												del(T)
												usr.Frozen=0
												M.caught=0
												M.caught=0
												M.Frozen=0
												M.kubi=0
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												M.overlays-='kagekubi.dmi'
												return
									else
										usr.chakra-=3000
										view(usr)<<"[M] takes [damage] damage from Neck Bind"
										M.health-=damage
										if(M.health<=0)
											M.Death(usr)
											usr.Kshibari=0
											usr.kubi=0
											return
										sleep(40)
										goto ROFL

obj
	SBlazingHellCenter
		icon='Shadow Jutsus.dmi'
		icon_state = "Middle"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	SBlazingHellNorthWest
		icon='Shadow Jutsus.dmi'
		icon_state = "NorthWest"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	SBlazingHellNorthEast
		icon='Shadow Jutsus.dmi'
		icon_state = "NorthEast"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	SBlazingHellSouthWest
		icon='Shadow Jutsus.dmi'
		icon_state = "SouthWest"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	SBlazingHellSouthEast
		icon='Shadow Jutsus.dmi'
		icon_state = "SouthEast"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	SBlazingHellNorth
		icon='Shadow Jutsus.dmi'
		icon_state = "NNorth"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	SBlazingHellSouth
		icon='Shadow Jutsus.dmi'
		icon_state = "SSouth"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	SBlazingHellEast
		icon='Shadow Jutsus.dmi'
		icon_state = "EEast"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	SBlazingHellWest
		icon='Shadow Jutsus.dmi'
		icon_state = "WWest"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	SBlazingHellNorthTail
		icon='Shadow Jutsus.dmi'
		icon_state = "NorthTail"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	SBlazingHellSouthTail
		icon='Shadow Jutsus.dmi'
		icon_state = "SouthTail"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	SBlazingHellEastTail
		icon='Shadow Jutsus.dmi'
		icon_state = "EastTail"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	SBlazingHellWestTail
		icon='Shadow Jutsus.dmi'
		icon_state = "WestTail"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

mob/Nara
	verb
		SBlazing_Hell() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Shadow Stitching Jutsu"
			if(usr.firing) // If the mob's firing var is one...
				return
			if(usr.chakra<=10000)
				usr<<"Not enough chakra!!"
				return
			if(usr.Frozen)
				usr<<"Not while Frozen!!"
				return
			else // If the firing var isn't 1...
				usr.firing=1
				if(usr.Katon1N >= 0)
					var/obj/SBlazingHellSouth/S = new /obj/SBlazingHellSouth
					var/obj/SBlazingHellCenter/C = new /obj/SBlazingHellCenter
					var/obj/SBlazingHellNorth/N = new /obj/SBlazingHellNorth
					var/obj/SBlazingHellEast/E = new /obj/SBlazingHellEast
					var/obj/SBlazingHellWest/W = new /obj/SBlazingHellWest
					var/obj/SBlazingHellNorthEast/NE = new /obj/SBlazingHellNorthEast
					var/obj/SBlazingHellSouthEast/SE = new /obj/SBlazingHellSouthEast
					var/obj/SBlazingHellNorthWest/NW = new /obj/SBlazingHellNorthWest
					var/obj/SBlazingHellSouthWest/SW = new /obj/SBlazingHellSouthWest
					var/obj/SBlazingHellSouthTail/ST = new /obj/SBlazingHellSouthTail
					var/obj/SBlazingHellNorthTail/NT = new /obj/SBlazingHellNorthTail
					var/obj/SBlazingHellEastTail/ET = new /obj/SBlazingHellEastTail
					var/obj/SBlazingHellWestTail/WT = new /obj/SBlazingHellWestTail
					usr.Katon1N += 1
					view()<<"[usr] Says:<font color=#3d424d>S</font><font color=#4d4547>h</font><font color=#5d4741>a</font><font color=#6c4a3b>d</font><font color=#7c4d35>o</font><font color=#8c4f2f>w</font><font color=#9c5229>s</font> <font color=#bb571d>St</font><font color=#cb5a17>it</font><font color=#db5d11>ch</font><font color=#ea5f0b>ing</font>"
					N.Gowner=usr
					N.nin=usr.nin
					usr.Frozen=1
					if(N)
						N.loc = usr.loc
						N.y+=1
					if(C)
						C.loc = usr.loc
						C.y+=0
					if(S)
						S.loc = usr.loc
						S.y+=-1
					if(W)
						W.loc = usr.loc
						W.y+=0
						W.x-=1
					if(E)
						E.loc = usr.loc
						E.y+=0
						E.x+=1
					if(NE)
						NE.loc = usr.loc
						NE.y+=1
						NE.x+=1
					if(NW)
						NW.loc = usr.loc
						NW.y+=1
						NW.x+=-1
					if(SE)
						SE.loc = usr.loc
						SE.y+=-1
						SE.x+=1
					if(SW)
						SW.loc = usr.loc
						SW.y+=-1
						SW.x+=-1
					if(NT)
						NT.loc = usr.loc
						NT.y+=2
					if(ST)
						ST.loc = usr.loc
						ST.y+=-2
					if(ET)
						ET.loc = usr.loc
						ET.y+=0
						ET.x+=2
					if(WT)
						WT.loc = usr.loc
						WT.y+=0
						WT.x+=-2
					for(var/mob/M in oview(4,usr))
						if(S)
							if(M.loc==S.loc)
								var/damage=usr.gen*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Shadow Stitching Jutsu"
								M.Frozen=1
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
								sleep(25)
								M.Frozen=0
					for(var/mob/M in oview(4,usr))
						if(C)
							if(M.loc==C.loc)
								var/damage=usr.gen*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Shadow Stitching Jutsu"
								M.Frozen=1
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
								sleep(25)
								M.Frozen=0
					for(var/mob/M in oview(4,usr))
						if(N)
							if(M.loc==N.loc)
								var/damage=usr.gen*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Shadow Stitching Jutsu"
								M.Frozen=1
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
								sleep(25)
								M.Frozen=0
					for(var/mob/M in oview(4,usr))
						if(E)
							if(M.loc==E.loc)
								var/damage=usr.gen*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Shadow Stitching Jutsu"
								M.Frozen=1
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
								sleep(25)
								M.Frozen=0
					for(var/mob/M in oview(4,usr))
						if(W)
							if(M.loc==W.loc)
								var/damage=usr.gen*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Shadow Stitching Jutsu"
								M.Frozen=1
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
								sleep(25)
								M.Frozen=0
					for(var/mob/M in oview(4,usr))
						if(SW)
							if(M.loc==SW.loc)
								var/damage=usr.gen*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Shadow Stitching Jutsu"
								M.Frozen=1
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
								sleep(25)
								M.Frozen=0
					for(var/mob/M in oview(4,usr))
						if(SE)
							if(M.loc==SE.loc)
								var/damage=usr.gen*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Shadow Stitching Jutsu"
								M.Frozen=1
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
								sleep(25)
								M.Frozen=0
					for(var/mob/M in oview(4,usr))
						if(NE)
							if(M.loc==NE.loc)
								var/damage=usr.gen*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Shadow Stitching Jutsu"
								M.Frozen=1
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
								sleep(25)
								M.Frozen=0
					for(var/mob/M in oview(4,usr))
						if(NW)
							if(M.loc==NW.loc)
								var/damage=usr.gen*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Shadow Stitching Jutsu"
								M.Frozen=1
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
								sleep(25)
								M.Frozen=0
					for(var/mob/M in oview(4,usr))
						if(NT)
							if(M.loc==NT.loc)
								var/damage=usr.gen*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Shadow Stitching Jutsu"
								M.Frozen=1
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
								sleep(25)
								M.Frozen=0
					for(var/mob/M in oview(4,usr))
						if(ST)
							if(M.loc==ST.loc)
								var/damage=usr.gen*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Shadow Stitching Jutsu"
								M.Frozen=1
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
								sleep(25)
								M.Frozen=0
					for(var/mob/M in oview(4,usr))
						if(ET)
							if(M.loc==ET.loc)
								var/damage=usr.gen*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Shadow Stitching Jutsu"
								M.Frozen=1
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
								sleep(25)
								M.Frozen=0
					for(var/mob/M in oview(4,usr))
						if(WT)
							if(M.loc==WT.loc)
								var/damage=usr.gen*1.5
								view()<<"[M] has taken [damage] Damage from [usr]'s Shadow Stitching Jutsu"
								M.Frozen=1
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
								sleep(25)
								M.Frozen=0
					sleep(15)
					usr.Frozen=0
					usr.firing=0
					sleep(30)
					del(S)

