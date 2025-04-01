mob/var
	tmp/inmission=0
	amission=0
	tmp/roguekills=0
var
	peoplein=0
obj
	Weed
		icon = 'weed.dmi'
		verb
			Pick()
				set src in oview(1)
				var/place = src.loc
				usr<<"<font face=verdana>You picked up a [src]"
				usr.picked += 1
				src.loc = usr
				spawn(600)
					var/obj/Weed/W = new/obj/Weed
					W.loc = place
obj
	Hidden_Scroll
		icon = 'scroll.dmi'
		icon_state="1"
		verb
			Get()
				set src in oview(1)
				if(usr.gotscroll)
					usr<<"You already have it!"
					return
				var/place = src.loc
				usr<<"<font face=verdana>You picked up the [src]"
				usr.gotscroll = 1
				src.loc = usr
				spawn(600)
					var/obj/Hidden_Scroll/H = new/obj/Hidden_Scroll
					H.loc = place

mob/npc/MissionJounin
	icon = 'Spawn.dmi'
	health = 99999999999999999999999999999999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category ="Mission"
			switch(input("Which Level Mission are you certified for?", text) in list ("D","C","B","A","S","Cancel"))
				if("D")
					if(usr.rank == "Student")
						usr<<"You must be atleast a genin to do a D rank mission."
						return
					else
						if(usr.picked <= 0)
							usr.picked = 0
							usr<<"<b><font face=verdana>There a lot of troublesome weeds lingering around tripping people walking by, Please pick as many as you can ans you'll be rewarded for how many you pick."
						else
							if(usr.Yen>=100000)
								alert("You already have as much Yen as you can carry.")
								return
							else
								usr.Yen += usr.picked * 5
								usr.picked = 0
								usr.dmission+=1
								for(var/obj/Weed/W in usr.contents)
									del(W)
				if("C")
					usr.random=rand(1,2)
					if(usr.random==1)
						if(usr.rank == "Student")
							usr<<"You must be atleast a Genin to do a C rank mission."
						else
							usr<<"<b><font face=verdana>There are Rogue Shinobi attacking the Travelers. Defeat as many as you can. Each Rogue Shinobi gives you 1 C rank Mission Completion."
							return
					if(usr.random==2)
						if(usr.rank=="Student")
							usr<<"You must be at least a Genin to do a C rank mission."
						else
							switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
								if("Yes")
									usr.loc=locate(64,39,21)
									usr<<"Objective: Defeat Dosu Kinuta."
									usr.verbs += new /mob/mission/verb/Escape()
									sleep(6000)
									usr<<"Sorry, You have run out of time, Lord Hokage has gotton impatient, Please return and try again next time!"
									usr.inmission=0
									usr.loc=locate(6,58,20)
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									return
								else
									return
				if("B")
					if(usr.rank == "Student"||usr.rank=="Genin")
						usr<<"This mission is only for Chúnin or higher"
						return
					else if(usr.roguekills<=0)
						switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
							if("Yes")
								usr<<"Objective: Rogue Ninja have been terrizing the village, Please seek out and eliminate them."
								usr.inmission=1
								usr.bodyguards=0
								usr.loc=locate(13,17,32)
								return
							else
								return
							else
						if(usr.Yen>=100000)
							alert("You already have as much Yen as you can carry.")
							return
						else
							usr<<"Lord Hokage is pleased with your performance, Good work."
							usr.bmission+=1
							if(usr.Yen>=100000)
								usr<<"You are already carrying as much Yen as you can."
								return
							else
								usr.Yen+=usr.roguekills*2000
								usr.roguekills=0
								return
				if("A")
					usr.random=rand(1,3)
					if(usr.random==1)
						if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chúnin")
							usr<<"This mission is only for Jounin or higher"
							return
						else if(usr.Mnin >=400&&usr.Mgen>=400&&usr.Mtai>=400)
							switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
								if("Yes")
									usr.loc=locate(57,97,33)
									usr.inmission=1
									usr<<"Objective: Detect the Leader of the Sound Five, Kimimaro and retrieve information on Orochimaru's where abouts."
								else
									return
						else
							usr<<"You aren't qualified for this mission. Need to train some more."
							return
					if(usr.random==2)
						if(usr.rank == "Student"||usr.rank=="Genin")
							usr<<"This mission is only for Chúnin or higher"
							return
						else if(usr.roguekills>=0)
							switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
								if("Yes")
									usr<<"Objective: One of the Sound Five Members were spotted in the nearby forest; Please seek out and eliminate them."
									usr.inmission=1
									usr.bodyguards=0
									usr.loc=locate(5,59,33)
									return
								else
									return
								else
							if(usr.Yen>=100000)
								alert("You already have as much Yen as you can carry.")
								return
							else
								usr<<"Lord Hokage is pleased with your performance, Good work."
								usr.bmission+=1
								if(usr.Yen>=100000)
									usr<<"You are already carrying as much Yen as you can."
									return
								else
									usr.Yen+=usr.roguekills*2000
									usr.roguekills=0
									return
					if(usr.random==3)
						if(usr.rank == "Student"||usr.rank=="Genin")
							usr<<"This mission is only for Chúnin or higher"
							return
						else if(usr.roguekills>=0)
							switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
								if("Yes")
									usr<<"Objective: One of the Sound Five Members were spotted in the nearby forest; Please seek out and eliminate them."
									usr.inmission=1
									usr.bodyguards=0
									usr.loc=locate(59,69,33)
									return
								else
									return
								else
							if(usr.Yen>=100000)
								alert("You already have as much Yen as you can carry.")
								return
							else
								usr<<"Lord Hokage is pleased with your performance, Good work."
								usr.bmission+=1
								if(usr.Yen>=100000)
									usr<<"You are already carrying as much Yen as you can."
									return
								else
									usr.Yen+=usr.roguekills*2000
									usr.roguekills=0
									return
				if("S")
					usr.random=rand(1,4)
					if(usr.random==1)
						if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chúnin"||usr.rank=="Jounin")
							usr<<"This mission is only for Hunter or higher"
							return
						else if(usr.Mnin >=750&&usr.Mgen>=750&&usr.Mtai>=750)
							switch(input("You will embark on your mission, Sure you wish to leave so soon?,It would be Wise to bring a partner", text) in list ("Yes","No"))
								if("Yes")
									usr.loc=locate(20,98,28)
									usr.inmission=1
									usr<<"Objective: Defeat Hidan and Kakuzu."
								else
									return
						else
							usr<<"You aren't qualified for this mission"
					if(usr.random==2)
						if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chúnin"||usr.rank=="Jounin")
							usr<<"This mission is only for Hunter or higher"
							return
						else if(usr.Mnin >=750&&usr.Mgen>=750&&usr.Mtai>=750)
							switch(input("You will embark on your mission, Sure you wish to leave so soon?,It would be Wise to bring a partner", text) in list ("Yes","No"))
								if("Yes")
									usr.loc=locate(51,43,28)
									usr.inmission=1
									usr<<"Objective: Defeat Sasori and Deidara."
								else
									return
						else
							usr<<"You aren't qualified for this mission"
					if(usr.random==3)
						if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chúnin"||usr.rank=="Jounin")
							usr<<"This mission is only for Hunter or higher"
							return
						else if(usr.Mnin >=750&&usr.Mgen>=750&&usr.Mtai>=750)
							switch(input("You will embark on your mission, Sure you wish to leave so soon?,It would be Wise to bring a partner", text) in list ("Yes","No"))
								if("Yes")
									usr.loc=locate(4,98,33)
									usr.inmission=1
									usr<<"Objective: The Second Hokage is off experimenting the Edo Tensei Technique. You must stop him before its complete!!."
								else
									return
						else
							usr<<"You aren't qualified for this mission"
					if(usr.random==4)
						if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chúnin"||usr.rank=="Jounin")
							usr<<"This mission is only for Hunter or higher"
							return
						else if(usr.Mnin >=750&&usr.Mgen>=750&&usr.Mtai>=750)
							switch(input("You will embark on your mission, Sure you wish to leave so soon?,It would be Wise to bring a partner", text) in list ("Yes","No"))
								if("Yes")
									usr.loc=locate(67,22,28)
									usr.inmission=1
									usr<<"Objective: Defeat Itachi Uchiha."
								else
									return
						else
							usr<<"You aren't qualified for this mission"
				if("Cancel")
					return

mob/npc/TsunadeMissions
	icon = 'BaseTsunade.dmi'
	health = 99999999999999999999999999999999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category ="Mission"
			switch(input("Which Level Mission are you certified for?", text) in list ("D","C","B","A","S","Akatsuki","Cancel"))
				if("D")
					if(usr.rank == "Student")
						usr<<"You must be atleast a genin to do a D rank mission."
						return
					else
						if(usr.picked <= 0)
							usr.picked = 0
							usr<<"<b><font face=verdana>There a lot of troublesome weeds lingering around tripping people walking by, Please pick as many as you can ans you'll be rewarded for how many you pick."
						else
							if(usr.Yen>=100000)
								alert("You already have as much Yen as you can carry.")
								return
							else
								usr.Yen += usr.picked * 5
								usr.picked = 0
								usr.dmission+=1
								for(var/obj/Weed/W in usr.contents)
									del(W)
				if("C")
					usr.random=rand(1,2)
					if(usr.random==1)
						if(usr.rank == "Student")
							usr<<"You must be atleast a Genin to do a C rank mission."
						else
							usr<<"<b><font face=verdana>There are Rogue Shinobi attacking the Travelers. Defeat as many as you can. Each Rogue Shinobi gives you 1 C rank Mission Completion."
							return
					if(usr.random==2)
						if(usr.rank=="Student")
							usr<<"You must be at least a Genin to do a C rank mission."
						else
							switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
								if("Yes")
									usr.loc=locate(64,39,21)
									usr<<"Objective: Defeat Dosu Kinuta."
									usr.verbs += new /mob/mission/verb/Escape()
									sleep(6000)
									usr<<"Sorry, You have run out of time, Lord Hokage has gotton impatient, Please return and try again next time!"
									usr.inmission=0
									usr.loc=locate(6,58,20)
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									return
								else
									return
				if("B")
					usr.random=rand(1,3)
					if(usr.random==1)
						if(usr.rank == "Student"||usr.rank=="Genin")
							usr<<"This mission is only for Chúnin or higher"
							return
						else if(usr.roguekills<=0)
							switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
								if("Yes")
									usr<<"Objective: Rogue Ninja have been terrizing the village, Please seek out and eliminate them."
									usr.inmission=1
									usr.bodyguards=0
									usr.loc=locate(13,17,32)
									return
								else
									return
								else
							if(usr.Yen>=100000)
								alert("You already have as much Yen as you can carry.")
								return
							else
								usr<<"Lord Hokage is pleased with your performance, Good work."
								usr.bmission+=1
								if(usr.Yen>=100000)
									usr<<"You are already carrying as much Yen as you can."
									return
								else
									usr.Yen+=usr.roguekills*2000
									usr.roguekills=0
									return
					if(usr.random==2)
						if(usr.rank == "Student"||usr.rank=="Genin")
							usr<<"This mission is only for Chúnin or higher"
							return
						else if(usr.roguekills<=0)
							switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
								if("Yes")
									usr<<"Objective: One of the Sound Five Members were spotted in the nearby forest; Please seek out and eliminate them."
									usr.inmission=1
									usr.bodyguards=0
									usr.loc=locate(5,59,33)
									return
								else
									return
								else
							if(usr.Yen>=100000)
								alert("You already have as much Yen as you can carry.")
								return
							else
								usr<<"Lord Hokage is pleased with your performance, Good work."
								usr.bmission+=1
								if(usr.Yen>=100000)
									usr<<"You are already carrying as much Yen as you can."
									return
								else
									usr.Yen+=usr.roguekills*2000
									usr.roguekills=0
									return
					if(usr.random==3)
						if(usr.rank == "Student"||usr.rank=="Genin")
							usr<<"This mission is only for Chúnin or higher"
							return
						else if(usr.roguekills<=0)
							switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
								if("Yes")
									usr<<"Objective: One of the Sound Five Members were spotted in the nearby forest; Please seek out and eliminate them."
									usr.inmission=1
									usr.bodyguards=0
									usr.loc=locate(62,24,28)
									return
								else
									return
								else
							if(usr.Yen>=100000)
								alert("You already have as much Yen as you can carry.")
								return
							else
								usr<<"Lord Hokage is pleased with your performance, Good work."
								usr.bmission+=1
								if(usr.Yen>=100000)
									usr<<"You are already carrying as much Yen as you can."
									return
								else
									usr.Yen+=usr.roguekills*2000
									usr.roguekills=0
									return
				if("A")
					if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chúnin")
						usr<<"This mission is only for Jounin or higher"
						return
					else if(usr.Mnin >=400&&usr.Mgen>=400&&usr.Mtai>=400)
						switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
							if("Yes")
								usr.loc=locate(57,97,33)
								usr.inmission=1
								usr<<"Objective: Detect the Leader of the Sound Five, Kimimaro and retrieve information on Orochimaru's where abouts."
								usr.verbs += new /mob/mission/verb/Escape()
								sleep(6000)
								if(usr&&usr.inmission)
									usr<<"Sorry, You have run out of time, Lord Hokage has gotton impatient, Please return and try again next time!"
									usr.inmission=0
									usr.loc=locate(39,68,1)
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									return
							else
								return
					else
						usr<<"You aren't qualified for this mission. Need to train some more."
						return
				if("Akatsuki")
					if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chúnin"||usr.rank=="Jounin"||usr.rank=="Hunter")
						usr<<"This mission is only for Anbu or higher"
						return
					else if(usr.Mnin >=750&&usr.Mgen>=750&&usr.Mtai>=750)
						switch(input("You will embark on your mission, Sure you wish to leave so soon?,It would be Wise to bring a partner", text) in list ("Yes","No"))
							if("Yes")
								usr.loc=locate(20,98,28)
								usr.inmission=1
								usr<<"Objective: Defeat Hidan and Kakuzu."
								usr.verbs += new /mob/mission/verb/Escape()
								sleep(12000)
								if(usr&&usr.inmission)
									usr<<"Sorry, You have run out of time, Your kage has gotton impatient, Please return and try again next time!"
									usr.inmission=0
									usr.loc=locate(6,58,20)
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									return
							else
								return
					else
						usr<<"You aren't qualified for this mission"
				if("S")
					if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chúnin"||usr.rank=="Jounin")
						usr<<"This mission is only for Hunter or higher"
						return
					else if(usr.Mnin >=750&&usr.Mgen>=750&&usr.Mtai>=750)
						switch(input("You will embark on your mission, Sure you wish to leave so soon?,It would be Wise to bring a partner", text) in list ("Yes","No"))
							if("Yes")
								usr.loc=locate(4,98,33)
								usr.inmission=1
								usr<<"Objective: The Second Hokage is off experimenting the Edo Tensei Technique. You must stop him before its complete!!."
								usr.verbs += new /mob/mission/verb/Escape()
								sleep(12000)
								if(usr&&usr.inmission)
									usr<<"Sorry, You have run out of time, Your kage has gotton impatient, Please return and try again next time!"
									usr.inmission=0
									usr.loc=locate(4,98,33)
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									return
							else
								return
					else
						usr<<"You aren't qualified for this mission"
				if("Cancel")
					return


mob/mission/verb/Escape()
	set category="Mission"
	usr.loc=locate(6,58,20)
	usr.inmission=0
	usr.verbs -= new /mob/mission/verb/Escape()
	usr.verbs -= new /mob/mission/verb/Escape()
	usr.verbs -= new /mob/mission/verb/Escape()
	usr.verbs -= new /mob/mission/verb/Escape()