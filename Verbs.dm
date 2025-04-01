var
	inwar = 0
	war1 = 0
	war2 = 0
	enemy = ""
	alli = ""

mob
	proc
		Jyuken()
			if(!(Hyuuga))
				src << "You Cannot Use This Fighting Style!"
			else if(Jyuken)
				src << "Jyuuken Fighting Style Is Already Active!"
			else
				src << "Jyuuken Fighting Style Is Now Activated!"
				Jyuken = 1
				Basic = 0
mob
	proc
		Basic()
			if(Basic)
				src<<"Basic Fighting Style Is Already Active!"
			else
				usr<<"Basic Fighting Style Is Now Activated!"
				usr.Jyuken = 0
				usr.Basic = 1

mob/verb/EscapeWar()
	if(usr.inthewar&&war==1)
		usr.loc=locate(6,58,20)
		usr.inthewar=0
		(usr) << sound(null)
mob/Tournament
	verb
		Enter_Tournament()
			set category = "Tournament"
			set name = "Enter Tournament"
			if(usr.jailtime) return
			if(usr.tourny)
				usr<<"<font color=white><b><u>Your already in the tournament!</font></b></u>"
				return
			else
				usr.loc=locate(50,33,13)
				usr.tourny=1
				usr<<"<font color=white><b><u>You joined the tournament!</font></b></u>"
				TTPlayers += usr
		Leave_Tournament()
			set category = "Tournament"
			set name = "Leave Tournament"
			if(usr.jailtime) return
			if(!usr.tourny)
				usr<<"<font color=white><b><u>Your not in the tournament!</font></b></u>"
				return
			else
				usr.loc=locate(6,58,20)
				usr.tourny=0
				usr<<"<font color=white><b><u>You left the tournament!</font></b></u>"
				TTPlayers -= usr

mob
	verb
		MusicStopPlayers()
			set name = "Music Stop"
			view(src) << sound(null)
mob
	verb
		Send_File(mob/M in view(usr),F as file)
			switch(alert(M,"[usr] is trying to send you [F].  Do you accept the file?","**File Transfer**","Yes","No"))
				if("Yes")
					alert(usr,"[M] accepted the file","**File Accepted**")
					M<<ftp(F)
				if("No")
					alert(usr,"[M] declined the file","**File Declined**")
mob
	verb
		Update()
			switch(input("NHS UPDATES", text) in list ("Still working on Nagato","Kisame Clan Gave em Projectile","Testing Puppet Clan","Working on Inuzuka Clan","Working on Bijuu NPCs","Working on Fuedal Lord System","Cancel"))
				if("Cancel")
					return
mob
	verb
		Villagewho()
			usr<<"<font color=blue>Online [usr.Village] Village Members -"
			for(var/mob/M in world)
				if(M.cansave==1&&M.Village == usr.Village){usr<<"<font color=green>{\icon[M][M.rank] ([M])"}
mob
	verb
		WView()
			set name = "Client View"
			var/z = input("Current: [client.view] Default: 11 | Max: 13","View")as num
			if(z>=14)
				usr<<"Too High Of A Setting"
				return
			client.view = z
mob
	verb
		FightingStyle()
			set category = "TaiJutsu"
			set name = "Fighting Style"
			if(!(Hyuuga))
				switch(input("Which Fighting Style would you like to use?","Style")in list("Basic"))
					if("Basic")
						usr.Basic()
			else if(Hyuuga)
				switch(input("Which Fighting Style would you like to use?","Style")in list("Basic","Jyuuken"))
					if("Basic")
						usr.Basic()
					if("Jyuuken")
						usr.Jyuken()


z
mob
	cliff
		verb
			climbup()
				set name="Climb Up"
				set category = "Training"
				var/obj/mountain2/C
				if(usr.climbing)
					return
				if(usr.firing)
					return
				if(usr.resting)
					usr<<"You cannot rest and climb at the same time, Impossible"
					return
				if(usr.health<=5)
					for(C in get_step(usr,SOUTH))
						if(C)
							usr << "<b>You are to tired, you slip and fall.</b>"
							usr.loc=locate(usr.x,usr.y-1,usr.z)
							return
					for(C in get_step(usr,NORTH))
						if(C)
							usr << "<b>You are to tired to climb up</b>"
				else
					for(C in get_step(usr,NORTH))
						if(C)
							if(prob(95))
								usr << "<b>You climb up the cliff.</b>"
								usr.climbing=1
								var/minus=pick(prob(70);5,prob(30);rand(1,3))
								minus=pick(prob(60);5,prob(30);rand(1,50))
								usr.health-=minus
								usr.y+=1
								if(usr.health<=0)
									Death(usr)
								sleep(10)
								usr.climbing=0
								if(usr.Mhealth<500000)
									switch(rand(1,5))
										if(1)
											taiexp+=rand(1,4)
											Tai()
										if(2)
											if(usr.Weights)
												if(usr.Mhealth<=usr.Stamcap)
													Mhealth+=rand(1500,2500)
													usr<<"Your Weights put a harder strain on you"
													taiexp+=rand(1,3)
													Tai()
												else
													usr<<"Maximum Stamina Reached"
										if(3)
											if(usr.Mhealth<=usr.Stamcap)
												Mhealth+=rand(1000,2000)
												usr<<"Stamina Has Increased"
											else
												usr<<"Maximum Stamina Reached"
										if(4)
											if(usr.Mhealth<=usr.Stamcap)
												Mhealth+=rand(1000,1500)
												usr<<"Stamina Has Increased"
											else
												usr<<"Maximum Stamina Reached"
										if(5)
											if(usr.Mhealth<=usr.Stamcap)
												taiexp+=rand(100,600)
												Tai()
											else
												usr<<"Maximum Stamina Reached"
								else
									switch(rand(1,5))
										if(1)
											if(usr.Mhealth<=usr.Stamcap)
												Mhealth+=rand(100,500)
												usr<<"Stamina Has Increased"
											else
												usr<<"Maximum Stamina Reached"
										if(2)
											taiexp+=rand(1,3)
											Tai()
							else
								if(prob(10))
									usr.loc=locate(src.x,src.y-rand(1,2),src.z)
									usr << "<b>You reach for the next ledge but slip</b>"

			climbdown()
				set name="Climb Down"
				set category = "Training"
				var/obj/mountain2/C
				if(usr.climbing)
					return
				for(C in get_step(usr,SOUTH))
					if(C)
						usr.climbing=1
						usr.loc=locate(src.x,src.y-1,src.z)
						usr << "<b>You slide down the cliff.</b>"
						spawn(5) usr.climbing=0
mob
	verb
		Waterwalk()
			set category="Training"
			set name = "Water Walk"
			if(usr.waterwalk==0||usr.waterwalk==null)
				usr.waterwalk=1
				usr<<"You are now able to walk on water"
			else
				usr.waterwalk=0
				usr<<"You are now incapable of walking on water"
mob
	proc
		WATER()
			if(src.onwater)
				var/tc = rand(1,4)
				src.used=tc
				if(src.ChakraC <= 99)
					if(used >= 3)
						if(src.chakra < src.used)
							src.health -= src.used
							var/random = rand(1,4)
							if(random==3)
								if(src.Mchakra<=src.Chakracap)
									src<<"Your chakra raised!"
									src.Mchakra += rand(700,500)
							var/random2=rand(1,4)
							if(random2==1||random2==3)
								var/random3=rand(1,3)
								if(random3==2)
									src<<"<font size=1><font name=courier new><font color=green>You control your chakra better!"
									src.ChakraC+=1
								if(src.health<=0)
									src.onwater = 0
									src.DeathCheck(src)
									return
						else
							src.chakra -= src.used
					if(src.used < 3)
						if(src.chakra<src.used)
							if(src.chakra<src.used)
								src.health -= src.used
								if(src.health<=0)
									src.onwater = 0
									src.DeathCheck(src)
							else
								src.chakra -= 1
				if(src.ChakraC >= 50)
					if(src.chakra >= 3)
						src.chakra -= 2000
						var/random = rand(1,4)
						if(random==3)
							if(src.Mchakra<=src.Chakracap)
								src<<"Your chakra raised!"
								src.Mchakra += rand(2000,5000)
								if(src.health <= 0)
									src.DeathCheck(src)
									src.onwater = 0
									return
					else
						src.health -= 800
						var/random = rand(1,4)
						if(random==3)
							if(src.Mchakra<=src.Chakracap)
								src<<"Your chakra raised!"
								src.Mchakra += rand(2000,5000)
								if(src.health<=0)
									src.DeathCheck(src)
									src.onwater = 0
									return
mob/verb/Who()
	var/tmp/C = 0
	for(var/mob/M in players)
		C += 1
		usr << "<font size=1><b><font color=silver>[M.name]: <font color=red>(Key: [M.key]) Rank:[M.rank] Clan: [M.Clan] Village: [M.Village]"
	usr << "<font size=1>[C] Players Online!"
mob
	verb
		War_Toggle()
			set hidden =1
			if(usr.wartoggle)
				usr.wartoggle=0
				usr<<"You turn off village warring"
			else
				usr.wartoggle=1
				usr<<"You turn on village warring"

mob
	verb
		LeaveVillage()
			set category="Commands"
			switch(input("Are you sure you want to do this there is no going back!!!", text) in list ("Yes","No"))
				if("Yes")
					if(src.rank=="Student")
						usr<<"You not stong enough to go out on your own yet!"
						return
					if(src.rank=="Kage")
						usr<<"You cannot leave your village because you have responsibilities!"
						return
					else
						usr.Village="None"
						usr.rank="Missing"
						usr.soundleader=0
						usr.soundmember=0
						usr.akatsukimember=0
						usr.akatsukileader=0
						usr.cap = Jcap
						usr.verbs+= new /mob/jutsu/verb/BakuretsuBunshin
						for(var/obj/AKAH/H in src.contents)
							del(H)
						for(var/obj/AKAS/S in src.contents)
							del(S)
						for(var/obj/SOSuit/S in src.contents)
							del(S)
				if("No")
					usr<<"Smart choice it's rough on your own."
mob/Squads
	verb
		Invite(mob/M in view(10))
			set category="Squad"
			switch(input("Are you sure you want to teach them?!", text) in list ("Yes","No"))
				if("Yes")
					if(M.Village == usr.Village&&usr.recruits<=2)
						M.squads=1
						M.squad="[src.squad]"
						usr.recruits+=1
					else
						usr<<"There not from your village or you already have 3 in your squad"
				else
					usr<<"Understood"
		Boot(mob/M in world)
			set category="Squad"
			switch(input("Are you sure you want to kick them out?", text) in list ("Yes","No"))
				if("Yes")
					if(M.squad==usr.squad)
						M.squads=0
						M.squad=""
						usr.recruits-=1

					else
						usr<<"There not from your squad"
				else
					usr<<"Understood."

mob
	verb
		LeaveSquad()
			switch(input("You sure you wish to betray your sensi?",text)in list("Yes","No"))
				if("Yes")
					usr.squads=0
					usr.squad=""
				else
					usr<<"Good idea to be sure its best."
mob
	verb
		AFK()
			if(src.firing)
				src<<"Not right now."
				return
			if(src.AFK)
				world << "[src] Is Back."
				src.AFK = 0
				src.overlays -= 'AFK.dmi'
				src.firing =1
				sleep(30)
				src.firing =0
			else
				world << "[src] Is Now AFK."
				src.AFK = 1
				src.overlays += 'AFK.dmi'
				src.firing=1
				sleep(30)
				src.firing =0

mob
	verb
		OrgChallenge()
			set category = "Arena"
			set name = "Org Leader-Challenge"
			var/mob/M = input("Who do you wish to challenge?","Challenge Org Leader")as null|anything in players
			if(!M) return
			if(M==usr) return
			if(usr.swordsmenleader||usr.akatsukileader||usr.soundleader||usr.policeleader||usr.hebileader)
				usr<<"You are already a leader of an organization!!"
				return
			if(usr.jailtime) return
			if(M.jailtime) return
			if(M.orgc)
				usr<<"[M] is already being challenged!"
				return
			if(!usr.rank=="Missing")
				usr<<"You must become a Missing Nin to challenge an Org leader for their spot"
				return
			if(usr.Village=="None"&&usr.rank=="Missing"&&M.akatsukileader)
				usr.kagechallenge = 1
				M.kagechallenged = 1
				world << "<b><font color = red>Akatsuki Leadership Challenge:</b>[M] has been challenged by [usr]! You have 5 minute to respond!"
				(M) << sound(null)
				M<<'The raising fighting spirit.mid'
				(usr) << sound(null)
				usr<<'The raising fighting spirit.mid'
				sleep(3000)
				M<<"Coward"
				usr<<"They Declined"
				M.kagechallenged = 0
				usr.kagechallenge = 0
			if(usr.rank=="Missing"&&M.soundleader)
				usr.kagechallenge = 1
				M.kagechallenged = 1
				world << "<b><font color = silver>Sound Leadership Challenge:</b>[M] has been challenged by [usr]! You have 5 minute to respond!"
				(M) << sound(null)
				M<<'The raising fighting spirit.mid'
				(usr) << sound(null)
				usr<<'The raising fighting spirit.mid'
				sleep(3000)
				M<<"Coward"
				usr<<"They Declined"
				M.kagechallenged = 0
				usr.kagechallenge = 0
			if(usr.rank=="Missing"&&M.hebileader)
				usr.kagechallenge = 1
				M.kagechallenged = 1
				world << "<b><font color = green>Hebi Leadership Challenge:</b>[M] has been challenged by [usr]! You have 5 minute to respond!"
				(M) << sound(null)
				M<<'The raising fighting spirit.mid'
				(usr) << sound(null)
				usr<<'The raising fighting spirit.mid'
				sleep(3000)
				M<<"Coward"
				usr<<"They Declined"
				M.kagechallenged = 0
				usr.kagechallenge = 0
			if(usr.rank=="Missing"&&M.swordsmenleader)
				usr.kagechallenge = 1
				M.kagechallenged = 1
				world << "<b><font color = blue>Swordsmen Leadership Challenge:</b>[M] has been challenged by [usr]! You have 5 minute to respond!"
				(M) << sound(null)
				M<<'The raising fighting spirit.mid'
				(usr) << sound(null)
				usr<<'The raising fighting spirit.mid'
				sleep(3000)
				M<<"Coward"
				usr<<"They Declined"
				M.kagechallenged = 0
				usr.kagechallenge = 0
			if(usr.rank=="Missing"&&M.policeleader)
				usr.kagechallenge = 1
				M.kagechallenged = 1
				world << "<b><font color = yellow>Police Leadership Challenge:</b>[M] has been challenged by [usr]! You have 5 minute to respond!"
				(M) << sound(null)
				M<<'The raising fighting spirit.mid'
				(usr) << sound(null)
				usr<<'The raising fighting spirit.mid'
				sleep(3000)
				M<<"Coward"
				usr<<"They Declined"
				M.kagechallenged = 0
				usr.kagechallenge = 0
			else
				usr<<"You must only challenge an Organization Leader!!"
		OrgAccept()
			set category = "Arena"
			set name = "Org Leader-Accept"
			var/mob/M = input("Do you wish to accept?","Accept")as null|anything in players
			if(!M) return
			if(M==usr) return
			if(usr.jailtime) return
			if(M.jailtime) return
			if(!usr.akatsukileader||!usr.soundleader||!usr.hebileader||!usr.swordsmenleader||!usr.policeleader) return
			if(M.kagechallenge == 1)
				if(usr.kagechallenged == 1)
					world << "<b><font color=red>Org Leadership Challenge:</b>[usr] has accepted [M]'s challenge!"
					M.loc = locate(32,63,31)
					usr.loc = locate(56,63,31)
					M.kagechallenge=0
					usr.kagechallenged=0
					M.PK = 1
					usr.PK = 1
					usr.orgc=1
					(M) << sound(null)
					M<<'The raising fighting spirit.mid'
					(usr) << sound(null)
					usr<<'The raising fighting spirit.mid'
				else
					usr << "They have not challenged you!"
			else
				usr << "They have not challenged you!"
/*		KChallenge()
			set category = "Arena"
			set name = "Kage-Challenge"
			var/mob/M = input("Who do you wish to challenge?","Challenge Kage")as null|anything in players
			if(!M) return
			if(M==usr) return
			if(usr.rank == "Kage")
				usr<<"You are already Kage!!"
				return
			if(usr.jailtime) return
			if(M.jailtime) return
			if(usr.Village==M.Village&&M.rank=="Kage")
				usr.kagechallenge = 1
				M.kagechallenged = 1
				world << "<b><font color = Red>KAGE CHALLENGE:</b>[M] has been challenged by [usr]! You have 5 minute to respond!"
				(M) << sound(null)
				M<<'The raising fighting spirit.mid'
				(usr) << sound(null)
				usr<<'The raising fighting spirit.mid'
				sleep(3000)
				M<<"Coward"
				usr<<"They Declined"
				M.kagechallenged = 0
				usr.kagechallenge = 0
			else
				usr<<"You must only challenge your kage!!"
		KAccept()
			set category = "Arena"
			set name = "Kage-Accept"
			var/mob/M = input("Do you wish to accept?","Accept")as null|anything in players
			if(!M) return
			if(M==usr) return
			if(usr.jailtime) return
			if(M.jailtime) return
			if(M.kagechallenge == 1)
				if(usr.kagechallenged == 1)
					world << "<b><font color=red>KAGE CHALLENGE:</b>[usr] has accepted [M]'s challenge!"
					M.loc = locate(32,63,31)
					usr.loc = locate(56,63,31)
					M.PK = 1
					usr.PK = 1
					usr.inkage=1
					(M) << sound(null)
					M<<'The raising fighting spirit.mid'
					(usr) << sound(null)
					usr<<'The raising fighting spirit.mid'
				else
					usr << "They have not challenged you!"
			else
				usr << "They have not challenged you!"*/
		Challenge()
			set category = "Arena"
			set name = "ARENA-Challenge"
			var/mob/M = input("Who do you wish to challenge?","Challenge")as null|anything in players
			if(!M) return
			if(M==usr) return
			if(usr.jailtime) return
			if(M.jailtime) return
			else
				usr.challenge = 1
				M.challenged = 1
				world << "<b>Arena:</b>[M] has been challenged by [usr]! You have 1 minute to respond!"
				(M) << sound(null)
				M<<'The raising fighting spirit.mid'
				(usr) << sound(null)
				usr<<'The raising fighting spirit.mid'
				sleep(600)
				M<<"Coward"
				usr<<"They Declined"
				M.challenged = 0
				usr.challenge = 0

		Accept()
			set category = "Arena"
			set name = "ARENA-Accept"
			var/mob/M = input("Do you wish to accept?","Accept")as null|anything in players
			if(!M) return
			if(M==usr) return
			if(usr.jailtime) return
			if(M.jailtime) return
			if(M.challenge == 1)
				if(usr.challenged == 1)
					world << "<b>Arena:</b>[usr] has accepted [M]'s challenge!"
					M.loc = locate(52,11,18)
					usr.loc = locate(96,11,18)
					M.PK = 1
					usr.PK = 1
					M.challenged = 0
					usr.challenge = 0
					(M) << sound(null)
					M<<'The raising fighting spirit.mid'
					(usr) << sound(null)
					usr<<'The raising fighting spirit.mid'
				else
					usr << "They have not challenged you!"
			else
				usr << "They have not challenged you!"

/*		KDecline()
			set category = "Arena"
			set name = "Kage-Decline"
			var/mob/M = input("Do you wish to decline?","Decline")as null|anything in players
			if(!M) return
			if(M==usr) return
			if(M.kagechallenge == 1)
				if(usr.kagechallenged == 1)
					world << "<b>KAGE CHALLENGE:</b>[usr] has declined [M]'s challenge!"
					usr.challenged = 0
					M.challenge = 0
				else
					usr << "They have not challenged you!"
			else
				usr << "They have not challenged you!"*/
		Decline()
			set category = "Arena"
			set name = "ARENA-Decline"
			var/mob/M = input("Do you wish to decline?","Decline")as null|anything in players
			if(!M) return
			if(M==usr) return
			if(M.challenge == 1)
				if(usr.challenged == 1)
					world << "<b>Arena:</b>[usr] has declined [M]'s challenge!"
					usr.challenged = 0
					M.challenge = 0
				else
					usr << "They have not challenged you!"
			else
				usr << "They have not challenged you!"

		Accept2()
			set category = "Arena"
			set name = "ARENA2-Accept"
			var/mob/M = input("Do you wish to accept?","Accept")as null|anything in players
			if(!M) return
			if(M==usr) return
			if(usr.jailtime) return
			if(M.jailtime) return
			if(M.challenge == 1)
				if(usr.challenged == 1)
					world << "<b>Arena2:</b>[usr] has accepted [M]'s challenge!"
					M.loc = locate(4,89,18)
					usr.loc = locate(47,89,18)
					M.PK = 1
					usr.PK = 1
					M.challenged = 0
					usr.challenge = 0
					(M) << sound(null)
					M<<'The raising fighting spirit.mid'
					(usr) << sound(null)
					usr<<'The raising fighting spirit.mid'
				else
					usr << "They have not challenged you!"
			else
				usr << "They have not challenged you!"
		Accept3()
			set category = "Arena"
			set name = "ARENA3-Accept"
			var/mob/M = input("Do you wish to accept?","Accept")as null|anything in players
			if(!M) return
			if(M==usr) return
			if(usr.jailtime) return
			if(M.jailtime) return
			if(M.challenge == 1)
				if(usr.challenged == 1)
					world << "<b>Arena3:</b>[usr] has accepted [M]'s challenge!"
					M.loc = locate(47,98,26)
					usr.loc = locate(47,2,26)
					M.PK = 1
					usr.PK = 1
					M.challenged = 0
					usr.challenge = 0
					(M) << sound(null)
					M<<'The raising fighting spirit.mid'
					(usr) << sound(null)
					usr<<'The raising fighting spirit.mid'
				else
					usr << "They have not challenged you!"
			else
				usr << "They have not challenged you!"



mob
	verb
		Power_up()
			set category = "NinJutsu"
			set name = "Activate Demon"
			if(usr.rank =="Student"||usr.rank=="Genin")
				usr<<"You must be Chúnin or higher to use this option."
				return
			if(usr.inkyuubi||usr.incs||usr.inkaku) return
			if(usr.Kyuubi)
				usr.Kyuubi()
				return
			if(usr.bit)
				usr.Cursed_Seal()
				return
			if(usr.Shukkaku)
				usr.Kaku()
				return
			if(usr.Yonbi)
				usr.Yonbi()
				return
			if(usr.Ichibi)
				usr.Ichibi()
				return
			if(usr.Gobi)
				usr.Gobi()
				return
			if(usr.Sanbi)
				usr.Sanbi()
				return
			if(usr.Rokubi)
				usr.Rokubi()
				return
			if(usr.Nibi)
				usr.Nibi()
				return
			if(usr.Ddogm)
				usr.Ddog()
				return
			if(usr.Dsnkm)
				usr.Dsnake()
				return
			if(usr.Dturm)
				usr.Dturtle()
				return
			if(usr.Dcatm)
				usr.Dcat()
				return


mob/verb/StaffOnline()
	set name = "Staff Online"
	var/tmp/H = 0
	for(var/mob/M in players)
		if(M.GM)
			H += 1
			usr << "<font size=1><b><font color=silver>[M.name] (<font color=yellow>[M.Rank2]<font color=silver>): <font color=red>(Key: [M.key]) Rank:[M.rank] Clan: [M.Clan] Village: [M.Village]"
	usr << "<font size=1>[H] Staff Online!"

mob/verb/JinchuurikiOnline()
	set name = "Jinchuuriki Online"
	var/tmp/H = 0
	for(var/mob/M in players)
		if(M.Yonbi||M.Ichibi||M.Kyuubi||M.Sanbi||M.Nibi||M.Gobi||M.Rokubi)
			H += 1
			usr << "<font size=1><b><font color=silver>[M.name] (<font color=yellow>[M.Rank2]<font color=silver>): <font color=red>(Key: [M.key]) Rank:[M.rank] Clan: [M.Clan] Village: [M.Village]"
	usr<< "<font size=1>[H] Jinchuuriki Online!"
mob/verb/LeaderOnline()
	set name = "Leaders Online"
	var/tmp/H = 0
	for(var/mob/M in players)
		if(M.hebileader||M.swordsmenleader||M.policeleader||M.akatsukileader||M.soundleader)
			H += 1
			usr << "<font size=1><b><font color=silver>[M.name] (<font color=yellow>[M.Rank2]<font color=silver>): <font color=red>(Key: [M.key]) Rank:[M.rank] Clan: [M.Clan] Village: [M.Village]"
	usr<< "<font size=1>[H] Leaders Online!"
mob
	verb
		CallGM()
			set name = "Contact GM"
			var/list/choose=list()
			for(var/mob/M in world)if(M.GM)choose.Add(M)
			var/mob/M=input("Which GM Do You Wish To Contact?","Choose") as null|anything in choose
			if(!M)return
			if(M==usr)return
			if(!M.GM)
				usr<<"They Are Not A GM"
			else
				var/msg = input("","Contact GM") as text
				M<<"<font size = 2><font color=gray><b>GM [M], [usr] Needs A GM's Assitance"
				msg=cuttext(msg)
				M<<"<font size=2><font color=silver><b>[usr] Called You For:: <font color=green>[msg]"
				usr<<"<font size=2><font color=silver><b>You Called GM [M] For:: <font color=green>[msg]"


mob/var/arenawatching

mob/verb/Watch_Arena()
    set name = "Watch Arena"
    if(usr.arenawatching==1)
        usr.client.perspective=MOB_PERSPECTIVE
        usr.client.eye=usr
        usr.client.view=11
        usr.arenawatching=0
        usr.PK=1
    if(istype(usr.loc,/turf/wall))
        usr.PK=0
        usr << "You are not watching the arena anymore."
    else
        usr.client.perspective=EYE_PERSPECTIVE
        usr.client.eye=locate(74,13,18)
        usr.client.view=21
        usr.arenawatching=1
        usr.PK=0
        usr << "You are watching the arena now."

mob/verb/Watch_Arena2()
    set name = "Watch Arena2"
    if(usr.arenawatching==1)
        usr.client.perspective=MOB_PERSPECTIVE
        usr.client.eye=usr
        usr.client.view=11
        usr.arenawatching=0
        usr.PK=1
    if(istype(usr.loc,/turf/wall))
        usr.PK=0
        usr << "You are not watching the arena2 anymore."
    else
        usr.client.perspective=EYE_PERSPECTIVE
        usr.client.eye=locate(26,89,18)
        usr.client.view=23
        usr.arenawatching=1
        usr.PK=0
        usr << "You are watching the arena2 now."
mob/verb/Watch_Tournament()
    set name = "Watch Tournament"
    if(usr.arenawatching==1)
        usr.client.perspective=MOB_PERSPECTIVE
        usr.client.eye=usr
        usr.client.view=11
        usr.arenawatching=0
        usr.PK=1
    if(istype(usr.loc,/turf/wall))
        usr.PK=0
        usr << "You are not watching the Tournament anymore."
    else
        usr.client.perspective=EYE_PERSPECTIVE
        usr.client.eye=locate(50,53,13)
        usr.client.view=23
        usr.arenawatching=1
        usr.PK=0
        usr << "You are watching the Tournament now."

mob/var/stopwatching

mob/verb/StopWatching()
    set name = "StopWatching"
    if(usr.arenawatching==1)
        usr.client.perspective=MOB_PERSPECTIVE
        usr.client.eye=usr
        usr.client.view=11
        usr.arenawatching=0
        usr.PK=1
    if(istype(usr.loc,/turf/wall))
        usr.PK=0
        usr << "You are not watching anymore."





