mob/Police
	verb
		Jail()
			set category="Police"
			var/list/choose=list()
			for(var/mob/M in world)choose.Add(M)
			var/cancel="Cancel"
			choose+=cancel
			var/mob/M=input("Which character do you want to jail?") as null|anything in choose
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
					world<<"<b><font color=white>[M]<font color=red> has been jailed by <font color=white>[usr]<font color=red>. He is jailed for <font color=white>[input2]<font color=red> seconds and the reason is <font color=white>[input]<font color=red>."
					M.jailtime=input2
					M.jailtime()
				else
					M.jailtime=86400
					M.jailtime()
					world<<"<b><font color=white>[M]<font color=red> has been jailed by <font color=white>[usr]<font color=red>. He is jailed for an indefinite amount of time and the reason is <font color=white>[input]<font color=red>."
			else
				if((input2+M.jailtime)<=86400)
					M.jailtime+=input2
					src.loc = locate(81,36,39)
					world<<"<b><font color=white>[M]<font color=red>'s jail time has been extended to <font color=white>[M.jailtime] seconds<font color=red> by <font color=white>[usr]<font color=red>.The reason for the extension is <font color=white>[input]<font color=red>."
				else
					M.jailtime=86400
					src.loc = locate(81,36,39)
					world<<"<b><font color=white>[M]<font color=red>'s jail time has been extended to <font color=white>24 hours<font color=red> by <font color=white>[usr]<font color=red>.The reason for the extension is <font color=white>[input]<font color=red>."
		Unjail()
			set category="Police"
			var/list/choose=list()
			for(var/mob/M in world)if(M.jailtime)choose.Add(M)
			var/cancel="Cancel"
			choose+=cancel
			var/mob/M=input("Which character do you want to unjail?") as null|anything in choose
			if(M.constantx) return
			if(!M)return
			if(M.jailtime)
				M.loc=locate(6,58,20)
				M.OOC = 1
				M.PK = 1
				M.SaveK()
				M.jailtime=0
				world<<"<b><font color=white>[M]<font color=red> has been unjailed by <font color=white>[usr]<font color=red>."
				text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M] Was UnJailed By [usr]<BR>","GMlog.html")
			else
				return
		Summon()
			set category = "Police"
			var/mob/M = input("Who Would You Like To Summon","Summon") as null|anything in players
			if(!M) return
			if(M.Notele) return
			M.loc = locate(usr.x,usr.y-1,usr.z)
			src.dir = SOUTH // face them
			M << "You have been summoned by Police [src.name]"
		Teleport()
			set category = "Police"
			var/mob/M = input("Who Would You Like To Teleport To","Teleport")as null|anything in players
			if(!M) return
			if(M.Notele) return
			M << "Police [usr] teleports next to you"
			usr << "You teleport next to [M]"
			usr.loc = locate(M.x,M.y-1,M.z)
		InviteA()
			set category="Organization"
			set name="Organization Invite"
			var/mob/M = input("","Invite")as null|anything in players
			if(!M) return
			if(M.rank=="Missing"&&M.Village=="None"&&src.recruits<=9)
				M.Village="PoliceForce"
				var/obj/Police/H = new()
				var/obj/Police/S = new()
				usr.verbs += /mob/Hyuuga/verb/ByakuganSearch
				M.rank = "Missing"
				H.loc=M
				S.loc=M
				M.cap=Ocap
				M.policemember=1
				M.squads=1
				M.recruits+=1
				M.squad="[src.squad]"
			else
				usr<<"Cannot be done, There in a village."
		BootA()
			set category="Organization"
			set name="Organization Boot"
			var/mob/M = input("","Boot")as null|anything in players
			if(!M) return
			if(M==usr) return
			if(M.policemember)
				usr<<"You Have Removed [M] From The PoliceForce"
				M.Village="Missing"
				for(var/obj/Police/H in M.contents)
					del(H)
				for(var/obj/Police/S in M.contents)
					del(S)
				usr.verbs -= /mob/Hyuuga/verb/ByakuganSearch
				M.rank = "Missing"
				M.cap=Hcap
				M.recruits-=1
				M.policeleader=0
				M.policemember=0
				M.squads=0
				M.squad=""
			else
				usr<<"Cannot be done, He's either the leader or not even in the Police Force"
