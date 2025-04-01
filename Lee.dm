
mob/Lee
	verb
		Youth(mob/M in get_step(src,NORTH))
			set category = "TaiJutsu"
			set name = "Explosion of Youth"
			if (M.inspike)
				return
			if(usr.firing)
				return
			if (M.sphere)
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
			if(M.PK==0)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
				return
			if(usr.PK==0)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [usr]"
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
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Youthful Explosion!!!</FONT>"
				var/damage=usr.tai*1.6
				usr.firing=1
				if(M)
					M.health -= damage
					M.Death(usr)
					view()<<"[M] takes [damage] damage!"
					step(M,NORTH)
					sleep(2)
					step(M,NORTH)
					sleep(2)
					step(M,NORTH)
					sleep(2)
					step(M,NORTH)
					sleep(2)
					step(M,NORTH)
					sleep(2)
					usr.loc=locate(M.x,M.y+1,M.z)
					M.health -= damage
					M.Death(usr)
					view()<<"[M] takes [damage] damage!"
					step(M,SOUTH)
					sleep(2)
					step(M,SOUTH)
					sleep(2)
					step(M,SOUTH)
					sleep(2)
					step(M,SOUTH)
					sleep(2)
					step(M,SOUTH)
					sleep(2)
					usr.loc=locate(M.x+1,M.y,M.z)
					M.health -= damage
					M.Death(usr)
					view()<<"[M] takes [damage] damage!"
					step(M,WEST)
					sleep(2)
					step(M,WEST)
					sleep(2)
					step(M,WEST)
					sleep(2)
					step(M,WEST)
					sleep(2)
					step(M,WEST)
					sleep(2)
					usr.loc=locate(M.x-1,M.y,M.z)
					M.health -= damage
					M.Death(usr)
					view()<<"[M] takes [damage] damage!"
				sleep(14)
				usr.firing=0

mob/Lee
	verb
		KonohaReppu(mob/M in get_step(src,src.dir))
			set category = "TaiJutsu"
			set name = "Konoha Renpuu"
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
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#6495ed>K</FONT><FONT COLOR=#549cf0>o</FONT><FONT COLOR=#43a3f3>n</FONT><FONT COLOR=#33abf7>o</FONT><FONT COLOR=#22b2fa>h</FONT><FONT COLOR=#11b9fd>a</FONT><FONT COLOR=#00bfff> </FONT><FONT COLOR=#20c3fb>R</FONT><FONT COLOR=#3fc8f6>e</FONT><FONT COLOR=#5fccf1>n</FONT><FONT COLOR=#7ed0eb>p</FONT><FONT COLOR=#9ed4e6>u</FONT><FONT COLOR=#bdd9e1>u</FONT><FONT COLOR=#dcdcdc>!</FONT>"
				var/damage=usr.tai*1.2
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from Konoha Renpuu!"
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
mob/Lee
	verb
		KonohaGenkurikiSenpuu()
			set category = "TaiJutsu"
			set name = "Konoha Genuriki Senpuu"
			for(var/mob/M in oview(1,usr))
				if(M.drunk&&M.Lee)
					view()<<"[M] dodges [usr]'s attack"
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
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				if (M.sphere)
					usr<<"Your attack bounces off of the sand!"
					return
				if (M.inspike)
					usr<<"Your attack bounces off of [usr]!"
					return
				if(usr.firing)
					return
				if (M.Kaiten)
					var/damage = round(usr.tai)
					if(damage <= 1)
						damage = 1
						usr <<"You attack [M] but their kaiten hakkeshou reflects the damage back at you."
						M <<"You reflect [usr]'s attack causing them to hurt themselfs."
						usr.health -= damage/2
					if(usr.health<=0)
						usr.Death(M)
						return
					else
						usr <<"You attack [M] but their kaiten hakkeshou reflects the damage back at you."
						M <<"You reflect [usr]'s attack causing them to hurt themselfs."
						usr.health -= damage
						if(usr.health<=0)
							usr.Death(M)

						return
				if (M.ingat)
					usr << "Your attack bounces off of [M] because they are in gatsuuga.."
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
				else
					var/damage = round(usr.tai*1.2)
					usr.firing=1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Konoha Genuriki Senpuu!"
					view()<<"[M] has been hit by Konoha Genuriki Senpuu for [damage] Damage"
					M.health -= damage
					if(M.health<=0)
						M.Death(usr)
					step(M,usr.dir)
					sleep(20)
					usr.firing=0
mob/Lee
	verb
		KonohaSenpuu()
			set category = "TaiJutsu"
			set name = "Konoha Senpuu"
			for(var/mob/M in oview(1,usr))
				if(M.drunk&&M.Lee)
					view()<<"[M] dodges [usr]'s attack"
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
				if (M.sphere)
					usr<<"Your attack bounces off of the sand!"
					return
				if (M.inspike)
					usr<<"Your attack bounces off of [usr]!"
					return
				if(usr.firing)
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
				if (M.Kaiten)
					var/damage = round(usr.tai)
					if(damage <= 1)
						damage = 1
						usr <<"You attack [M] but their kaiten hakkeshou reflects the damage back at you."
						M <<"You reflect [usr]'s attack causing them to hurt themselfs."
						usr.health -= damage/2
					if(usr.health<=0)
						usr.Death(M)
						return
					else
						usr <<"You attack [M] but their kaiten hakkeshou reflects the damage back at you."
						M <<"You reflect [usr]'s attack causing them to hurt themselfs."
						usr.health -= damage
						if(usr.health<=0)
							usr.Death(M)

						return
				if (M.ingat)
					usr << "Your attack bounces off of [M] because they are in gatsuuga.."
					return
				else
					var/damage = round(usr.tai*1.3)
					usr.firing=1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#6495ed>K</FONT><FONT COLOR=#549cf0>o</FONT><FONT COLOR=#43a3f3>n</FONT><FONT COLOR=#33abf7>o</FONT><FONT COLOR=#22b2fa>h</FONT><FONT COLOR=#11b9fd>a</FONT><FONT COLOR=#00bfff> </FONT><FONT COLOR=#20c3fb>S</FONT><FONT COLOR=#3fc8f6>e</FONT><FONT COLOR=#5fccf1>n</FONT><FONT COLOR=#7ed0eb>p</FONT><FONT COLOR=#9ed4e6>u</FONT><FONT COLOR=#bdd9e1>u</FONT><FONT COLOR=#dcdcdc>!</FONT>"
					view()<<"[M] has been hit by Konoha Senpuu for [damage] Damage"
					M.health -= damage
					if(M.health<=0)
						M.Death(usr)
					step(M,usr.dir)
					sleep(20)
					usr.firing=0


mob/Lee
	verb
		OmoteRenge(mob/M in get_step(src,SOUTH))
			set name = "Omote Renge"
			set category = "TaiJutsu"
			if (M.ingat||M.intank)
				return
			if (M.sphere)
				return
			if (M.Kaiten)
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
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.health <= 1000)
				usr<<"Not enough health"
				return
			if (M.inspike)
				return
			if(!usr.gate1)
				usr<<"You must have atleast the first gate open to use this!"
				return
			if(usr.firing)
				return
			if(usr.jailtime)
				return
			else
				usr.firing=1
				var/damage = round(usr.tai*1.4)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#90ee90>O</FONT><FONT COLOR=#9ae69a>m</FONT><FONT COLOR=#a4dca4>o</FONT><FONT COLOR=#add3ad>t</FONT><FONT COLOR=#b7c9b7>e</FONT><FONT COLOR=#c0c0c0> </FONT><FONT COLOR=#b2b2b2>R</FONT><FONT COLOR=#a4a4a4>e</FONT><FONT COLOR=#959595>n</FONT><FONT COLOR=#868686>g</FONT><FONT COLOR=#787878>e</FONT><FONT COLOR=#696969>!</FONT>"
				usr.health -= usr.health/3
				usr.overlays += 'omote.dmi'
				if(M)
					usr.loc=M.loc
					step(M,SOUTH)
					usr.loc=M.loc
					sleep(3)
					step(M,SOUTH)
					usr.loc=M.loc
					sleep(3)
					step(M,SOUTH)
					usr.loc=M.loc
					sleep(3)
					step(M,SOUTH)
					usr.loc=M.loc
					sleep(3)
					step(M,SOUTH)
					usr.loc=M.loc
					M.health -= damage
				view()<<"[usr] does [damage] to [M] with Omote Renge!"
				M.Death(usr)
				usr.Move_Delay = 5
				usr.overlays-='omote.dmi'
				usr.overlays-='omote.dmi'
				usr.overlays-='omote.dmi'
				usr.overlays-='omote.dmi'
				usr.firing=0
				sleep(90)
				usr.Move_Delay = 0
mob/Lee
	verb
		Dynamic()
			set category = "NinJutsu"
			set name = "Dainamikku Entori"
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
			if(usr.firing)
				return
			if(usr.chakra<=80000)
				usr<<"You don't have enough chakra!!"
				return
			else
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Dainamikku Entori!!!</FONT>"
				usr.chakra -= 25000
				usr.firing=1
				if(usr.dir==NORTH)
					usr.loc=locate(usr.x,usr.y+1,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y+2,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y+3,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y+4,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y+5,usr.z)
					sleep(1)
				if(usr.dir==SOUTH)
					usr.loc=locate(usr.x,usr.y-1,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y-2,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y-3,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y-4,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y-5,usr.z)
					sleep(1)
				if(usr.dir==EAST)
					usr.loc=locate(usr.x+1,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x+2,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x+3,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x+4,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x+5,usr.y,usr.z)
					sleep(1)
				if(usr.dir==WEST)
					usr.loc=locate(usr.x-1,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x-2,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x-3,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x-4,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x-5,usr.y,usr.z)
					sleep(1)
				sleep(14)
				usr.firing=0

mob/Lee
	verb
		UraRenge(mob/M in get_step(src,SOUTH))
			set name = "Ura Renge"
			set category = "TaiJutsu"
			if (M.ingat||M.intank)
				return
			if (M.inspike)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.health <= 1000)
				usr<<"Not enough health"
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
			if (M.sphere == 1)
				return
			if (M.Kaiten == 1)
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
			if(usr.gate3 == 0)
				usr<<"You must have atleast the third gate open to use this!"
			if(usr.firing)
				return
			if(usr.jailtime)
				return
			else
				usr.firing=1
				usr.health -= 46500
				var/obj/Uratrail/K = new /obj/Uratrail
				var/obj/Uratrail/F = new /obj/Uratrail
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f5f5f5>U</FONT><FONT COLOR=#e9e9e9>r</FONT><FONT COLOR=#dbdbdb>a</FONT><FONT COLOR=#cecece> </FONT><FONT COLOR=#c0c0c0>R</FONT><FONT COLOR=#cbc6be>e</FONT><FONT COLOR=#d6ccbb>n</FONT><FONT COLOR=#e0d3b9>g</FONT><FONT COLOR=#ebd9b6>e</FONT><FONT COLOR=#f5deb3>!</FONT>"
				var/damage = round(usr.tai*1.6)
				M.overlays += 'ura.dmi'
				M.health -= damage
				view()<<"[usr] does [damage] to [M] with Ura Renge!"
				if(M.health <= 0)
					M.Death(usr)
					if(M)
						M.overlays -= 'ura.dmi'
						usr.firing=0
					return
				M.Death(usr)
				sleep(3)
				K.loc = M.loc
				step(M,SOUTH)
				sleep(3)
				F.loc = M.loc
				step(M,SOUTH)
				sleep(5)
				del(F)
				step(M,NORTH)
				sleep(5)
				del(K)
				step(M,NORTH)
				if(M)
					M.health -= damage
					view()<<"[usr] does [damage] to [M] with Ura Renge!"
					M.Death(usr)
					M.overlays -= 'ura.dmi'
				usr.Move_Delay = 5
				usr.firing=0
				sleep(50)
				usr.Move_Delay=0

mob/Lee
	verb
		Lotus()
			set category = "TaiJutsu"
			set name = "Lotus"
			if(usr.LGS)
				usr<<"You Must Wait 5 Seconds Between Each Lotus"
				return
			if(usr.firing||usr.Kaiten||usr.rank=="Student")
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
				if(usr.rank=="Genin"||usr.rank=="Chúnin")switch(input("What gate would you like to open?","Gates") in list ("Initial Gate","Heal Gate","Life Gate","Harm Gate","Limit Gate","Close gates","Close Window"))
					if("Initial Gate")
						if(!usr.gate1&&!usr.LGS)
							if(usr.lotusS >= 10)
								view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Initial gate open!!"
								usr.lotusS += 1
								usr.health -= usr.health/2
								usr.tai = usr.tai*1.1
								usr.Move_Delay =Speed2
								usr.overlays += 'firstgate.dmi'
								usr.Ldamage()
								usr.gate1 = 1
								usr.LGS = 1
								sleep(50)
								usr.LGS = 0
								return
							else
								usr<<"<B><font color = blue>You failed to open the limit gate!"
								usr.LGS = 0
								usr.gate8 = 0
								usr.gate7 = 0
								usr.gate6 = 0
								usr.gate5 = 0
								usr.gate4 = 0
								usr.gate3 = 0
								usr.gate2 = 0
								usr.gate1 = 0
								usr.tai = usr.Mtai
								usr.overlays -= 'firstgate.dmi'
								usr.Move_Delay = Speed1
								return
						else
							view()<<"The initial gate is already open!"
					if("Heal Gate")
						if(!usr.gate2&&!usr.LGS)
							if(usr.gate1)
								if(usr.lotusS >= 17)
									usr.lotusS += 1
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Heal gate open!!"
									usr.health = usr.Mhealth
									usr.tai = usr.tai*1.2
									usr.Move_Delay =Speed3
									usr.overlays -= 'firstgate.dmi'
									usr.overlays += 'secondgate.dmi'
									usr.Ldamage()
									usr.gate2 = 1
									usr.LGS = 1
									sleep(50)
									usr.LGS = 0
									return
								else
									usr.random = rand (1,4)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Heal gate open!!"
										usr.lotusS += 1
										usr.health = usr.Mhealth
										usr.tai = usr.tai*1.2
										usr.Move_Delay =Speed3
										usr.overlays -= 'firstgate.dmi'
										usr.overlays += 'secondgate.dmi'
										usr.Ldamage()
										usr.gate2 = 1
										usr.LGS = 1
										sleep(50)
										usr.LGS = 0
										return
									else
										usr<<"<B><font color = blue>You failed to open the limit gate!"
										usr.LGS = 0
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'firstgate.dmi'
										usr.Move_Delay = Speed1
										return
							else
								view()<<"The Initial gate must be open first!"
						else
							view()<<"The Heal gate is already open!"
					if("Life Gate")
						if(!usr.gate3&&!usr.LGS)
							if(usr.gate2)
								if(usr.lotusS >= 27)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Life gate open!!"
									usr.lotusS += 1
									usr.tai = usr.tai*1.3
									usr.overlays -= 'secondgate.dmi'
									usr.overlays += 'thirdgate.dmi'
									usr.Move_Delay =Speed3
									usr.gate3 = 1
									usr.Ldamage()
									usr.LGS = 1
									sleep(50)
									usr.LGS = 0
									return
								else
									usr.random = rand (1,4)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Life gate open!!"
										usr.lotusS += 1
										usr.tai = usr.tai*1.3
										usr.overlays -= 'secondgate.dmi'
										usr.overlays += 'thirdgate.dmi'
										usr.Move_Delay =Speed3
										usr.gate3 = 1
										usr.Ldamage()
										usr.LGS = 1
										sleep(50)
										usr.LGS = 0
										return
									else
										usr<<"<B><font color = blue>You failed to open the limit gate!"
										usr.LGS = 0
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'secondgate.dmi'
										usr.Move_Delay = Speed1
										return
							else
								view()<<"The heal gate must be open first!"
						else
							view()<<"The Life gate is already open!"
					if("Harm Gate")
						if(!usr.gate4&&!usr.LGS)
							if(usr.gate3)
								if(usr.lotusS >= 40)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Harm gate open!!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*1.4
									usr.health += 1000
									usr.overlays -= 'thirdgate.dmi'
									usr.overlays += 'fourthgate.dmi'
									usr.Move_Delay =Speed4
									usr.gate4 = 1
									usr.Ldamage()
									usr.LGS = 1
									sleep(50)
									usr.LGS = 0
									return
								else
									usr.random = rand (1,6)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Harm gate open!!"
										usr.lotusS += 1
										usr.tai = usr.Mtai*1.4
										usr.health += 1000
										usr.overlays -= 'thirdgate.dmi'
										usr.overlays += 'fourthgate.dmi'
										usr.Move_Delay =Speed4
										usr.gate4 = 1
										usr.Ldamage()
										usr.LGS = 1
										sleep(50)
										usr.LGS = 0
										return
									else
										usr<<"<B><font color = blue>You failed to open the limit gate!"
										usr.LGS = 0
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.overlays -= 'fourthgate.dmi'
										usr.tai = usr.Mtai
										usr.Move_Delay = Speed1
										return
							else
								usr<<"You must first open the life gate."
						else
							view()<<"The Harm gate is already open!"
					if("Limit Gate")
						if(!usr.gate5&&!usr.LGS)
							if(usr.gate4)
								if(usr.lotusS >= 65)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Limit gate open!!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*1.5
									usr.overlays -= 'fourthgate.dmi'
									usr.overlays += 'fifthgate.dmi'
									usr.Move_Delay =Speed5
									usr.gate5 = 1
									usr.Ldamage()
									usr.LGS = 1
									sleep(50)
									usr.LGS = 0
									return
								else
									usr.random = rand (1,10)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Limit gate open!!"
										usr.lotusS += 1
										usr.tai = usr.Mtai*1.5
										usr.overlays -= 'fourthgate.dmi'
										usr.overlays += 'fifthgate.dmi'
										usr.Move_Delay =Speed5
										usr.gate5 = 1
										usr.Ldamage()
										usr.LGS = 1
										sleep(50)
										usr.LGS = 0
										return
									else
										usr<<"<B><font color = blue>You failed to open the limit gate!"
										usr.LGS = 0
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'fifthgate.dmi'
										usr.Move_Delay = Speed1
										return
							else
								usr<<"You must first open the harm gate."
						else
							usr<<"The Limit gate is already open!"
							return
					if("Close gates")
						usr<<"<B><font color = blue>You stop using lotus."
						usr.LGS = 0
						usr.gate8 = 0
						usr.gate7 = 0
						usr.gate6 = 0
						usr.gate5 = 0
						usr.gate4 = 0
						usr.gate3 = 0
						usr.gate2 = 0
						usr.gate1 = 0
						usr.tai = usr.Mtai
						usr.Move_Delay = Speed1
						usr.overlays -= 'firstgate.dmi'
						usr.overlays -= 'secondgate.dmi'
						usr.overlays -= 'thirdgate.dmi'
						usr.overlays -= 'fourthgate.dmi'
						usr.overlays -= 'fifthgate.dmi'
						usr.overlays -= 'sixthgate.dmi'
						usr.overlays -= 'seventhgate.dmi'
						usr.overlays -= 'eighthgate.dmi'
				if(usr.rank=="Jounin"||usr.rank=="Hunter"||usr.rank=="Missing"||usr.rank=="Sannin"||usr.rank=="Anbu"||usr.rank=="Anbu Captain"||usr.rank=="Police"||usr.rank=="Kage")switch(input("What gate would you like to open?","Gates") in list ("Initial Gate","Heal Gate","Life Gate","Harm Gate","Limit Gate","View Gate","Wonder Gate","Death Gate","Close gates","Close Window"))
					if("Initial Gate")
						if(!usr.gate1&&!usr.LGS)
							if(usr.lotusS >= 10)
								view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Initial gate open!!"
								usr.lotusS += 1
								usr.health -= usr.health/2
								usr.tai = usr.Mtai*1.1
								usr.Move_Delay =Speed2
								usr.overlays += 'firstgate.dmi'
								usr.Ldamage()
								usr.gate1 = 1
								usr.LGS = 1
								sleep(50)
								usr.LGS = 0
								return
							else
								usr.random = rand (1,4)
								if(usr.random == 1||usr.random == 4)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Initial gate open!!"
									usr.lotusS += 1
									usr.health -= usr.health/2
									usr.tai = usr.Mtai*1.1
									usr.Move_Delay =Speed2
									usr.overlays += 'firstgate.dmi'
									usr.Ldamage()
									usr.gate1 = 1
									usr.LGS = 1
									sleep(50)
									usr.LGS = 0
									return
								else
									usr<<"<B><font color = blue>You failed to open the initial gate!"
									usr.LGS = 0
									usr.gate8 = 0
									usr.gate7 = 0
									usr.gate6 = 0
									usr.gate5 = 0
									usr.gate4 = 0
									usr.gate3 = 0
									usr.gate2 = 0
									usr.gate1 = 0
									usr.tai = usr.Mtai
									usr.overlays -= 'firstgate.dmi'
									usr.Move_Delay = Speed1
									return
						else
							view()<<"The initial gate is already open!"
					if("Heal Gate")
						if(!usr.gate2&&!usr.LGS)
							if(usr.gate1)
								if(usr.lotusS >= 17)
									usr.lotusS += 1
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Heal gate open!!"
									usr.health = usr.Mhealth
									usr.tai = usr.Mtai*1.2
									usr.Move_Delay =Speed3
									usr.overlays -= 'firstgate.dmi'
									usr.overlays += 'secondgate.dmi'
									usr.Ldamage()
									usr.gate2 = 1
									usr.LGS = 1
									sleep(50)
									usr.LGS = 0
									return
								else
									usr.random = rand (1,4)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Heal gate open!!"
										usr.lotusS += 1
										usr.health = usr.Mhealth
										usr.tai = usr.Mtai*1.2
										usr.Move_Delay =Speed3
										usr.overlays -= 'firstgate.dmi'
										usr.overlays += 'secondgate.dmi'
										usr.Ldamage()
										usr.gate2 = 1
										usr.LGS = 1
										sleep(50)
										usr.LGS = 0
										return
									else
										usr<<"<B><font color = blue>You failed to open the heal gate!"
										usr.LGS = 0
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'firstgate.dmi'
										usr.Move_Delay = Speed1
										return
							else
								view()<<"The Initial gate must be open first!"
						else
							view()<<"The Heal gate is already open!"
					if("Life Gate")
						if(!usr.gate3&&!usr.LGS)
							if(usr.gate2)
								if(usr.lotusS >= 27)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Life gate open!!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*1.3
									usr.overlays -= 'secondgate.dmi'
									usr.overlays += 'thirdgate.dmi'
									usr.Move_Delay =Speed3
									usr.gate3 = 1
									usr.Ldamage()
									usr.LGS = 1
									sleep(50)
									usr.LGS = 0
									return
								else
									usr.random = rand (1,4)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Life gate open!!"
										usr.lotusS += 1
										usr.tai = usr.Mtai*1.3
										usr.overlays -= 'secondgate.dmi'
										usr.overlays += 'thirdgate.dmi'
										usr.Move_Delay =Speed3
										usr.gate3 = 1
										usr.Ldamage()
										usr.LGS = 1
										sleep(50)
										usr.LGS = 0
										return
									else
										usr<<"<B><font color = blue>You failed to open the life gate!"
										usr.LGS = 0
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'secondgate.dmi'
										usr.Move_Delay = Speed1
										return
							else
								view()<<"The heal gate must be open first!"
						else
							view()<<"The Life gate is already open!"
					if("Harm Gate")
						if(!usr.gate4&&!usr.LGS)
							if(usr.gate3)
								if(usr.lotusS >= 40)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Harm gate open!!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*1.4
									usr.health += 1000
									usr.overlays -= 'thirdgate.dmi'
									usr.overlays += 'fourthgate.dmi'
									usr.Move_Delay =Speed4
									usr.gate4 = 1
									usr.Ldamage()
									usr.LGS = 1
									sleep(50)
									usr.LGS = 0
									return
								else
									usr.random = rand (1,6)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Harm gate open!!"
										usr.lotusS += 1
										usr.tai = usr.Mtai*1.4
										usr.health += 1000
										usr.overlays -= 'thirdgate.dmi'
										usr.overlays += 'fourthgate.dmi'
										usr.Move_Delay =Speed4
										usr.gate4 = 1
										usr.Ldamage()
										usr.LGS = 1
										sleep(50)
										usr.LGS = 0
										return
									else
										usr<<"<B><font color = blue>You failed to open the harm gate!"
										usr.LGS = 0
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.overlays -= 'thirdgate.dmi'
										usr.tai = usr.Mtai
										usr.Move_Delay = Speed1
										return
							else
								usr<<"You must first open the life gate."
						else
							view()<<"The Harm gate is already open!"
					if("Limit Gate")
						if(!usr.gate5&&!usr.LGS)
							if(usr.gate4)
								if(usr.lotusS >= 65)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Limit gate open!!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*1.5
									usr.overlays -= 'fourthgate.dmi'
									usr.overlays += 'fifthgate.dmi'
									usr.Move_Delay =Speed5
									usr.gate5 = 1
									usr.Ldamage()
									usr.LGS = 1
									sleep(50)
									usr.LGS = 0
									return
								else
									usr.random = rand (1,10)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Limit gate open!!"
										usr.lotusS += 1
										usr.tai = usr.Mtai*1.5
										usr.overlays -= 'fourthgate.dmi'
										usr.overlays += 'fifthgate.dmi'
										usr.Move_Delay =Speed5
										usr.gate5 = 1
										usr.Ldamage()
										usr.LGS = 1
										sleep(50)
										usr.LGS = 0
										return
									else
										usr<<"<B><font color = blue>You failed to open the limit gate!"
										usr.LGS = 0
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'fourthgate.dmi'
										usr.Move_Delay = Speed1
										return
							else
								usr<<"You must first open the harm gate."
						else
							usr<<"The Limit gate is already open!"
							return
					if("View Gate")
						if(!usr.gate6&&!usr.LGS)
							if(usr.gate5)
								if(usr.lotusS >= 100)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: View gate open!!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*1.6
									usr.overlays -= 'fifthgate.dmi'
									usr.overlays += 'sixthgate.dmi'
									usr.Move_Delay =Speed5
									usr.gate6 = 1
									usr.Ldamage()
									usr.LGS = 1
									sleep(50)
									usr.LGS = 0
									return
								else
									usr.random = rand (1,10)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: View gate open!!"
										usr.lotusS += 1
										usr.tai = usr.Mtai*1.6
										usr.overlays -= 'fifthgate.dmi'
										usr.overlays += 'sixthgate.dmi'
										usr.Move_Delay =Speed5
										usr.gate7 = 1
										usr.Ldamage()
										usr.LGS = 1
										sleep(50)
										usr.LGS = 0
										return
									else
										usr<<"<B><font color = blue>You failed to open the View gate!"
										usr.LGS = 0
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'fifthgate.dmi'
										usr.Move_Delay = Speed1
										return
							else
								usr<<"You must first open the limit gate."
						else
							usr<<"The View gate is already open!"
							return
					if("Wonder Gate")
						if(!usr.gate7&&!usr.LGS)
							if(usr.gate6)
								if(usr.lotusS >= 300)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Wonder gate open!!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*1.7
									usr.overlays -= 'sixthgate.dmi'
									usr.overlays += 'seventhgate.dmi'
									usr.Move_Delay =Speed5
									usr.gate7 = 1
									usr.Ldamage()
									usr.LGS = 1
									sleep(50)
									usr.LGS = 0
									return
								else
									usr.random = rand (1,10)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Wonder gate open!!"
										usr.lotusS += 1
										usr.tai = usr.Mtai*1.7
										usr.overlays -= 'sixthgate.dmi'
										usr.overlays += 'seventhgate.dmi'
										usr.Move_Delay =Speed5
										usr.gate7 = 1
										usr.Ldamage()
										usr.LGS = 1
										sleep(50)
										usr.LGS = 0
										return
									else
										usr<<"<B><font color = blue>You failed to open the Wonder gate!"
										usr.LGS = 0
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'sixthgate.dmi'
										usr.Move_Delay = Speed1
										return
							else
								usr<<"You must first open the view gate."
						else
							usr<<"The Wonder gate is already open!"
							return
					if("Death Gate")
						if(!usr.gate8&&!usr.LGS)
							if(usr.gate7)
								if(usr.lotusS >= 500)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Death Gate Open!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*1.8
									usr.overlays -= 'seventhgate.dmi'
									usr.overlays += 'eighthgate.dmi'
									usr.verbs += new /mob/Lee/verb/Youth()
									usr.Move_Delay = Speed5
									usr.gate8 = 1
									usr.Ldamage()
									usr.LGS = 1
									sleep(50)
									usr.LGS = 0
									return
								else
									usr.random = rand (1,10)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Death Gate Open!"
										usr.lotusS += 1
										usr.tai = usr.Mtai*1.8
										usr.overlays -= 'seventhgate.dmi'
										usr.overlays += 'eighthgate.dmi'
										usr.verbs += new /mob/Lee/verb/Youth()
										usr.Move_Delay =Speed5
										usr.gate8 = 1
										usr.Ldamage()
										usr.LGS = 1
										sleep(50)
										usr.LGS = 0
										return
									else
										usr<<"<B><font color = blue>You failed to open the Death gate!"
										usr.LGS = 0
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'seventhgate.dmi'
										usr.Move_Delay = Speed1
										return
							else
								usr<<"You must first open the view gate."
						else
							usr<<"The Wonder gate is already open!"
							return
					if("Close gates")
						usr<<"<B><font color = blue>You stop using lotus."
						usr.LGS = 0
						usr.gate8 = 0
						usr.gate7 = 0
						usr.gate6 = 0
						usr.gate5 = 0
						usr.gate4 = 0
						usr.gate3 = 0
						usr.gate2 = 0
						usr.gate1 = 0
						usr.tai = usr.Mtai
						usr.Move_Delay = Speed1
						usr.overlays -= 'firstgate.dmi'
						usr.overlays -= 'secondgate.dmi'
						usr.overlays -= 'thirdgate.dmi'
						usr.overlays -= 'fourthgate.dmi'
						usr.overlays -= 'fifthgate.dmi'
						usr.overlays -= 'sixthgate.dmi'
						usr.overlays -= 'seventhgate.dmi'
						usr.overlays -= 'eighthgate.dmi'
						usr.verbs -= new /mob/Lee/verb/Youth()
mob
	proc
		lotusoff()
			if(src.health <= 1)
				src.gate8 = 0
				src.gate7 = 0
				src.gate6 = 0
				src.gate5 = 0
				src.gate4 = 0
				src.gate3 = 0
				src.gate2 = 0
				src.gate1 = 0
				src.tai = usr.Mtai
				src.Move_Delay = Speed1
				src.overlays -= 'lotus.dmi'
				src.overlays -= 'firstgate.dmi'
				src.overlays -= 'secondgate.dmi'
				src.overlays -= 'thirdgate.dmi'
				src.overlays -= 'fourthgate.dmi'
				src.overlays -= 'fifthgate.dmi'
				src.overlays -= 'sixthgate.dmi'
				src.overlays -= 'seventhgate.dmi'
				src.overlays -= 'eighthgate.dmi'
				usr.verbs -= new /mob/Lee/verb/Youth()

mob
	proc
		Ldamage()
			if(src.gate2&&!src.gate3)
				src.health -= 3000
				src.lotusoff()
				if(src.health<=0)
					src.Death(usr)
				sleep(45)
				src.Ldamage()
			if(src.gate3&&!src.gate4)
				src.health -= 1500
				src.lotusoff()
				if(src.health<=0)
					src.Death(usr)
				sleep(40)
				src.Ldamage()
			if(src.gate4&&!src.gate5)
				src.health -= 4350
				src.lotusoff()
				if(src.health<=0)
					src.Death(usr)
				sleep(37)
				src.Ldamage()
			if(src.gate5&&!src.gate6)
				src.health -= 6150
				src.lotusoff()
				if(src.health<=0)
					src.Death(usr)
				sleep(35)
				src.Ldamage()
			if(src.gate6&&!src.gate7)
				src.health -= 7500
				src.lotusoff()
				if(src.health<=0)
					src.Death(usr)
				sleep(35)
				src.Ldamage()
			if(src.gate7&&!src.gate8)
				src.health -= 9550
				src.lotusoff()
				if(src.health<=0)
					src.Death(usr)
				sleep(35)
				src.Ldamage()
			if(src.gate8)
				src.health -= 10200
				src.lotusoff()
				if(src.health<=0)
					src.Death(usr)
				sleep(35)
				src.Ldamage()
			else
				return


obj
	Uratrail
		icon = 'ura.dmi'
		icon_state = "trail"
		density = 1