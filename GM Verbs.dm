mob/GM
	verb
		Toggle_Tele()
			set category = "Staff"
			set desc="Turn on/off being teleported to and summoned"
			if(!usr.Notele)
				usr.Notele=1
				usr<<"Players cannot teleport or summon you"
			else
				usr.Notele=0
				usr<<"Players are now able to teleport or summon you"
		Ban()
			set category = "Staff"
			set desc="Ban a player"
			var/mob/M = input("","Ban")as null|anything in players
			if(!M) return
			if(M==usr)
				usr<<"<font color = red>Cant Ban Yourself</font>"
				return
			if(M.constantx) return
			if(M.client)
				KeyBans.Add(M.key)
				var/savefile/S=new("Bans.sav")
				S["Key"] << KeyBans
				world<<"<font color = red>[M] has been Banned by [usr].</font>"
				text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M] Was Banned By [usr]<BR>","GMlog.html")
				del(M)
			else
				usr<<"<font color = red>You can only Ban players."
		Summon()
			set category = "Staff"
			var/mob/M = input("Who Would You Like To Summon","Summon")as null|anything in players
			if(!M) return
			M.loc = locate(usr.x,usr.y-1,usr.z)
			src.dir = SOUTH // face them
			M << "You have been summoned by [src.Rank2] [src.name]"
		Teleport()
			set category = "Staff"
			var/mob/M = input("Who Would You Like To Teleport To","Teleport")as null|anything in players
			if(!M) return
			M << "[usr.Rank2] [usr] teleports next to you"
			usr << "You teleport next to [M]"
			usr.loc = locate(M.x,M.y-1,M.z)
		GMOOC(msg as text)
			set category = "Staff"
			set name = "GM OOC"
			text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: Staff Member [usr] Said: \"[msg]\"<BR>","GMOOClog.html")
			for(var/mob/M in world)
				if(M.GM)
					M<<"(GM OOC)( <font color=green>[usr]</font color>: [msg] )"
		Rename()
			set category="Staff"
			set desc="Change A Mob's ID"
			var/mob/M = input("","Choose Player") as null|anything in players
			if(M.constantx) return
			if(!M) return
			var/ID = input("","Rename")as text
			if(length(ID) <= 2)
				src<<"<font color = red> Their name must be longer then 2 characters!"
			else
				src<<"[M]'s name is now [ID]"
				text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M] Was Renamed To ([ID]) By [usr]<BR>","GMlog.html")
				M.name=ID
				M.SaveK()
		Boot()
			set name = "Kick"
			set category = "Staff"
			var/mob/M = input("Who would you like to Kick?","Kick") as null|anything in players
			if(!M) return
			if(M.constantx) return
			if(M==usr)
				usr<<"Can't Boot Yourself...lol"
				return
			else
				if(M != null)     // make sure they havn't signed off any time soon.
					var/R = input("Why are you booting [M:name]?","Boot") as text|null
					if(R == "" || R == null)
						world << "[M:name] Has Been Kicked"
						text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [usr] Kicked [M:name]<BR>","GMlog.html")
					else
						world << "[M:name] Has Been Kicked For \"[R]\""
						text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [usr] Kicked [M:name] For \"[R]\"<BR>","GMlog.html")
					del(M)
		World_Mute()
			set category = "Staff"
			set name = "World Mute"
			world << "<b><font size=1>[src] Mutes The World"
			text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [src] Muted The World<BR>","GMlog.html")
			worldC=0
		World_Unmute()
			set category = "Staff"
			set name = "World Unmute"
			world << "<b><font size=1>[src] Unmuted The World"
			text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [src] Unmuted The World<BR>","GMlog.html")
			worldC=1
		Mute()
			set category = "Staff"
			var/Choice = alert("Choose An Option","Option", "Mute", "Unmute")
			if(Choice == "Mute")
				var/mob/M = input("Who would you like to Mute?","Mute") as null|anything in players
				if(M.constantx) return
				if(!M) return
				M << "You Have Been Muted"
				world << "[M] Was Muted By [usr]!"
				M.OOC = 0
				text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M] Was Muted By [usr]<BR>","GMlog.html")
				M.SaveK()
			if(Choice == "Unmute")
				var/mob/M = input("Who would you like to UnMute?","UnMute") as null|anything in players
				if(!M) return
				M << "You Have Been Unmuted"
				world << "[M] Was Unmuted By [usr]."
				M.OOC = 1
				text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M] Was Unmuted By [usr]<BR>","GMlog.html")
				M.SaveK()
		FixIcon()
			set category="Staff"
			set name = "Fix Icon"
			var/mob/M = input("","Fix Icon") as null|anything in players
			if(M.constantx) return
			if(!M) return
			M.overlays=null
			M.underlays=null
			M<<"Your icon has been fixed"
			M.SaveK()
		Force_Save()
			set category = "Staff"
			var/mob/M = input("","Force Save")as null|anything in players
			if(!M) return
			M.SaveK()

		Jail()
			set category="Staff"
			var/mob/M=input("Which character do you want to jail?") as null|anything in players
			if(!M)return
			if(M.constantx) return
			var/input=input("Why Are You Jailing [M]? You May Not Skip This.")as null|text
			if(!input)input="Not Stated"
			var/input2=input("How many seconds do you want to jail him for?(Maximum of 86400)")as num
			if(input2<=0||input2==null)return
			if(input2>=1)input2=input2
			if(input2>86400)input2=86400
			text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M] Was Jailed By [usr] For '[input]'<BR>","GMlog.html")
			if(!M.jailtime)
				if(input2<86400)
					var/mins=0
					var/hours=0
					var/jailtimecheck=input2
					Start
					if(jailtimecheck >=35000)
						jailtimecheck-=35000
						hours+=10
						goto Start
					if(jailtimecheck >=3500)
						jailtimecheck-=3500
						hours+=1
						goto Start
					if(jailtimecheck >=600)
						jailtimecheck-=600
						mins+=10
						goto Start
					if(jailtimecheck >=60)
						jailtimecheck-=60
						mins+=1
						goto Start
					if(hours>0)world<<"<b><font color=white>[M]<font color=red> has been jailed by <font color=white>[usr]<font color=red>. He is jailed for <font color=white>[hours]<font color=red> hours <font color=white>[mins]<font color=red> minutes and <font color=white>[jailtimecheck]<font color=red> seconds Reason: <font color=white>[input]<font color=red>."
					else if(mins>0) world<<"<b><font color=white>[M]<font color=red> has been jailed by <font color=white>[usr]<font color=red>. He is jailed for <font color=white>[mins]<font color=red> minutes and <font color=white>[jailtimecheck]<font color=red> seconds Reason: <font color=white>[input]<font color=red>."
					else world<<"<b><font color=white>[M]<font color=red> has been jailed by <font color=white>[usr]<font color=red>. He is jailed for <font color=white>[jailtimecheck]<font color=red> seconds Reason: <font color=white>[input]<font color=red>."
					M.jailtime=input2
					M.jailtime()
				else
					M.jailtime=86400
					M.jailtime()
					world<<"<b><font color=white>[M]<font color=red> has been jailed by <font color=white>[usr]<font color=red>. He is jailed for an indefinite amount of time and the reason is <font color=white>[input]<font color=red>."
			else
				if((input2+M.jailtime)<=86400)
					M.jailtime+=input2
					src.loc = locate(510,673,2)
					world<<"<b><font color=white>[M]<font color=red>'s jail time has been extended to <font color=white>[M.jailtime] seconds<font color=red> by <font color=white>[usr]<font color=red>.The reason for the extension is <font color=white>[input]<font color=red>."
				else
					M.jailtime=86400
					src.loc = locate(510,673,2)
					world<<"<b><font color=white>[M]<font color=red>'s jail time has been extended to <font color=white>24 hours<font color=red> by <font color=white>[usr]<font color=red>.The reason for the extension is <font color=white>[input]<font color=red>."
		Unjail()
			set category="Staff"
			var/list/choose=list()
			for(var/mob/M in world)if(M.jailtime)choose.Add(M)
			var/cancel="Cancel"
			choose+=cancel
			var/mob/M=input("Which character do you want to unjail?") as null|anything in choose
			if(M.constantx) return
			if(!M)return
			if(M.jailtime)
				M.loc=locate(515,685,1)
				M.OOC = 1
				M.PK = 1
				M.SaveK()
				M.jailtime=0
				world<<"<b><font color=white>[M]<font color=red> has been unjailed by <font color=white>[usr]<font color=red>."
				text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M] Was UnJailed By [usr]<BR>","GMlog.html")
			else
				return

/*		GotoGMR()
			set name = "Goto GMRoom"
			set category = "Staff"
			usr.loc = locate(50,50,50)*/