var/list/UPlayer = list()
var/list/TTPlayers= list()
mob/tmp/ID
mob/Tourny
	verb
		TournyPlyrs()
			set category = "Tournament"
			set name = "Players"
			if(tournament == 1)
				for(var/mob/M in TTPlayers)
					world<<"There are [pleft] in the Tournament"
					return
		Tourny_Fix()
			set category = "Tournament"
			set name = "Tournament End"
			if(tournament == 1)
				tournament = 0
				world << "<b><font color = red>Info: The tournament has ended."
				for(var/mob/M in world)
					if(M.tourny)
						M.loc=locate(6,58,20)
						M.tourny=0
						M.verbs -= new/mob/Tournament/verb/Enter_Tournament()
						M.verbs -= new/mob/Tournament/verb/Leave_Tournament()
						pleft = 0
						TTPlayers -= M
						return
		Start_Tournament()
			set category = "Tournament"
			set name = "Start Tournament"
			if(tournament == 1)
				usr<<"<font color=white><b><u>There is already a tournament being held!</font></b></u>"
				return
			else
				world << "<center><font size=3><font color = Silver><b><center>[usr] has started a tournament <br><font size = 1>To join please go to tournament tab and select Enter Tournament."
				tournament = 1
				//world.AFKcheck()
				for(var/mob/M in world)
					M.verbs += new/mob/Tournament/verb/Enter_Tournament()
					M.verbs += new/mob/Tournament/verb/Leave_Tournament()
		Stop_Tournament_Entry()
			set category = "Tournament"
			set name = "Stop Tournament Entry"
			if(tournament == 1)
				world << "<center><font size=3><font color = Silver><b><center>The tournament entry has now ended."
				world << "<font size=1><font color = red><b>The following people are in the tournament"
				for(var/mob/M in TTPlayers)
					pleft+=1
					world << "[M]"
				for(var/mob/M in world)
					M.verbs -= new/mob/Tournament/verb/Enter_Tournament()
					M.verbs -= new/mob/Tournament/verb/Leave_Tournament()
			else
				usr<<"<font color=white><b><u>There is no tournament being held!</font></b></u>"
				return
		End_Tournament()
			set category = "Tournament"
			set name = "Pick winner"
			if(tournament == 1)
				if(pleft >= 2)
					world << "<center><font size=3><font color = Silver><b><center>[usr] has ended the tournament, the winner was not declared."
					tournament = 0
					for(var/mob/M in TTPlayers)
						M.loc=locate(6,58,20)
						M.tourny = 0
						pleft = 0
					for(var/mob/M in world)
						M.verbs -= new/mob/Tournament/verb/Enter_Tournament()
						M.verbs -= new/mob/Tournament/verb/Leave_Tournament()
						M.tourny=0
						TTPlayers -= src
						return
				else
					if(pleft == 1)
						for(var/mob/M in TTPlayers)
							world << "<center><font size=3><font color = Silver><b><center>[usr] has ended the tournament, the winner is [M.name]!"
							tournament = 0
							M.tourny=0
							M.tourneyP+=1
							M.loc=locate(6,58,20)
							pleft = 0
						for(var/mob/M in world)
							M.verbs -= new/mob/Tournament/verb/Enter_Tournament()
							M.verbs -= new/mob/Tournament/verb/Leave_Tournament()
							M.tourny=0
							TTPlayers -= src
							return
			else
				usr<<"<font color=white><b><u>There is no tournament to end!</font></b></u>"
				return
		TournamentA()
			set category = "Tournament"
			set name = "Tournament Announce"
			if(tournament == 1)
				var/ID=input("What do you wish to announce to the people in the tournament?")as text
				if(ID == "")
					return
				else
					for(var/mob/M in TTPlayers)
						if(M.tourny == 1)
							M << "<center><font size=2><font color = Silver><b><center>[usr] would like to tournament announce!<center><br>[ID]"

			else
				usr<<"<font color=white><b><u>There is no tournament to announce to</font></b></u>"
				return
mob/var/tourneyP=0
