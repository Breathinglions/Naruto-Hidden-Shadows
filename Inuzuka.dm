mob/Inuzuka
	verb
		Tame(mob/pet/P in oview(1),mob/wolf/P in oview(1))
			set category = "Dog"
			if(P.client){usr<<"You Cannot Tame People";return}
			if(istype(P,/mob/npc))
				usr<<"You can not tame NPCs"
				return
			if(istype(P,/mob/Spawn))
				usr<<"You can not tame NPCs"
				return
			if(!usr.hasdog)
				if(!P.named&&!P.owned)
					usr.dog = P
					P.loc = usr
					P.owner = usr
					P.owned = 1
					P.tai = usr.tai
					P.Mhealth = usr.Mhealth
					P.name = input("Please select a name for your new dog.") as text
					P.named = 1
					P.NPC = 0
					usr.hasdog = 1
					usr.dogname = P.name
					usr.tai = P.tai
					usr.Mhealth = P.Mhealth
					usr.verbs += typesof(/mob/dogstuff/verb)
					usr.SaveK()
				else
					usr<<"This dog already belongs to someone."
					return
			else
				usr<<"You already have a dog."
				return

mob/Inuzuka
	verb
		Tsuuga()
			set category = "TaiJutsu"
			set name = "Tsuuga"
			if(usr.ingat||usr.Kaiten||usr.firing)
				return
			if(usr.Jujin)
				usr<<"Not While In Jujin"
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
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
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
			else .
				if(GatN >= 35)
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#708090>T</FONT><FONT COLOR=#a0abb5>s</FONT><FONT COLOR=#d0d5db>u</FONT><FONT COLOR=#ffffff>u</FONT><FONT COLOR=#d5d5d5>g</FONT><FONT COLOR=#ababab>a</FONT><FONT COLOR=#808080>!</FONT>"
					usr.GatN += 1
					usr.ingat = 1
					usr.overlays+='gatsuuga.dmi'
					usr.firing = 1
					sleep(30)
					usr.ingat = 0
					usr.overlays-='gatsuuga.dmi'
					usr.overlays-='gatsuuga.dmi'
					usr.overlays-='gatsuuga.dmi'
					usr.Move_Delay = usr.Savedspeed
					usr.firing = 0
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#708090>T</FONT><FONT COLOR=#a0abb5>s</FONT><FONT COLOR=#d0d5db>u</FONT><FONT COLOR=#ffffff>u</FONT><FONT COLOR=#d5d5d5>g</FONT><FONT COLOR=#ababab>a</FONT><FONT COLOR=#808080>!</FONT>"
						usr.GatN += 1
						usr.ingat = 1
						usr.overlays+='gatsuuga.dmi'
						usr.firing = 1
						usr.overlays += 'gatsuuga.dmi'
						sleep(30)
						usr.ingat = 0
						usr.overlays-='gatsuuga.dmi'
						usr.overlays-='gatsuuga.dmi'
						usr.overlays-='gatsuuga.dmi'
						usr.firing = 0
mob/Inuzuka
	verb
		Gatsuuga()
			set category = "TaiJutsu"
			set name = "Gatsuuga"
			if(usr.ingat||usr.Kaiten||usr.firing)
				return
			if(usr.inso)
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
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
			else
				for(var/mob/pet/P in oview(11,usr))
					if(!usr.Jujin)
						usr<<"You need to use Juujin Bunshin No Jutsu first!"
						return
					view(usr)<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Gatsuuga!"
					usr.GatN += 1
					usr.ingat = 1
					usr.overlays+='gatsuuga.dmi'
					usr.firing = 1
					P.ingat = 1
					P.overlays = null
					P.icon='gatsuuga.dmi'
					sleep(30)
					usr.firing=0
					usr.Jujin=0
					usr.overlays-='gatsuuga.dmi'
					usr.ingat = 0
					P.firing=0
					P.Jujin=0
					P.icon = 'Animals.dmi'
					P.icon_state = "Dog"
					P.overlays = null
					P.ingat = 0
					return
				for(var/mob/wolf/P in oview(11,usr))
					if(!usr.Jujin)
						usr<<"You need to use Juujin Bunshin No Jutsu first!"
						return
					view(usr)<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Gatsuuga!"
					usr.GatN += 1
					usr.ingat = 1
					usr.overlays+='gatsuuga.dmi'
					usr.firing = 1
					P.ingat = 1
					P.overlays = null
					P.icon='gatsuuga.dmi'
					sleep(30)
					usr.firing=0
					usr.Jujin=0
					usr.overlays-='gatsuuga.dmi'
					usr.ingat = 0
					P.firing=0
					P.Jujin=0
					P.icon = 'Animals.dmi'
					P.icon_state = "Wolf"
					P.overlays = null
					P.ingat = 0
mob/Inuzuka
	verb
		Garouga()
			set category = "TaiJutsu"
			set name = "Garouga"
			if(usr.ingat == 1||usr.Kaiten == 1||usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.Froze)
				usr<<"Your Frozen"
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
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			else .
				if(garN >= 145)
					if(usr.inso)
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>G</FONT><FONT COLOR=#afdff2>a</FONT><FONT COLOR=#d8eff9>r</FONT><FONT COLOR=#ffffff>o</FONT><FONT COLOR=#c0f0ff>u</FONT><FONT COLOR=#80e0ff>g</FONT><FONT COLOR=#40cfff>a</FONT><FONT COLOR=#00bfff>!</FONT>"
						usr.garN += 1
						usr.ingar = 1
						usr.overlays+='Garouga .dmi'
						usr.firing = 1
						sleep(30)
						usr.overlays-='Garouga .dmi'
						usr.ingar = 0
						usr.firing = 0
					else
						usr<<"You must be in soutourou to use Garouga."
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						if(usr.inso)
							view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>G</FONT><FONT COLOR=#afdff2>a</FONT><FONT COLOR=#d8eff9>r</FONT><FONT COLOR=#ffffff>o</FONT><FONT COLOR=#c0f0ff>u</FONT><FONT COLOR=#80e0ff>g</FONT><FONT COLOR=#40cfff>a</FONT><FONT COLOR=#00bfff>!</FONT>"
							usr.garN += 1
							usr.ingar = 1
							usr.overlays+='Garouga .dmi'
							usr.firing = 1
							sleep(30)
							usr.overlays-='Garouga .dmi'
							usr.ingar = 0
							usr.firing = 0
						else
							usr<<"You must be in soutourou to use Garouga."

mob/Inuzuka
	verb
		JuujinBunshin() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Juujin Bunshin No Jutsu"
			usr.Handseals()
			if(usr.firing) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
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
				if(JuU >= 11)
					for(var/mob/pet/M in oview(6))
						if(M.owner == usr)
							usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
							usr.move = 0 // Disables the mob's movement
							usr.chakra -= 15
							usr.Jujin=1
							usr.JuU += 1
							sleep(3)
							usr.move = 1
							usr.Chakragain()
							usr.firing = 0
							M.icon = usr.icon
							flick("smoke2",M)
							M.overlays += usr.overlays
							view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f4a460>J</FONT><FONT COLOR=#ee9a5c>u</FONT><FONT COLOR=#e68f57>u</FONT><FONT COLOR=#df8352>j</FONT><FONT COLOR=#d8784d>i</FONT><FONT COLOR=#d16d48>n</FONT><FONT COLOR=#c96243> </FONT><FONT COLOR=#c2573e>B</FONT><FONT COLOR=#bb4c39>u</FONT><FONT COLOR=#b44034>n</FONT><FONT COLOR=#ac352f>s</FONT><FONT COLOR=#a52a2a>h</FONT><FONT COLOR=#a62a2a>i</FONT><FONT COLOR=#a72a2a>n</FONT><FONT COLOR=#a92929> </FONT><FONT COLOR=#aa2828>N</FONT><FONT COLOR=#ab2727>o</FONT><FONT COLOR=#ac2727> </FONT><FONT COLOR=#ad2626>J</FONT><FONT COLOR=#ae2525>u</FONT><FONT COLOR=#b02424>t</FONT><FONT COLOR=#b12424>s</FONT><FONT COLOR=#b22323>u</FONT><FONT COLOR=#b22222>!</FONT>"
							sleep(600)
							M.overlays =null
							M.icon = 'Animals.dmi'
							M.icon_state = "Dog"
							usr.Jujin = 0
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
					for(var/mob/wolf/M in oview(6))
						if(M.owner == usr)
							usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
							usr.move = 0 // Disables the mob's movement
							usr.chakra -= 15
							usr.Jujin=1
							usr.JuU += 1
							sleep(3)
							usr.move = 1
							usr.Chakragain()
							usr.firing = 0
							M.icon = usr.icon
							flick("smoke2",M)
							M.overlays += usr.overlays
							view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f4a460>J</FONT><FONT COLOR=#ee9a5c>u</FONT><FONT COLOR=#e68f57>u</FONT><FONT COLOR=#df8352>j</FONT><FONT COLOR=#d8784d>i</FONT><FONT COLOR=#d16d48>n</FONT><FONT COLOR=#c96243> </FONT><FONT COLOR=#c2573e>B</FONT><FONT COLOR=#bb4c39>u</FONT><FONT COLOR=#b44034>n</FONT><FONT COLOR=#ac352f>s</FONT><FONT COLOR=#a52a2a>h</FONT><FONT COLOR=#a62a2a>i</FONT><FONT COLOR=#a72a2a>n</FONT><FONT COLOR=#a92929> </FONT><FONT COLOR=#aa2828>N</FONT><FONT COLOR=#ab2727>o</FONT><FONT COLOR=#ac2727> </FONT><FONT COLOR=#ad2626>J</FONT><FONT COLOR=#ae2525>u</FONT><FONT COLOR=#b02424>t</FONT><FONT COLOR=#b12424>s</FONT><FONT COLOR=#b22323>u</FONT><FONT COLOR=#b22222>!</FONT>"
							sleep(600)
							M.overlays =null
							M.icon = 'Animals.dmi'
							M.icon_state = "Wolf"
							usr.Jujin = 0
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
						for(var/mob/pet/M in oview(6))
							if(M.owner == usr)
								usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
								usr.move = 0 // Disables the mob's movement
								usr.chakra -= 15
								Jujin=1
								JuU += 1
								usr.Chakragain()
								sleep(3)
								usr.move = 1
								usr.firing = 0
								M.icon = usr.icon
								flick("smoke2",M)
								M.overlays += usr.overlays
								view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f4a460>J</FONT><FONT COLOR=#ee9a5c>u</FONT><FONT COLOR=#e68f57>u</FONT><FONT COLOR=#df8352>j</FONT><FONT COLOR=#d8784d>i</FONT><FONT COLOR=#d16d48>n</FONT><FONT COLOR=#c96243> </FONT><FONT COLOR=#c2573e>B</FONT><FONT COLOR=#bb4c39>u</FONT><FONT COLOR=#b44034>n</FONT><FONT COLOR=#ac352f>s</FONT><FONT COLOR=#a52a2a>h</FONT><FONT COLOR=#a62a2a>i</FONT><FONT COLOR=#a72a2a>n</FONT><FONT COLOR=#a92929> </FONT><FONT COLOR=#aa2828>N</FONT><FONT COLOR=#ab2727>o</FONT><FONT COLOR=#ac2727> </FONT><FONT COLOR=#ad2626>J</FONT><FONT COLOR=#ae2525>u</FONT><FONT COLOR=#b02424>t</FONT><FONT COLOR=#b12424>s</FONT><FONT COLOR=#b22323>u</FONT><FONT COLOR=#b22222>!</FONT>"
								sleep(600)
								M.overlays -= usr.overlays
								M.icon = 'Animals.dmi'
								M.icon_state = "Dog"
								Jujin = 0
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
						for(var/mob/wolf/M in oview(6))
							if(M.owner == usr)
								usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
								usr.move = 0 // Disables the mob's movement
								usr.chakra -= 15
								Jujin=1
								JuU += 1
								usr.Chakragain()
								sleep(3)
								usr.move = 1
								usr.firing = 0
								M.icon = usr.icon
								flick("smoke2",M)
								M.overlays += usr.overlays
								view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f4a460>J</FONT><FONT COLOR=#ee9a5c>u</FONT><FONT COLOR=#e68f57>u</FONT><FONT COLOR=#df8352>j</FONT><FONT COLOR=#d8784d>i</FONT><FONT COLOR=#d16d48>n</FONT><FONT COLOR=#c96243> </FONT><FONT COLOR=#c2573e>B</FONT><FONT COLOR=#bb4c39>u</FONT><FONT COLOR=#b44034>n</FONT><FONT COLOR=#ac352f>s</FONT><FONT COLOR=#a52a2a>h</FONT><FONT COLOR=#a62a2a>i</FONT><FONT COLOR=#a72a2a>n</FONT><FONT COLOR=#a92929> </FONT><FONT COLOR=#aa2828>N</FONT><FONT COLOR=#ab2727>o</FONT><FONT COLOR=#ac2727> </FONT><FONT COLOR=#ad2626>J</FONT><FONT COLOR=#ae2525>u</FONT><FONT COLOR=#b02424>t</FONT><FONT COLOR=#b12424>s</FONT><FONT COLOR=#b22323>u</FONT><FONT COLOR=#b22222>!</FONT>"
								sleep(600)
								M.overlays -= usr.overlays
								M.icon = 'Animals.dmi'
								M.icon_state = "Wolf"
								Jujin = 0
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

mob/Inuzuka
	verb
		Soutourou() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Soutourou"
			usr.Handseals()
			if(usr.Jujin == 0||usr.Henge||usr.firing||usr.Kaiten == 1||usr.inso==1) // If the mob's firing var is one...
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.canS==1)
				usr<<"You have used soutourou to recently..."
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
				if(soU >= 150)
					for(var/mob/pet/M in oview(6))
						if(M.owner == usr)
							if(usr.Jujin == 1)
								var/list/O = usr.overlays.Copy()
								usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
								usr.move = 0 // Disables the mob's movement
								usr.chakra -= 55
								inso=1
								soU += 1
								sleep(3)
								usr.move = 1
								usr.firing = 0
								usr.Chakragain()
								M.loc=locate(0,0,0)
								usr.overlays = usr.overlays.Remove(usr.overlays)
								usr.icon = 'souta.dmi'
								usr.tai = usr.tai*1.3
								usr.Savedspeed = usr.Move_Delay
								usr.Move_Delay = usr.Speed2
								sleep(300)
								usr<<"<font color = blue>You stop using soutoutou!"
								usr.overlays = O.Copy()
								M.loc = locate(usr.x,usr.y,usr.z)
								usr.icon = usr.Oicon
								usr.tai = usr.Mtai
								M.icon = 'Animals.dmi'
								M.icon_state = "Dog"
								M.Jujin=0
								usr.inso = 0
								sleep(100)
								usr.canS = 0
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
						for(var/mob/pet/M in oview(6))
							if(M.owner == usr)
								if(usr.Jujin == 1)
									var/list/O = usr.overlays.Copy()
									usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
									usr.move = 0 // Disables the mob's movement
									usr.chakra -= 55
									inso=1
									soU += 1
									sleep(3)
									usr.move = 1
									usr.firing = 0
									usr.Chakragain()
									M.loc=locate(0,0,0)
									usr.overlays = usr.overlays.Remove(usr.overlays)
									usr.icon = 'souta.dmi'
									usr.tai = usr.tai*1.4
									usr.Savedspeed = usr.Move_Delay
									usr.Move_Delay = usr.Speed2
									sleep(300)
									usr<<"<font color = blue>You stop using soutoutou!"
									usr.overlays = O.Copy()
									M.loc = locate(usr.x,usr.y,usr.z)
									usr.icon = usr.Oicon
									usr.tai = usr.Mtai
									M.icon = 'Animals.dmi'
									M.icon_state = "Dog"
									M.Jujin=0
									usr.inso = 0
									sleep(100)
									usr.canS = 0
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
					for(var/mob/wolf/M in oview(6))
						if(M.owner == usr)
							if(usr.Jujin == 1)
								var/list/O = usr.overlays.Copy()
								usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
								usr.move = 0 // Disables the mob's movement
								usr.chakra -= 55
								inso=1
								soU += 1
								sleep(3)
								usr.move = 1
								usr.firing = 0
								usr.Chakragain()
								M.loc=locate(0,0,0)
								usr.overlays = usr.overlays.Remove(usr.overlays)
								usr.icon = 'souta.dmi'
								usr.tai = usr.tai*1.5
								usr.Savedspeed = usr.Move_Delay
								usr.Move_Delay = usr.Speed2
								sleep(300)
								usr<<"<font color = blue>You stop using soutoutou!"
								usr.overlays = O.Copy()
								M.loc = locate(usr.x,usr.y,usr.z)
								usr.icon = usr.Oicon
								usr.tai = usr.Mtai
								M.icon = 'Animals.dmi'
								M.icon_state = "Wolf"
								M.Jujin=0
								usr.inso = 0
								sleep(100)
								usr.canS = 0
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
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						for(var/mob/wolf/M in oview(6))
							if(M.owner == usr)
								if(usr.Jujin == 1)
									var/list/O = usr.overlays.Copy()
									usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
									usr.move = 0 // Disables the mob's movement
									usr.chakra -= 55
									inso=1
									soU += 1
									sleep(3)
									usr.move = 1
									usr.firing = 0
									usr.Chakragain()
									M.loc=locate(0,0,0)
									usr.overlays = usr.overlays.Remove(usr.overlays)
									usr.icon = 'souta.dmi'
									usr.tai = usr.tai*1.6
									usr.Savedspeed = usr.Move_Delay
									usr.Move_Delay = usr.Speed2
									sleep(300)
									usr<<"<font color = blue>You stop using soutoutou!"
									usr.overlays = O.Copy()
									M.loc = locate(usr.x,usr.y,usr.z)
									usr.icon = usr.Oicon
									usr.tai = usr.Mtai
									M.icon = 'Animals.dmi'
									M.icon_state = "Wolf"
									M.Jujin=0
									usr.inso = 0
									sleep(100)
									usr.canS = 0
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