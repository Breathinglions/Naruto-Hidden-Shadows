mob/hokage
	verb
		EscapeW()
			set category = "Kage"
			set name = "Retreat from War"
			if(usr.inthewar&&war==1)
				usr.loc=locate(6,58,20)
				usr.inthewar=0
				for(var/mob/M in world)
					if(M.inthewar)
						(M) << sound(null)
						if(M.z==17&&M.Village=="Leaf"&&M.inthewar==1)
							world<<"<b>Leaf has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
						if(M.z==17&&M.Village=="Mist"&&M.inthewar==1)
							world<<"<b>Mist has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
						if(M.z==17&&M.Village=="Rain"&&M.inthewar==1)
							world<<"<b>Rain has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
						if(M.z==17&&M.Village=="Cloud"&&M.inthewar==1)
							world<<"<b>Cloud has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
						if(M.z==17&&M.Village=="Rock"&&M.inthewar==1)
							world<<"<b>Rock has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
						if(M.z==17&&M.Village=="Sand"&&M.inthewar==1)
							world<<"<b>Sand has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
						if(M.z==17&&M.Village=="Sound"&&M.inthewar==1)
							world<<"<b>Sound has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
						if(M.z==17&&M.Village=="Snow"&&M.inthewar==1)
							world<<"<b>Snow has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
						if(M.z==17&&M.Village=="Grass"&&M.inthewar==1)
							world<<"<b>Grass has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
						if(M.z==17&&M.Village=="Waterfall"&&M.inthewar==1)
							world<<"<b>Waterfall has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
						if(M.z==17&&M.Village=="Sound Organization"&&M.inthewar==1)
							world<<"<b>Sound Organization has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
						if(M.z==17&&M.Village=="Akatsuki"&&M.inthewar==1)
							world<<"<b>Akatsuki has lost the war!"
							if(M.inthewar)
								M.loc=locate(6,58,20)
								M.inthewar=0
		WAR()
			set category = "Kage"
			set name = "Declare War"
			var/text=input("Who will you goto war with?")in list("Leaf","Mist","Cloud","Rock","Sand","Sound","Snow","Waterfall","Rain","Grass","AKAT","SO")
			if(text==usr.Village)
				usr<<"Dont declare war on your own Village retard."
				return
			if(usr.Village=="Leaf")
				world<<"<font color=red><font size = 5><b>[usr.Village] is preparing for an attack."
				usr.PK=1
				usr.inwar1=1
				for(var/mob/E in world)
					if(E&&E.Village=="Leaf"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Rain")
				world<<"<font color=red><font size = 5><b>[usr.Village] is preparing for an attack."
				usr.PK=1
				usr.inwar1=1
				for(var/mob/E in world)
					if(E&&E.Village=="Rain"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"

			if(usr.Village=="Mist")
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is preparing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Mist"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Cloud")
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is preparing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Cloud"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Rock")
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is preparing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Cloud"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Sand")
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is preparing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Sand"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Sound")
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is preparing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Sound"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Grass")
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is preparing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Grass"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Snow")
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is preparing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Snow"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="Waterfall")
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is preparing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Waterfall"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="SO")
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is preparing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Sound Organization"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			if(usr.Village=="AKAT")
				usr.PK=1
				usr.inwar1=1
				world<<"<font color=red><font size = 5><b>[usr.Village] is preparing for an attack."
				for(var/mob/E in world)
					if(E&&E.Village=="Akatsuki"&&E.war==1)
						switch(input(E,"Join your village war?", text) in list ("Yes","No"))
							if("Yes")
								E.inthewar=1
								E.loc=locate(3,20,17)
								E.PK=1
								E.inwar1=1
								(E) << sound(null)
								E<<'Go go go Naruto.mid'
							if("No")
								E<<"Coward"
			for(var/mob/K in world)
				if(K.Village=="[text]"&&K.rank=="Kage")
					switch(input(K,"You are under attack! Defend it?", text) in list ("Yes","No"))
						if("No")
							world<<"<font color=blue><font size=5>[text] has cowarded out and is summiting to [usr.Village]!<br><font color=red>[usr.Village] has won the war!"
							return
			switch(text)
				if("Leaf")
					world<<"<font color=blue><font size = 5><b>Leaf is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Leaf"&&E.war==1)
							if(usr.jailtime)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("Mist")
					world<<"<font color=blue><font size=5>Mist is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Mist"&&E.war==1)
							if(usr.jailtime)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("Rain")
					world<<"<font color=blue><font size = 5><b>Rain is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Rain"&&E.war==1)
							if(usr.jailtime)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"

				if("Cloud")
					world<<"<font color=blue><font size = 5><b>Cloud is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Cloud"&&E.war==1)
							if(usr.jailtime)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("Rock")
					world<<"<font color=blue><font size = 5><b>Rock is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Rock"&&E.war==1)
							if(usr.jailtime)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("Sand")
					world<<"<font color=blue><font size = 5><b>Sand is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Sand"&&E.war==1)
							if(usr.jailtime)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"

				if("Grass")
					world<<"<font color=blue><font size = 5><b>Grass is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Grass"&&E.war==1)
							if(usr.jailtime)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("Snow")
					world<<"<font color=blue><font size = 5><b>Snow is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Snow"&&E.war==1)
							if(usr.jailtime)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("Waterfall")
					world<<"<font color=blue><font size = 5><b>Waterfall is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Waterfall"&&E.war==1)
							if(usr.jailtime)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("SO")
					world<<"<font color=blue><font size = 5><b>Sound Organization is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Sound Organization"&&E.war==1)
							if(usr.jailtime)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("AKAT")
					world<<"<font color=blue><font size = 5><b>Akatsuki is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Akatsuki"&&E.war==1)
							if(usr.jailtime)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"
				if("Sound")
					world<<"<font color=blue><font size = 5><b>Sound is gathering to defend."
					for(var/mob/E in world)
						if(E&&E.Village=="Sound"&&E.war==1)
							if(usr.jailtime)
								return
							switch(input(E,"Join your village war?", text) in list ("Yes","No"))
								if("Yes")
									E.inthewar=1
									E.loc=locate(98,20,17)
									E.PK=1
									E.inwar2=1
									(E) << sound(null)
									E<<'Go go go Naruto.mid'
								if("No")
									E<<"Coward"

		VillageBoot(mob/M in world)
			set category="Kage"
			if(M.Village == usr.Village)
				text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M] was booted from [M.Village] by [usr]<BR>","Kagelog.html")
				M.Village="None"
				M.rank="Missing"
				M.soundleader=0
				M.soundmember=0
				M.akatsukimember=0
				M.akatsukileader=0
				M.cap = Jcap
				M.verbs+= new /mob/jutsu/verb/BakuretsuBunshin
				for(var/obj/AKAH/H in M.contents)
					del(H)
				for(var/obj/AKAS/S in M.contents)
					del(S)
				for(var/obj/SOSuit/S in M.contents)
					del(S)
			else
				usr<<"You can not edit some one's rank from another villages."

/*		Reward(mob/M in world)
			set category="Kage"
			if(usr.Yen>=100000)
				usr<<"They already have as much Yen as they can carry."
				return
			else
				M.Yen += 10000
				M<<"You receive 10k reward from [src]"
				src<<"You give [M] 10k reward"*/

		Jail()
			set category="Kage"
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
			set category="Kage"
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



		OverlaysFix(mob/M in world)
			set category="Kage"
			if(M.constantx) return
			text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M]'s overlays were fixed by [usr]<BR>","Kagelog.html")
			M.overlays=null
			M.underlays=null
			M<<"Use the Fix Me option and Don't let anyone catch you like this again"
			M.SaveK()

		FixIcon()
			set category="Kage"
			set name = "Fix Icon"
			var/mob/M = input("","Fix Icon") as null|anything in players
			if(!M) return
			if(M.constantx) return
			text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M]'s icon was fixed by [usr]<BR>","Kagelog.html")
			M.overlays=null
			M.underlays=null
			M<<"Your icon has been fixed"
			M.SaveK()


		Summon()
			set name = "Summon"
			set category = "Kage"
			var/mob/M = input("Who Would You Like To Summon","Summon")as null|anything in players
			if(!M) return
			if(M.Notele) return
			M.loc = locate(usr.x,usr.y-1,usr.z)
			src.dir = SOUTH // face them
			M << "You have been summoned by Owner [src.name]"
		Teleport()
			set category = "Kage"
			var/mob/M = input("Who Would You Like To Teleport To","Teleport")as null|anything in players
			if(!M) return
			if(M.Notele) return
			M << "Kage [usr] teleports next to you"
			usr << "You teleport next to [M]"
			usr.loc = locate(M.x,M.y-1,M.z)

		MakeAnbu()
			set category = "Kage"
			var/mob/M = input("","Make Anbu")as null|anything in players
			if(!M) return
			if(M.JP)
				usr<<"You Are Only Allowed One Jutsu"
				return
			if(M.Village == usr.Village&&M.smission>=5)
				switch(input("What Jutsu do you wish to give them?", text) in list("Bug Bunshin","Mushi","Nikudan","Bubun Baika","Clay Bunshin","Clay Bunshin Explosion","Sand Flight","Sand Sphere","Sensatsu Suishou","Mirrors","Tracking Fang","Kaiten","Hakke Kuushou","Tsuuga","Capture Blood","Blood Possession Ritual","Bone Sword","Teshi Sendan","Sawarabi","Bee Wings","Spider Web","Konoha Senpuu","Ura Renge","Slice Tendons","Absorb","Kage Shibari","Tajuu Bunshin","Nisen Rendan","Snakes","Soul Removal","Wind Tunnel","Lion's Barrage","Teleport","Fly","Blind","Kage Shuriken","Kage Kunai","Cancel"))
					if("Lion's Barrage")
						M.verbs += new /mob/Uchiha/verb/LionsBarrage()
					if("Wind Tunnel")
						M.verbs += new /mob/Temari/verb/WD()
					if("Soul Removal")
						M.verbs += new /mob/Pein/verb/PathofHuman()
					if("Snakes")
						M.verbs += new /mob/Orochimaru/verb/Snake()
					if("Spider Web")
						M.verbs += new /mob/Kidomaru/verb/Spiderweb()
					if("Blood Possession Ritual")
						M.verbs += new /mob/Hidan/verb/Ritual()
					if("Capture Blood")
						M.verbs += new /mob/Hidan/verb/Steal_B()
					if("Tracking Fang")
						M.verbs += new /mob/Hatake/verb/Fang_P()
					if("Sand Flight")
						M.verbs += new /mob/SandF/verb/Fly()
					if("Clay Bunshin")
						M.verbs += new /obj/bunshins/ClayBunshinnojutsu/verb/ClayBunshinNoJutsu()
					if("Clay Bunshin Explosion")
						M.verbs += new /mob/jutsu/verb/ClayArt_BE()
					if("Bug Bunshin")
						M.verbs += new /obj/bunshins/KekkaiKonchuuBunshinnoJutsu/verb/KekkaiKonchuuBunshinnoJutsu()
					if("Mushi")
						M.verbs += new /mob/Aburame/verb/Mushi()
					if("Restore")
						M.verbs += new /mob/Medical/verb/Restore_Jutsu()
					if("Absorb")
						M.verbs += new /mob/Medical/verb/ChakraAbsorb()
					if("Focus")
						M.verbs += new /mob/Tenten/verb/Focus()
					if("Homing Shuriken")
						M.verbs += new /mob/Tenten/verb/HomingShuriken()
					if("Homing Kunai")
						M.verbs += new /mob/Tenten/verb/HomingKunai()
					if("Homing Windmill")
						M.verbs += new /mob/Tenten/verb/HomingWindmill()
					if("Kaiten")
						M.verbs += new /mob/Hyuuga/verb/HakkeshouKaiten()
					if("Bee Sabaku Kyuu")
						M.verbs += new /mob/Kamizuri/verb/BeeSabakuKyuu()
					if("Bee Sabaku Sousou")
						M.verbs += new /mob/Kamizuri/verb/BeeSabakuSousou()
					if("Hakke Kuushou")
						M.verbs += new /mob/Hyuuga/verb/HakkeKuusho()
					if("Katon Ryuuka")
						M.verbs += new /mob/katon/verb/KatonRyuukanoJutsu()
					if("Mist Armor")
						M.verbs += new /mob/mist/verb/MistArmor()
					if("Ice Armor")
						M.verbs += new /mob/ice/verb/IceArmor()
					if("Rai No Jutsu")
						M.verbs += new /mob/rai/verb/RaiArmor()
					if("Zan No Jutsu")
						M.verbs += new /mob/sound/verb/ZanArmor()
					if("Katon Karyuu Endan")
						M.verbs += new /mob/katon/verb/KatonKaryuuEndan()
					if("Sensatsu Suishou")
						M.verbs += new /mob/Haku/verb/SensatsuSuishou()
					if("Mist")
						M.verbs += new /mob/mist/verb/KirigakurenoJutsu()
					if("Mirrors")
						M.verbs += new /mob/Haku/verb/MakyouHyoushou()
					if("Nikudan")
						M.verbs += new /mob/Akimichi/verb/NikudanSensha()
					if("Bubun Baika")
						M.verbs += new /mob/Akimichi/verb/BabunBaikaNoJutsu()
					if("Kage Shibari")
						M.verbs += new /mob/Nara/verb/kageshibari()
						M.verbs += new /mob/Nara/verb/ExtendShadow()
						M.verbs += new /mob/Nara/verb/RetractShadow()
						M.verbs += new /mob/Nara/verb/KageKubiShibaru()
					if("Bone Sword")
						M.verbs += new /mob/Kaguya/verb/CreateBoneSword()
					if("Bone Whip")
						M.verbs += new /mob/Kaguya/verb/CreateSpineWhip()
					if("Yanagi")
						M.verbs += new /mob/Kaguya/verb/YanagiNoMai()
					if("Tsubaki")
						M.verbs += new /mob/Kaguya/verb/TsubakiNoMai()
					if("Karamatsu")
						M.verbs += new /mob/Kaguya/verb/KaramatsuNoMai()
					if("Teshi Sendan")
						M.verbs += new /mob/Kaguya/verb/TeshiSendan()
					if("Tessenka")
						M.verbs += new /mob/Kaguya/verb/TessenkaNoMai()
					if("Sawarabi")
						M.verbs += new /mob/Kaguya/verb/Sawarabi()
					if("Tame")
						M.verbs += new /mob/Inuzuka/verb/Tame()
					if("Tsuuga")
						M.verbs += new /mob/Inuzuka/verb/Tsuuga()
					if("Gatsuuga")
						M.verbs += new /mob/Inuzuka/verb/Gatsuuga()
					if("Soutourou")
						M.verbs += new /mob/Inuzuka/verb/Soutourou()
					if("Konoha Renpuu")
						M.verbs += new /mob/Lee/verb/KonohaReppu()
					if("Konoha Senpuu")
						M.verbs += new /mob/Lee/verb/KonohaSenpuu()
					if("Omote Renge")
						M.verbs += new /mob/Lee/verb/OmoteRenge()
					if("Ura Renge")
						M.verbs += new /mob/Lee/verb/UraRenge()
					if("Konoha Genuriki Senpuu")
						M.verbs += new /mob/Lee/verb/KonohaGenkurikiSenpuu()
					if("Suna Shuirken")
						M.verbs += new /mob/Gaara/verb/SunaShuriken()
					if("Suna Shushin")
						M.verbs += new /mob/Gaara/verb/SunaShushinNoJutsu()
					if("Sand Sphere")
						M.verbs += new /mob/Gaara/verb/SandSphere()
					if("Sand Armor")
						M.verbs += new /mob/Gaara/verb/SandArmor()
					if("Sabaku Kyuu")
						M.verbs += new /mob/Gaara/verb/SabakuKyuu()
					if("Sabaku Sousou")
						M.verbs += new /mob/Gaara/verb/SabakuSousou()
					if("Shousen")
						M.verbs += new /mob/Medical/verb/Shousen_Jutsu()
					if("Chakra No Mesu")
						M.verbs += new /mob/Medical/verb/ChakraNoMesu()
					if("Slice Tendons")
						M.verbs += new /mob/Medical/verb/SliceTendons()
					if("Screw Nerves")
						M.verbs += new /mob/Medical/verb/ScrewNerves()
					if("Fire Armor")
						M.verbs += new /mob/katon/verb/FireArmor()
					if("Hunter")
						M.verbs += new /mob/jutsu/verb/JourouSenbon()
					if("Missing")
						M.verbs+= new /mob/jutsu/verb/BakuretsuBunshin()
					if("Teleport")
						M.verbs += new /mob/Nara/verb/kageteleport()
					if("Fly")
						M.verbs += new /mob/flight/verb/Fly()
					if("Bee Armor")
						M.verbs += new /mob/Kamizuri/verb/BeeArmor()
					if("Bug Armor")
						M.verbs += new /mob/Aburame/verb/BugArmor()
					if("Bug Kyuu")
						M.verbs += new /mob/Aburame/verb/KonchuuKyuu()
					if("Bug Sousou")
						M.verbs += new /mob/Aburame/verb/KonchuuSousou()
					if("Bees")
						M.verbs += new /mob/Kamizuri/verb/summonbees()
						M.verbs += new /mob/Kamizuri/verb/Placebee()
						M.verbs += new /mob/Kamizuri/verb/Destroybee()
					if("Explode Bee")
						M.verbs += new /mob/Kamizuri/verb/ExplodeBee()
					if("Bee Wings")
						M.verbs += new /mob/Beeflight/verb/Fly()
					if("Sexy")
						M.verbs += new /mob/jutsu/verb/Sexy()
					if("Kage Shuriken")
						M.verbs += new /mob/shurikenmove/verb/KageShuriken()
					if("Kage Kunai")
						M.verbs += new /mob/shurikenmove/verb/KageKunai()
					if("Tajuu Bunshin")
						M.verbs += new /obj/bunshins/TajuuKageBunshinNoJutsu/verb/TajuuKageBunshinNoJutsu()
					if("Nisen Rendan")
						M.verbs += new /mob/jutsu/verb/NisenRendan()
					if("Cancel")
						M.JP = 0
						return
				text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M] was made ANBU by [usr]<BR>","Kagelog.html")
				usr<<"Jutsu Has Been Picked"
				M<<"You have been promoted to the rank of Anbu"
				world<<"[M] is now an Anbu"
				M.rank = "Anbu"
				M.cap = Acap
				M.JP = 1
				if(src.Village=="Leaf")
					M.ChakraC=100
					M.squad="Leaf Anbu"
					M.squads=1
					var/obj/AnbuR/R = new/obj/AnbuR
					R.loc=M
				if(src.Village =="Sand")
					M.ChakraC=100
					M.squad="Sand Anbu"
					M.squads=1
					var/obj/AnbuY/R = new/obj/AnbuY
					R.loc = M
				if(src.Village =="Sound")
					M.ChakraC=100
					M.squad="Sound Anbu"
					M.squads=1
					var/obj/AnbuBla/R = new/obj/AnbuBla
					R.loc = M
				if(src.Village =="Grass")
					M.ChakraC=100
					M.squad="Grass Anbu"
					M.squads=1
					var/obj/AnbuG/R = new/obj/AnbuG
					R.loc = M
				if(src.Village =="Rain")
					M.ChakraC=100
					M.squad="Rain Anbu"
					M.squads=1
					var/obj/AnbuB/R = new/obj/AnbuB
					R.loc = M
				if(src.Village =="Cloud")
					M.ChakraC=100
					M.squad="Cloud Anbu"
					M.squads=1
					var/obj/AnbuGr/R = new/obj/AnbuGr
					R.loc = M
				if(src.Village =="Mist")
					M.ChakraC=100
					M.squad="Mist Anbu"
					M.squads=1
					var/obj/AnbuLB/R = new/obj/AnbuLB
					R.loc = M
				if(src.Village =="Rock")
					M.ChakraC=100
					M.squad="Rock Anbu"
					M.squads=1
					var/obj/AnbuBr/R = new/obj/AnbuBr
					R.loc = M
				if(src.Village =="Snow")
					M.ChakraC=100
					M.squad="Snow Anbu"
					M.squads=1
					var/obj/AnbuW/R = new/obj/AnbuW
					R.loc = M
				if(src.Village =="Waterfall")
					M.ChakraC=100
					M.squad="Waterfall Anbu"
					M.squads=1
					var/obj/AnbuDB/R = new/obj/AnbuDB
					R.loc = M
					return
			else
				usr<<"They are not from your village or they are not strong enough for that rank or has not done 5 S Rank Missions Yet."

		MakeAnbuCaptain()
			set category = "Kage"
			var/mob/M = input("","Make Anbu Captain")as null|anything in players
			if(!M) return
			if(M.JP1)
				usr<<"You Are Only Allowed One Jutsu"
				return
			if(M.Village == usr.Village&&M.smission>=25)
				switch(input("What Jutsu do you wish to give them?", text) in list("Bug Bunshin","Mushi","Nikudan","Bubun Baika","Clay Bunshin","Clay Bunshin Explosion","Sand Flight","Sand Sphere","Sensatsu Suishou","Mirrors","Tracking Fang","Kaiten","Hakke Kuushou","Tsuuga","Capture Blood","Blood Possession Ritual","Bone Sword","Teshi Sendan","Sawarabi","Bee Wings","Spider Web","Konoha Senpuu","Ura Renge","Slice Tendons","Absorb","Kage Shibari","Tajuu Bunshin","Nisen Rendan","Snakes","Soul Removal","Wind Tunnel","Lion's Barrage","Teleport","Fly","Blind","Kage Shuriken","Kage Kunai","Cancel"))
					if("Lion's Barrage")
						M.verbs += new /mob/Uchiha/verb/LionsBarrage()
					if("Wind Tunnel")
						M.verbs += new /mob/Temari/verb/WD()
					if("Soul Removal")
						M.verbs += new /mob/Pein/verb/PathofHuman()
					if("Snakes")
						M.verbs += new /mob/Orochimaru/verb/Snake()
					if("Spider Web")
						M.verbs += new /mob/Kidomaru/verb/Spiderweb()
					if("Blood Possession Ritual")
						M.verbs += new /mob/Hidan/verb/Ritual()
					if("Capture Blood")
						M.verbs += new /mob/Hidan/verb/Steal_B()
					if("Tracking Fang")
						M.verbs += new /mob/Hatake/verb/Fang_P()
					if("Sand Flight")
						M.verbs += new /mob/SandF/verb/Fly()
					if("Clay Bunshin")
						M.verbs += new /obj/bunshins/ClayBunshinnojutsu/verb/ClayBunshinNoJutsu()
					if("Clay Bunshin Explosion")
						M.verbs += new /mob/jutsu/verb/ClayArt_BE()
					if("Bug Bunshin")
						M.verbs += new /obj/bunshins/KekkaiKonchuuBunshinnoJutsu/verb/KekkaiKonchuuBunshinnoJutsu()
					if("Mushi")
						M.verbs += new /mob/Aburame/verb/Mushi()
					if("Restore")
						M.verbs += new /mob/Medical/verb/Restore_Jutsu()
					if("Absorb")
						M.verbs += new /mob/Medical/verb/ChakraAbsorb()
					if("Focus")
						M.verbs += new /mob/Tenten/verb/Focus()
					if("Homing Shuriken")
						M.verbs += new /mob/Tenten/verb/HomingShuriken()
					if("Homing Kunai")
						M.verbs += new /mob/Tenten/verb/HomingKunai()
					if("Homing Windmill")
						M.verbs += new /mob/Tenten/verb/HomingWindmill()
					if("Kaiten")
						M.verbs += new /mob/Hyuuga/verb/HakkeshouKaiten()
					if("Bee Sabaku Kyuu")
						M.verbs += new /mob/Kamizuri/verb/BeeSabakuKyuu()
					if("Bee Sabaku Sousou")
						M.verbs += new /mob/Kamizuri/verb/BeeSabakuSousou()
					if("Hakke Kuushou")
						M.verbs += new /mob/Hyuuga/verb/HakkeKuusho()
					if("Katon Ryuuka")
						M.verbs += new /mob/katon/verb/KatonRyuukanoJutsu()
					if("Mist Armor")
						M.verbs += new /mob/mist/verb/MistArmor()
					if("Ice Armor")
						M.verbs += new /mob/ice/verb/IceArmor()
					if("Rai No Jutsu")
						M.verbs += new /mob/rai/verb/RaiArmor()
					if("Zan No Jutsu")
						M.verbs += new /mob/sound/verb/ZanArmor()
					if("Katon Karyuu Endan")
						M.verbs += new /mob/katon/verb/KatonKaryuuEndan()
					if("Sensatsu Suishou")
						M.verbs += new /mob/Haku/verb/SensatsuSuishou()
					if("Mist")
						M.verbs += new /mob/mist/verb/KirigakurenoJutsu()
					if("Mirrors")
						M.verbs += new /mob/Haku/verb/MakyouHyoushou()
					if("Nikudan")
						M.verbs += new /mob/Akimichi/verb/NikudanSensha()
					if("Bubun Baika")
						M.verbs += new /mob/Akimichi/verb/BabunBaikaNoJutsu()
					if("Kage Shibari")
						M.verbs += new /mob/Nara/verb/kageshibari()
						M.verbs += new /mob/Nara/verb/ExtendShadow()
						M.verbs += new /mob/Nara/verb/RetractShadow()
						M.verbs += new /mob/Nara/verb/KageKubiShibaru()
					if("Bone Sword")
						M.verbs += new /mob/Kaguya/verb/CreateBoneSword()
					if("Bone Whip")
						M.verbs += new /mob/Kaguya/verb/CreateSpineWhip()
					if("Yanagi")
						M.verbs += new /mob/Kaguya/verb/YanagiNoMai()
					if("Tsubaki")
						M.verbs += new /mob/Kaguya/verb/TsubakiNoMai()
					if("Karamatsu")
						M.verbs += new /mob/Kaguya/verb/KaramatsuNoMai()
					if("Teshi Sendan")
						M.verbs += new /mob/Kaguya/verb/TeshiSendan()
					if("Tessenka")
						M.verbs += new /mob/Kaguya/verb/TessenkaNoMai()
					if("Sawarabi")
						M.verbs += new /mob/Kaguya/verb/Sawarabi()
					if("Tame")
						M.verbs += new /mob/Inuzuka/verb/Tame()
					if("Tsuuga")
						M.verbs += new /mob/Inuzuka/verb/Tsuuga()
					if("Gatsuuga")
						M.verbs += new /mob/Inuzuka/verb/Gatsuuga()
					if("Soutourou")
						M.verbs += new /mob/Inuzuka/verb/Soutourou()
					if("Konoha Renpuu")
						M.verbs += new /mob/Lee/verb/KonohaReppu()
					if("Konoha Senpuu")
						M.verbs += new /mob/Lee/verb/KonohaSenpuu()
					if("Omote Renge")
						M.verbs += new /mob/Lee/verb/OmoteRenge()
					if("Ura Renge")
						M.verbs += new /mob/Lee/verb/UraRenge()
					if("Konoha Genuriki Senpuu")
						M.verbs += new /mob/Lee/verb/KonohaGenkurikiSenpuu()
					if("Suna Shuirken")
						M.verbs += new /mob/Gaara/verb/SunaShuriken()
					if("Suna Shushin")
						M.verbs += new /mob/Gaara/verb/SunaShushinNoJutsu()
					if("Sand Sphere")
						M.verbs += new /mob/Gaara/verb/SandSphere()
					if("Sand Armor")
						M.verbs += new /mob/Gaara/verb/SandArmor()
					if("Sabaku Kyuu")
						M.verbs += new /mob/Gaara/verb/SabakuKyuu()
					if("Sabaku Sousou")
						M.verbs += new /mob/Gaara/verb/SabakuSousou()
					if("Shousen")
						M.verbs += new /mob/Medical/verb/Shousen_Jutsu()
					if("Chakra No Mesu")
						M.verbs += new /mob/Medical/verb/ChakraNoMesu()
					if("Slice Tendons")
						M.verbs += new /mob/Medical/verb/SliceTendons()
					if("Screw Nerves")
						M.verbs += new /mob/Medical/verb/ScrewNerves()
					if("Fire Armor")
						M.verbs += new /mob/katon/verb/FireArmor()
					if("Hunter")
						M.verbs += new /mob/jutsu/verb/JourouSenbon()
					if("Missing")
						M.verbs+= new /mob/jutsu/verb/BakuretsuBunshin()
					if("Teleport")
						M.verbs += new /mob/Nara/verb/kageteleport()
					if("Fly")
						M.verbs += new /mob/flight/verb/Fly()
					if("Bee Armor")
						M.verbs += new /mob/Kamizuri/verb/BeeArmor()
					if("Bug Armor")
						M.verbs += new /mob/Aburame/verb/BugArmor()
					if("Bug Kyuu")
						M.verbs += new /mob/Aburame/verb/KonchuuKyuu()
					if("Bug Sousou")
						M.verbs += new /mob/Aburame/verb/KonchuuSousou()
					if("Bees")
						M.verbs += new /mob/Kamizuri/verb/summonbees()
						M.verbs += new /mob/Kamizuri/verb/Placebee()
						M.verbs += new /mob/Kamizuri/verb/Destroybee()
					if("Explode Bee")
						M.verbs += new /mob/Kamizuri/verb/ExplodeBee()
					if("Bee Wings")
						M.verbs += new /mob/Beeflight/verb/Fly()
					if("Sexy")
						M.verbs += new /mob/jutsu/verb/Sexy()
					if("Kage Shuriken")
						M.verbs += new /mob/shurikenmove/verb/KageShuriken()
					if("Kage Kunai")
						M.verbs += new /mob/shurikenmove/verb/KageKunai()
					if("Tajuu Bunshin")
						M.verbs += new /obj/bunshins/TajuuKageBunshinNoJutsu/verb/TajuuKageBunshinNoJutsu()
					if("Nisen Rendan")
						M.verbs += new /mob/jutsu/verb/NisenRendan()
					if("Cancel")
						M.JP1 = 0
						return
				text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M] was made ANBU Captain by [usr]<BR>","Kagelog.html")
				usr<<"Jutsu Has Been Picked"
				M<<"You have been promoted to the rank of Anbu Captain"
				world<<"[M] is now an Anbu Captain"
				M.rank = "Anbu Captain"
				M.cap = ACcap
				M.JP1 = 1
				if(src.Village=="Leaf")
					M.ChakraC=100
					M.squad="Leaf Anbu Captain"
					M.squads=1
				if(src.Village =="Sand")
					M.ChakraC=100
					M.squad="Sand Anbu Captain"
					M.squads=1
				if(src.Village =="Sound")
					M.ChakraC=100
					M.squad="Sound Anbu Captain"
					M.squads=1
				if(src.Village =="Grass")
					M.ChakraC=100
					M.squad="Grass Anbu Captain"
					M.squads=1
				if(src.Village =="Rain")
					M.ChakraC=100
					M.squad="Rain Anbu Captain"
					M.squads=1
				if(src.Village =="Cloud")
					M.ChakraC=100
					M.squad="Cloud Anbu Captain"
					M.squads=1
				if(src.Village =="Mist")
					M.ChakraC=100
					M.squad="Mist Anbu Captain"
					M.squads=1
				if(src.Village =="Rock")
					M.ChakraC=100
					M.squad="Rock Anbu Captain"
					M.squads=1
				if(src.Village =="Snow")
					M.ChakraC=100
					M.squad="Snow Anbu Captain"
					M.squads=1
				if(src.Village =="Waterfall")
					M.ChakraC=100
					M.squad="Waterfall Anbu Captain"
					M.squads=1
					return
			else
				usr<<"They are not from your village or they are not strong enough for that rank or have not done 25 S rank missions."

		MakeSannin()
			set category = "Kage"
			var/mob/M = input("","Make Sannin")as null|anything in players
			if(!M) return
			if(M.JP2)
				usr<<"You Are Only Allowed One Jutsu"
				return
			if(M.Village == usr.Village&&M.smission>=40)
				switch(input("What Jutsu do you wish to give them?", text) in list("Bug Bunshin","Mushi","Nikudan","Bubun Baika","Clay Bunshin","Clay Bunshin Explosion","Sand Flight","Sand Sphere","Sensatsu Suishou","Mirrors","Tracking Fang","Kaiten","Hakke Kuushou","Tsuuga","Capture Blood","Blood Possession Ritual","Bone Sword","Teshi Sendan","Sawarabi","Bee Wings","Spider Web","Konoha Senpuu","Ura Renge","Slice Tendons","Absorb","Kage Shibari","Tajuu Bunshin","Nisen Rendan","Snakes","Soul Removal","Wind Tunnel","Lion's Barrage","Teleport","Fly","Blind","Kage Shuriken","Kage Kunai","Cancel"))
					if("Lion's Barrage")
						M.verbs += new /mob/Uchiha/verb/LionsBarrage()
					if("Wind Tunnel")
						M.verbs += new /mob/Temari/verb/WD()
					if("Soul Removal")
						M.verbs += new /mob/Pein/verb/PathofHuman()
					if("Snakes")
						M.verbs += new /mob/Orochimaru/verb/Snake()
					if("Spider Web")
						M.verbs += new /mob/Kidomaru/verb/Spiderweb()
					if("Blood Possession Ritual")
						M.verbs += new /mob/Hidan/verb/Ritual()
					if("Capture Blood")
						M.verbs += new /mob/Hidan/verb/Steal_B()
					if("Tracking Fang")
						M.verbs += new /mob/Hatake/verb/Fang_P()
					if("Sand Flight")
						M.verbs += new /mob/SandF/verb/Fly()
					if("Clay Bunshin")
						M.verbs += new /obj/bunshins/ClayBunshinnojutsu/verb/ClayBunshinNoJutsu()
					if("Clay Bunshin Explosion")
						M.verbs += new /mob/jutsu/verb/ClayArt_BE()
					if("Bug Bunshin")
						M.verbs += new /obj/bunshins/KekkaiKonchuuBunshinnoJutsu/verb/KekkaiKonchuuBunshinnoJutsu()
					if("Mushi")
						M.verbs += new /mob/Aburame/verb/Mushi()
					if("Restore")
						M.verbs += new /mob/Medical/verb/Restore_Jutsu()
					if("Absorb")
						M.verbs += new /mob/Medical/verb/ChakraAbsorb()
					if("Focus")
						M.verbs += new /mob/Tenten/verb/Focus()
					if("Homing Shuriken")
						M.verbs += new /mob/Tenten/verb/HomingShuriken()
					if("Homing Kunai")
						M.verbs += new /mob/Tenten/verb/HomingKunai()
					if("Homing Windmill")
						M.verbs += new /mob/Tenten/verb/HomingWindmill()
					if("Kaiten")
						M.verbs += new /mob/Hyuuga/verb/HakkeshouKaiten()
					if("Bee Sabaku Kyuu")
						M.verbs += new /mob/Kamizuri/verb/BeeSabakuKyuu()
					if("Bee Sabaku Sousou")
						M.verbs += new /mob/Kamizuri/verb/BeeSabakuSousou()
					if("Hakke Kuushou")
						M.verbs += new /mob/Hyuuga/verb/HakkeKuusho()
					if("Katon Ryuuka")
						M.verbs += new /mob/katon/verb/KatonRyuukanoJutsu()
					if("Mist Armor")
						M.verbs += new /mob/mist/verb/MistArmor()
					if("Ice Armor")
						M.verbs += new /mob/ice/verb/IceArmor()
					if("Rai No Jutsu")
						M.verbs += new /mob/rai/verb/RaiArmor()
					if("Zan No Jutsu")
						M.verbs += new /mob/sound/verb/ZanArmor()
					if("Katon Karyuu Endan")
						M.verbs += new /mob/katon/verb/KatonKaryuuEndan()
					if("Sensatsu Suishou")
						M.verbs += new /mob/Haku/verb/SensatsuSuishou()
					if("Mist")
						M.verbs += new /mob/mist/verb/KirigakurenoJutsu()
					if("Mirrors")
						M.verbs += new /mob/Haku/verb/MakyouHyoushou()
					if("Nikudan")
						M.verbs += new /mob/Akimichi/verb/NikudanSensha()
					if("Bubun Baika")
						M.verbs += new /mob/Akimichi/verb/BabunBaikaNoJutsu()
					if("Kage Shibari")
						M.verbs += new /mob/Nara/verb/kageshibari()
						M.verbs += new /mob/Nara/verb/ExtendShadow()
						M.verbs += new /mob/Nara/verb/RetractShadow()
						M.verbs += new /mob/Nara/verb/KageKubiShibaru()
					if("Bone Sword")
						M.verbs += new /mob/Kaguya/verb/CreateBoneSword()
					if("Bone Whip")
						M.verbs += new /mob/Kaguya/verb/CreateSpineWhip()
					if("Yanagi")
						M.verbs += new /mob/Kaguya/verb/YanagiNoMai()
					if("Tsubaki")
						M.verbs += new /mob/Kaguya/verb/TsubakiNoMai()
					if("Karamatsu")
						M.verbs += new /mob/Kaguya/verb/KaramatsuNoMai()
					if("Teshi Sendan")
						M.verbs += new /mob/Kaguya/verb/TeshiSendan()
					if("Tessenka")
						M.verbs += new /mob/Kaguya/verb/TessenkaNoMai()
					if("Sawarabi")
						M.verbs += new /mob/Kaguya/verb/Sawarabi()
					if("Tame")
						M.verbs += new /mob/Inuzuka/verb/Tame()
					if("Tsuuga")
						M.verbs += new /mob/Inuzuka/verb/Tsuuga()
					if("Gatsuuga")
						M.verbs += new /mob/Inuzuka/verb/Gatsuuga()
					if("Soutourou")
						M.verbs += new /mob/Inuzuka/verb/Soutourou()
					if("Konoha Renpuu")
						M.verbs += new /mob/Lee/verb/KonohaReppu()
					if("Konoha Senpuu")
						M.verbs += new /mob/Lee/verb/KonohaSenpuu()
					if("Omote Renge")
						M.verbs += new /mob/Lee/verb/OmoteRenge()
					if("Ura Renge")
						M.verbs += new /mob/Lee/verb/UraRenge()
					if("Konoha Genuriki Senpuu")
						M.verbs += new /mob/Lee/verb/KonohaGenkurikiSenpuu()
					if("Suna Shuirken")
						M.verbs += new /mob/Gaara/verb/SunaShuriken()
					if("Suna Shushin")
						M.verbs += new /mob/Gaara/verb/SunaShushinNoJutsu()
					if("Sand Sphere")
						M.verbs += new /mob/Gaara/verb/SandSphere()
					if("Sand Armor")
						M.verbs += new /mob/Gaara/verb/SandArmor()
					if("Sabaku Kyuu")
						M.verbs += new /mob/Gaara/verb/SabakuKyuu()
					if("Sabaku Sousou")
						M.verbs += new /mob/Gaara/verb/SabakuSousou()
					if("Shousen")
						M.verbs += new /mob/Medical/verb/Shousen_Jutsu()
					if("Chakra No Mesu")
						M.verbs += new /mob/Medical/verb/ChakraNoMesu()
					if("Slice Tendons")
						M.verbs += new /mob/Medical/verb/SliceTendons()
					if("Screw Nerves")
						M.verbs += new /mob/Medical/verb/ScrewNerves()
					if("Fire Armor")
						M.verbs += new /mob/katon/verb/FireArmor()
					if("Hunter")
						M.verbs += new /mob/jutsu/verb/JourouSenbon()
					if("Missing")
						M.verbs+= new /mob/jutsu/verb/BakuretsuBunshin()
					if("Teleport")
						M.verbs += new /mob/Nara/verb/kageteleport()
					if("Fly")
						M.verbs += new /mob/flight/verb/Fly()
					if("Bee Armor")
						M.verbs += new /mob/Kamizuri/verb/BeeArmor()
					if("Bug Armor")
						M.verbs += new /mob/Aburame/verb/BugArmor()
					if("Bug Kyuu")
						M.verbs += new /mob/Aburame/verb/KonchuuKyuu()
					if("Bug Sousou")
						M.verbs += new /mob/Aburame/verb/KonchuuSousou()
					if("Bees")
						M.verbs += new /mob/Kamizuri/verb/summonbees()
						M.verbs += new /mob/Kamizuri/verb/Placebee()
						M.verbs += new /mob/Kamizuri/verb/Destroybee()
					if("Explode Bee")
						M.verbs += new /mob/Kamizuri/verb/ExplodeBee()
					if("Bee Wings")
						M.verbs += new /mob/Beeflight/verb/Fly()
					if("Sexy")
						M.verbs += new /mob/jutsu/verb/Sexy()
					if("Kage Shuriken")
						M.verbs += new /mob/shurikenmove/verb/KageShuriken()
					if("Kage Kunai")
						M.verbs += new /mob/shurikenmove/verb/KageKunai()
					if("Tajuu Bunshin")
						M.verbs += new /obj/bunshins/TajuuKageBunshinNoJutsu/verb/TajuuKageBunshinNoJutsu()
					if("Nisen Rendan")
						M.verbs += new /mob/jutsu/verb/NisenRendan()
					if("Cancel")
						M.JP2 = 0
						return
				text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [M] was made Sannin by [usr]<BR>","Kagelog.html")
				usr<<"Jutsu Has Been Picked"
				M<<"You have been promoted to the rank of Sannin"
				world<<"[M] is now a Sannin"
				M.rank = "Sannin"
				M.cap = SAcap
				M.JP2 = 1
				var/obj/SanninSuit/S = new/obj/SanninSuit
				S.loc = M
				if(src.Village=="Leaf")
					src.ChakraC=100
					var/obj/AnbuR/R = new/obj/AnbuR
					R.loc=usr
				if(src.Village =="Sand")
					src.ChakraC=100
					var/obj/AnbuY/R = new/obj/AnbuY
					R.loc = src
				if(src.Village =="Sound")
					src.ChakraC=100
					var/obj/AnbuBla/R = new/obj/AnbuBla
					R.loc = src
				if(src.Village =="Grass")
					src.ChakraC=100
					var/obj/AnbuG/R = new/obj/AnbuG
					R.loc = src
				if(src.Village =="Rain")
					src.ChakraC=100
					var/obj/AnbuB/R = new/obj/AnbuB
					R.loc = src
				if(src.Village =="Cloud")
					src.ChakraC=100
					var/obj/AnbuGr/R = new/obj/AnbuGr
					R.loc = src
				if(src.Village =="Mist")
					src.ChakraC=100
					var/obj/AnbuLB/R = new/obj/AnbuLB
					R.loc = src
				if(src.Village =="Rock")
					src.ChakraC=100
					var/obj/AnbuBr/R = new/obj/AnbuBr
					R.loc = src
				if(src.Village =="Snow")
					src.ChakraC=100
					var/obj/AnbuW/R = new/obj/AnbuW
					R.loc = src
				if(src.Village =="Waterfall")
					src.ChakraC=100
					var/obj/AnbuDB/R = new/obj/AnbuDB
					R.loc = src
					return
			else
				usr<<"They are not from your village or they are not strong enough for that rank or have not done 40 S rank Missions."
		GiveTournemantP()
			set name = "Special Yen"
			set category = "Kage"
			var/mob/M = input("","Special Yen")as null|anything in players
			if(!M) return
			M.tourneyP += 1
			M<<"You were given 1 Special Yen by [usr]. You Need 10 Special Yen for a Custom Object."
			usr<<"You have given Special Yen to [M]"

