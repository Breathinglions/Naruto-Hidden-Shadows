mob
	proc
		makeChuunin()
			if(src.chuunin)
				return
			if(src.rank=="Genin"&&src.Mtai>=10000&&src.Mgen>=10000&&src.Mnin>=10000&&!src.jounin)
				src.seals=100
				world<< "[src] is now a Chúnin"
			//	src.medals("Jounin")
				src.cap = Jcap
				src.rank="Jounin"
				src.verbs+= new /mob/Buyou/verb/Kagebuyou
				src.jounin=1
				if(src.Village =="Leaf")
					var/obj/JouninLeafSuit/R = new/obj/JouninLeafSuit
					R.loc=src

				if(src.Village =="Sand")
					var/obj/JouninSandSuit/S = new/obj/JouninSandSuit
					S.loc = src

				if(src.Village =="Sound")
					var/obj/JouninSoundSuit/S = new/obj/JouninSoundSuit
					S.loc = src

				if(src.Village =="Grass")
					var/obj/JouninGrassSuit/S = new/obj/JouninGrassSuit
					S.loc = src

				if(src.Village =="Rain")
					var/obj/JouninRainSuit/S = new/obj/JouninRainSuit
					S.loc = src

				if(src.Village =="Cloud")
					var/obj/JouninCloudSuit/S = new/obj/JouninCloudSuit
					S.loc = src

				if(src.Village =="Mist")
					var/obj/JouninMistSuit/S = new/obj/JouninMistSuit
					S.loc = src

				if(src.Village =="Rock")
					var/obj/JouninRockSuit/S = new/obj/JouninRockSuit
					S.loc = src

				if(src.Village =="Snow")
					var/obj/JouninSnowSuit/S = new/obj/JouninSnowSuit
					S.loc = src

				if(src.Village =="Waterfall")
					var/obj/JouninWaterfallSuit/S = new/obj/JouninWaterfallSuit
					S.loc = src

mob
	proc
		makeJounin()
			if(src.jounin)
				return
			if(src.rank=="Chúnin"&&src.Mtai>=25000&&src.Mgen>=25000&&src.Mnin>=25000&&!src.jounin)
				src.seals=100
				world<< "[src] is now a Jounin"
			//	src.medals("Jounin")
				src.cap = Jcap
				src.rank="Jounin"
				src.verbs+= new /mob/Buyou/verb/Kagebuyou
				src.jounin=1
				if(src.Village =="Leaf")
					var/obj/JouninLeafSuit/R = new/obj/JouninLeafSuit
					R.loc=src

				if(src.Village =="Sand")
					var/obj/JouninSandSuit/S = new/obj/JouninSandSuit
					S.loc = src

				if(src.Village =="Sound")
					var/obj/JouninSoundSuit/S = new/obj/JouninSoundSuit
					S.loc = src

				if(src.Village =="Grass")
					var/obj/JouninGrassSuit/S = new/obj/JouninGrassSuit
					S.loc = src

				if(src.Village =="Rain")
					var/obj/JouninRainSuit/S = new/obj/JouninRainSuit
					S.loc = src

				if(src.Village =="Cloud")
					var/obj/JouninCloudSuit/S = new/obj/JouninCloudSuit
					S.loc = src

				if(src.Village =="Mist")
					var/obj/JouninMistSuit/S = new/obj/JouninMistSuit
					S.loc = src

				if(src.Village =="Rock")
					var/obj/JouninRockSuit/S = new/obj/JouninRockSuit
					S.loc = src

				if(src.Village =="Snow")
					var/obj/JouninSnowSuit/S = new/obj/JouninSnowSuit
					S.loc = src

				if(src.Village =="Waterfall")
					var/obj/JouninWaterfallSuit/S = new/obj/JouninWaterfallSuit
					S.loc = src




mob
	proc
		makeHunter()
			if(src.hunternin)
				return
			if(src.rank=="Jounin"&&src.Mtai>=50000&&src.Mgen>=50000&&src.Mnin>=50000&&src.missingkills>=50&&src.amission>=5)
				world<<"[src] is now a hunter"
			//	src.medals("Hunter")
				src.cap=Hcap
				src.rank="Hunter"
				src.hunternin=1
				src.ChakraC=100
				src.verbs += new /mob/jutsu/verb/JourouSenbon
				if(src.Village=="Leaf")
					var/obj/HSuit/B = new/obj/HSuit
					var/obj/AnbuR/R = new/obj/AnbuR
					B.loc=src
					R.loc=src
				if(src.Village =="Sand")
					var/obj/AnbuY/R = new/obj/AnbuY
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Sound")
					var/obj/AnbuBla/R = new/obj/AnbuBla
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Grass")
					var/obj/AnbuG/R = new/obj/AnbuG
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Rain")
					var/obj/AnbuB/R = new/obj/AnbuB
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Cloud")
					var/obj/AnbuGr/R = new/obj/AnbuGr
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Mist")
					var/obj/AnbuLB/R = new/obj/AnbuLB
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Rock")
					var/obj/AnbuBr/R = new/obj/AnbuBr
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Snow")
					var/obj/AnbuW/R = new/obj/AnbuW
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
				if(src.Village =="Waterfall")
					var/obj/AnbuDB/R = new/obj/AnbuDB
					var/obj/HSuit/S = new/obj/HSuit
					S.loc = src
					R.loc = src
world
	proc
		Geninexam()
			set background=1
			if(Genintime)
				Genintime=0
				world<<"<font size=2><font color=red>The Genin Exam is now ended - There will be another Genin Exam soon..."
				spawn(10000) world.Geninexam()
			else
				world<<"<font size=2><font color=red>There will be a Genin exam in 5 minutes - Go to the academy theres one in all Villages..."
				sleep(600)
				world<<"<font size=2><font color=red>There will be a Genin exam in 4 minutes..."
				sleep(600)
				world<<"<font size=2><font color=red>There will be a Genin exam in 3 minutes..."
				sleep(600)
				world<<"<font size=2><font color=red>There will be a Genin exam in 2 minutes..."
				sleep(600)
				world<<"<font size=2><font color=red>There will be a Genin exam in 1 minute..."
				sleep(600)
				world<<"<font size=2><font color=red>Genin exam has now started..."
				Genintime=1
				spawn(1000) Geninexam()




obj/GT
	Genintest
	name = "Genin Test"
	icon = 'Test.dmi'
	verb
		TakeExam()
			set src in oview(1)
			set category = "Commands"
			set name = "Genin Test"
			if(usr.dir!=NORTH)
				usr<<"Face The Test To Take It"
				return
			if(!Genintime||Genintime==null)
				usr<<"No Genin Exam Is Occuring"
				return
			if(usr.rank=="Genin"||usr.rank=="Chúnin"||usr.rank=="Jounin"||usr.rank=="Hunter"||usr.rank=="Kage")
				usr<<"You Don't Need To Take The Test Your A Genin Or Higher"
				return
			if(usr.Genintest)
				usr<<"Already Taking The Test"
				return
			if(usr.Geninfailed)
				usr<<"Sorry You Must Wait 5 Minutes Before Taking Another Test"
				sleep(3000)
				usr.Geninfailed = 0
				return
			usr.Frozen=1
			usr.Genintest=1
			if(usr.cantest&&usr.rank=="Student")
				usr.cantest=0
				switch(input("Mokuton was used by whom?", "Question 1") in list("First Hokage","Second Hokage","Third Hokage","Fourth Hokage","Tsunade"))
					if("First Hokage")
						usr.score += 1
				switch(input("Ninja Academy was established by whom?",) in list("First Hokage","Second Hokage","Third Hokage","Fourth Hokage","Jiraiya"))
					if("Second Hokage")
						usr.score += 1
				switch(input("Sarutobi, the Third Hokage, was called what by the Second Hokage?",) in list("Snake","Frog","Bird","Monkey"))
					if("Monkey")
						usr.score += 1
				switch(input("Konoha's Yellow Flash was a nickname for whom? ",) in list("Kakashi","Minato Namikaze","Jiraiya","Third Hokage"))
					if("Minato Namikaze")
						usr.score += 1
				switch(input("He received this nickname for his Flying Thunder God Technique, which did what",) in list("Aloud him to fly","To use thunder","Teleport","Turn invisible for a short time"))
					if("Teleport")
						usr.score += 1
				switch(input("Third Kazekage could convert his chakra into magnetic forces which he made a jutsu called?",) in list("Steel Sand","Crystal Sand","Iron Sand","Copper Sand"))
					if("Iron Sand")
						usr.score += 1
				switch(input("What are the Uchiha clan known for?","Uchiha",) in list("Sharingan","Byakugan","Their dogs","The ability to control their bones","Their size"))
					if("Sharingan")
						usr.score += 1
				switch(input("What are the Hyuuga clan known for?","Hyuuga",) in list("Sharingan","Byakugan","Their dogs","The ability to control their bones","Their size"))
					if("Byakugan")
						usr.score += 1
				switch(input("What are the Akimichi clan known for?","Akimichi",) in list("Sharingan","Byakugan","Their dogs","The ability to control their bones","Their size"))
					if("Their size")
						usr.score += 1
				switch(input("What are the Kaguya clan known for?","Kaguya",) in list("Sharingan","Byakugan","Their dogs","The ability to control their bones","Their size"))
					if("The ability to control their bones")
						usr.score += 1
				switch(input("What are the Inuzuka clan known for?","Inuzuka ",) in list("Sharingan","Byakugan","Their dogs","The ability to control their bones","Their size"))
					if("Their dogs")
						usr.score += 1
						if(usr.score >= 9)
							usr<<"Congratulations You've Passed The Genin Exam, See Iruka"
							usr.Frozen=0
							usr.Genintest=0
							usr.tested=1
							return
						else
							usr<<"You've Failed The Genin Exam"
							usr.cantest=1
							usr.Genintest=0
							usr.Frozen=0
							usr.tested=0
							usr.Geninfailed=1
							return
					else
						if(usr.score >= 9)
							usr<<"Congratulations You've Passed The Genin Exam, See Iruka"
							usr.Frozen=0
							usr.Genintest=0
							usr.tested=1
							return
						else
							usr<<"You've Failed The Genin Exam"
							usr.cantest=1
							usr.Genintest=0
							usr.Frozen=0
							usr.tested=0
							usr.Geninfailed=1
							return

			else
				usr<<"You must wait 5 minutes after taking the test before you can take it again"
				return









mob/owner
	verb
		Chuuninexam()
			set category = "Staff"
			set name = "Chúnin Examination"
			if(!Chuunintime)
				usr<<"You will be teleported to the Chúnin host room when it starts"
				world<<"<font size=3><font color=red>There will be a Chúnin exam in 5 minutes - Go to the Chúnin room theres one in all Villages..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chúnin exam in 4 minutes..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chúnin exam in 3 minutes..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chúnin exam in 2 minutes..."
				sleep(500)
				world<<"<font size=3><font color=red>There will be a Chúnin exam in 1 minute..."
				sleep(500)
				world<<"<font size=3><font color=red>Chúnin exam has now started..."
				Chuunintime=1
				usr.loc=locate(52,40,13)
			else
				world<<"Chúnin Exam Part one over"
				Chuunintime=0

obj/GT2
	chuunintest
	name = "Chúnin Test"
	icon = 'Test.dmi'
	verb
		TakeTest()
			set src in oview(1)
			if(Chuunintime&&usr.cantest)
				usr.testing=1
				usr.cantest=0
				switch(input("When you throw a Shuriken, Which way will it spin?","Shuriken Spin",) in list("Clockwise","Counter-Clockwise","Depends Lefty/Righty","No Spin"))
					if("Depends Lefty/Righty")
						usr.points += 1
					else
						usr.points += 0
				switch(input("What kind of tool is used with Kugutsu No Jutsu?","Kugutsu Tool",) in list("Kunai","Shuriken","Explosive Note","Puppet"))
					if("Puppet")
						usr.points += 1
					else
						usr.points += 0
				switch(input("What is the name of Zabuza's legendary sword?","Sword",) in list("Raijin","Samehada","Kubikiri Houcho","No Name"))
					if("Kubikiri Houcho")
						usr.points += 1
					else
						usr.points += 0
				switch(input("What category of Doujutsu, Kinjutsu, Ninjutsu, Genjutsu, and Taijutsu does Lotus fall under?","Lotus",) in list("Ninjutsu","Doujutsu","Taijutsu","Genjutsu","Kinjutsu"))
					if("Taijutsu")
						usr.points += 1
					else
						usr.points += 0
				switch(input("What are the clan abilities of the Yamanaka clan?","Yamanaka",) in list("Precise Target Hitters","Increase Body Size","Freeze The Enemy","Mind Transfer"))
					if("Mind Transfer")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Who is Hinata's younger sister?","rank",) in list("Hiashi","Neji","Hizashi","Kurenai","Hanabi"))
					if("Hanabi")
						usr.points += 1
					else
						usr.points += 0
				switch(input("What does Hokage stand for?","Hokage",) in list("Fire Emperor","Head Ruler","Fire Shadow","Head Honcho","Fire Guardian"))
					if("Fire Shadow")
						usr.points += 1
					else
						usr.points += 0
				switch(input("Name a Byakugan ability","Hyuuga",) in list("See people among Bunshins","Sight of Opponents Chakra flow","Eyes pop out","Strength","Agility"))
					if("Sight of Opponents Chakra flow")
						usr.points += 1
					else
						usr.points += 0
				switch(input("What type of Ninja is Akasuna no Sasori?","Sasori",) in list("Puppet","Medical","Fan","Sound"))
					if("Puppet")
						usr.points += 1
					else
						usr.points += 0
				switch(input("What are the Kaguya clan known for?","Kaguya",) in list("Katon Goukakyuu No Jutsu","Hakke","Tsuuga","5 Dances","Their size"))
					if("5 Dances")
						usr.points+= 1
					else
						usr.points += 0
				switch(input("What is/are the main accessory(ies) of a Ninja?","Accessory",) in list("Kunai","Shuriken","Their Villages Forehead Protector","All of the Above"))
					if("All of the Above")
						usr.points += 1
				if(usr.points>=9&&Chuunintime)
					usr.testing=0
					usr.loc=locate(52,2,13)
					usr<<"You have passed the Chunnin exam! Congratulations!"
					return
				else
					usr<<"You have failed, Try again next time."
					return
			else
				usr<<"You must wait for the Exam to start."
				return
obj
	earthscroll
		name = "Scroll Of Earth"
		icon = 'scroll.dmi'
		icon_state = "6"
		verb
			Get()
				set src in oview(1)
				if(usr.earthscroll >= 1)
					usr<<"You already have this scroll"
				else
					src.loc = usr
					usr<<"You picked up a [src]"
					usr.earthscroll = 1
			Drop()
				src.loc=locate(usr.x,usr.y-1,usr.z)
			Destroy()
			 set hidden = 1
			 del(src)
obj
	heavenscroll
		name = "Scroll Of Heaven"
		icon = 'scroll.dmi'
		icon_state = "7"
		verb
			Get()
				set src in oview(1)
				if(usr.heavenscroll >= 1)
					usr<<"You already have this scroll"
				else
					src.loc = usr
					usr<<"You picked up a [src]"
					usr.heavenscroll = 1
			Drop()
				src.loc=locate(usr.x,usr.y-1,usr.z)
			Destroy()
			 set hidden = 1
			 del(src)