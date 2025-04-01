mob/Admin
	verb
		Demon()
			set category = "Staff"
			set name = "Demon World"
			usr.loc = locate(12,95,42)
		IPCheck()
			set category = "Staff"
			set name = "IP Check"
			for(var/mob/M in players)
				usr << "<font size=2><b><font color=#FF8103>([M.name]: <font color=#FF8103>(Key: [M.key]) (IP:[M.client.address])"
		Watch()
			set name = "Watch Player"
			set category = "Staff"
			var/mob/M = input("Who Would You Like To Watch","Watch")as null|anything in players
			if(!M) return
			if(M == usr)//if you look at yourself it will do this
				usr.client:perspective = MOB_PERSPECTIVE//this sets the client perspective to the usr, making the eye black when out of range(dont really know why you would want that on at all really).
			else//if its not you it will do this
				usr.client:perspective = EYE_PERSPECTIVE//this sets the client perspective to the usr eye, making the eye not go black if out of range.
			usr.client:eye = M// it will set your eye to who you look at
		IPBan()
			set category = "Staff"
			set desc = "IP Ban Someone in the world."
			var/mob/M = input("","IPBan")as null|anything in players
			if(!M) return
			if(M==usr)
				usr<<"<font color = red>Cant Ipban Yourself</font>"
				return
			if(M.constantx) return
			if(M.client)
				IPBans:Add(M.client.address)
				world<<"<font color = red>[M] has been IPBanned by [usr].</font>"
				var/savefile/S=new("Bans.sav")
				S["IP"] << IPBans
				text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M] Was IPBanned By [usr]<BR>","GMlog.html")
				del(M)
			else
				usr<<"<font color = red>You can only Ipban players."
		UnBanIP(address in IPBans)
			set category = "Staff"
			set desc = "IP UnBan Someone."
			if(!address) return
			var/confirm=input(usr,"Unban","Really unban [address]?") in list("Yes","No")
			switch(confirm)
				if("Yes")
					IPBans:Remove(address)
					var/savefile/S=new("Bans.sav")
					S["IP"] << IPBans
					usr<< "<font face=Tahoma><font size=2><b>IP:\"[address]\" has been UnIPBanned</font>."
					text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: IP:\"[address]\" Was UnIpBanned By [usr]<BR>","GMlog.html")
				if("No") return
		UnBan(key in KeyBans)
			set category = "Staff"
			set desc="Unban a player"
			KeyBans:Remove(key)
			var/savefile/S=new("Bans.sav")
			S["Key"] << KeyBans
			usr<< "<font face=Tahoma><font size=2><b>Key:\"[key]\" has been UnBanned</font>."
			text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [key] Was UnBanned By [usr]<BR>","GMlog.html")

		Delete(M as mob|obj|turf in view(src))
			set name = "Delete"
			set category = "Staff"
			del(M)

		Announce(txt as text)
			set name = "Announce"
			set category = "Staff"
			world << "<font face=Tahoma><font size=3><font color=silver><b><center>[usr] would like to announce<center> [txt]"
			text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [usr] Announced: \"[txt]\"<BR>","GMlog.html")

		Change_Icon()
			set category = "Staff"
			set name = "Change Icon"
			var/mob/M = input("","Choose Player")as null|anything in players
			if(!M) return
			var/arg = input("")as icon
			text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M] Had There Icon Changed To ([arg]) By [usr]<BR>","GMlog.html")
			M.icon = arg

		Add_Overlay()
			set category = "Staff"
			set name = "Add Overlay"
			var/mob/M = input("","Choose Player")as null|anything in players
			if(!M) return
			var/arg = input("")as icon
			text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M] Had Overlay ([arg]) Added By [usr]<BR>","GMlog.html")
			M.overlays += arg

		Force_Save()
			set category = "Staff"
			var/mob/M = input("","Force Save")as null|anything in players
			if(!M) return
			M.SaveK()

		Geninexam()
			set category = "Exams"
			set name = "Genin Examination"
			if(Genintime)
				Genintime=0
			else
				world<<"<b>Info: <font size=2><font color=red>There will be a Genin Examination in 5 minutes!"
				sleep(10)
				world<<"<b>Location: <font size=2><font color=red>Go to the Academy in Your Village."
				sleep(490)
				world<<"<b>Info: <font size=2><font color=red>There will be a Genin Examination in 4 minutes!"
				sleep(500)
				world<<"<b>Info: <font size=2><font color=red>There will be a Genin Examination in 3 minutes!"
				sleep(500)
				world<<"<b>Info: <font size=2><font color=red>There will be a Genin Examination in 2 minutes!"
				sleep(500)
				world<<"<b>Info: <font size=2><font color=red>There will be a Genin Examination in 1 minutes, be prepared!"
				sleep(500)
				world<<"<b>Info: <font size=2><font color=red>Genin Exam has now started! Good luck Students!"
				Genintime=1

		/*Chuuninexam()
			set category = "Exams"
			set	name = "Chuunin Exam"
			if(Chuunintime)
				Chuunintime=0
			else
				world<<"<b>Info: <font size=2><font color=red>There will be an Anbu Examination in 5 minutes!"
				sleep(10)
				world<<"<b>Location: <font size=2><font color=red>Go to the Academy in Your Village."
				sleep(490)
				world<<"<b>Info: <font size=2><font color=red>There will be a Chunnin in 4 minutes!"
				sleep(500)
				world<<"<b>Info: <font size=2><font color=red>There will be a Chunnin in 3 minutes!"
				sleep(500)
				world<<"<b>Info: <font size=2><font color=red>There will be a Anbu Examination in 2 minutes!"
				sleep(500)
				world<<"<b>Info: <font size=2><font color=red>There will be a Anbu Examination in 1 minutes, be prepared!"
				sleep(500)
				world<<"<b>Info: <font size=2><font color=red>Anbu Exam has now started! Good luck Hunter-nins!"
				Chuunintime=1*/

		Server_Options()
			set category="Host"
			set name="Server Options"
			switch(input("Select Option","Server Panel") in list ("Reboot Server","ShutDown Server","Repop Server","Change Server Status","Set Server Delay","Cancel"))
				if("ShutDown Server")
					switch(alert("Are You Sure You Want To ShutDown NHS?","ShutDown Mode","Yes","No"))
						if("Yes")
							text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [usr] ShutDown NHS<BR>","GMlog.html")
							SDM=1
							world<<"<B><center><font size = 3><font color = red>NHS Shutting Down In 30 Seconds</FONT></B>"
							sleep(100)//10 sleeps = 1 second -- 100 sleeps = 10 seconds -- 1000 blabla you know
							world<<"<B><center><font size = 3><font color = red>NHS Shutting Down In 20 Seconds</FONT></B>"
							sleep(100)
							world<<"<B><center><font size = 3><font color = red>NHS Shutting Down In 10 Seconds</FONT></B>"
							world<<"<B><center><font size = 3><font color = red>AutoSaving All Players</FONT></B>"
							world.SaveAll()
							sleep(50)
							world<<"<B><center><font size = 3><font color = red>5</FONT></B>"
							sleep(10)
							world<<"<B><center><font size = 3><font color = red>4</FONT></B>"
							sleep(10)
							world<<"<B><center><font size = 3><font color = red>3</FONT></B>"
							sleep(10)
							world<<"<B><center><font size = 3><font color = red>2</FONT></B>"
							sleep(9)
							world<<"<B><center><font size = 3><font color = red>1</FONT></B>"
							sleep(1)
							world<<"<B><center><font size = 3><font color = red>NHS Shutting Down</FONT></B>"
							del world
						if("No")
							if(SDM)
								usr<<"<B>Once ShutDown Mode Is Activated, It Cannot Be Stopped"
							else
								usr<<"<B>You've Chosen Not Shutdown NHS</B>"
				if("Reboot Server")
					switch(alert("Are You Sure You Want To Reboot NHS?","Reboot Mode","Yes","No"))
						if("Yes")
							text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [usr] Rebooted NHS<BR>","GMlog.html")
							RBM=1
							world<<"<B><center><font size = 3><font color = green>NHS Rebooting In 30 Seconds</FONT></B>"
							sleep(100)
							world<<"<B><center><font size = 3><font color = green>NHS Rebooting In 20 Seconds</FONT></B>"
							sleep(100)
							world<<"<B><center><font size = 3><font color = green>NHS Rebooting In 10 Seconds</FONT></B>"
							world<<"<B><center><font size = 3><font color = red>AutoSaving All Players</FONT></B>"
							world.SaveAll()
							sleep(50)
							world<<"<B><center><font size = 3><font color = green>5</FONT></B>"
							sleep(10)
							world<<"<B><center><font size = 3><font color = green>4</FONT></B>"
							sleep(10)
							world<<"<B><center><font size = 3><font color = green>3</FONT></B>"
							sleep(10)
							world<<"<B><center><font size = 3><font color = green>2</FONT></B>"
							sleep(9)
							world<<"<B><center><font size = 3><font color = green>1</FONT></B>"
							sleep(1)
							world<<"<B><center><font size = 3><font color = green>NHS Rebooting!</FONT></B>"
							world.Reboot()
						if("No")
							if(RBM)
								usr<<"<B>Once Reboot Mode Is Activated, It Cannot Be Stopped"
							else
								usr<<"<B>You've Chosen Not To Reboot NHS</B>"
				if("Repop Server")
					world<<"<B><font color = green>World Refreshed By [usr]."
					text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: World Refreshed By [usr]<BR>","GMlog.html")
					world.Repop()
				if("Change Server Status")
					world.status=input("Enter New World Status","Change World Status",world.status)
				if("Set Server Delay")
					var/nDelay = input(usr, "What do you want to set the tick_lag to?[ascii2text(10)]Current tick_lag is [world.tick_lag]","Set World Delay","1") as null|num
					if (nDelay == null)
						nDelay = 1
					else if (nDelay == 0)
						nDelay = 1
					else if (nDelay > 100)
						nDelay = 10
					else if (nDelay < 10)
						nDelay = 1
					world.tick_lag = nDelay
					text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: Server Delay Changed By [usr]<BR>","GMlog.html")
					world << "<font color=red><i>World delay set to [(nDelay/10)] second(s)</i></strong>"
				if("Cancel")
					return

		MusicPlay(S as sound)
			set name = "Music Play"
			set category = "Host"
			view(src) << sound(S,0)
			view(src) << "<b>[src.name] Started The Song [S]"

		MusicStop()
			set name = "Music Stop"
			set category = "Host"
			view(src) << sound(null)
			view(src) << "<b>[src.name] Stopped All Music Playing"

