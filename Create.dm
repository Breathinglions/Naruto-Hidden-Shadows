//---------------------------------------
				//Index
//---------------------------------------
//Menus: M99
//Variables: V99
//Screens: S99
//LoginSS: LSS99
//Unknown: U99
//New: N99
//Finish: F99
//Skin Select: SS99
//Hair Select: HS99
//Village Select: VS99
//Indicators: OI99
//Clan Turfs: CT99
//---------------------------------------

//---------------------------------------

//---------------------------------------
				//Menus: M99
//---------------------------------------
mob/proc/menu()
	if(src.menus)
		src.client.screen+=new/obj/tchat
		src.client.screen+=new/obj/trest
		src.client.screen+=new/obj/tsave
mob/proc/menu2()
	if(!src.menus)
		src.client.screen=null
//---------------------------------------
				//Variables: V99
//---------------------------------------
mob/var
	hairselected=0
	villageselected=0
	baseselected=0
	Clanselected=0
    //Clans
	Konan=0
	Puppet=0
	Hoshigaki=0
	Namikaze=0
	Hyuuga=0
	Deidara=0
	Kamizuri=0
	Temari=0
	Kaguya=0
	Sai=0
	Nara=0
	Tenten=0
	Kidomaru=0
	Orochimaru=0
	Nagato=0
	Jashin=0
	Hatake=0
	Inuzuka=0
	Fuuma=0
	Gaara=0
	Jiraiya=0
	Yamato=0
	Akimichi=0
	Tayuya=0
	Haku=0
	Medical=0
	Aburame=0
	Lee=0
	Uzumaki=0
	Uchiha=0
	Haruno=0
	Madara=0
	Itachi=0
	Obito=0
	Zetsu=0
	Tobirama=0
	Senju=0

//---------------------------------------
				//Screens: S99
//---------------------------------------
turf/Screens/FinishSS
	density = 1
	icon = 'Finish.jpg'
turf/Screens/LoginSS
	density = 1
	icon = 'Login.jpg'
turf/Screens/ClanSS
	icon = 'Clan.jpg'
	density = 1
//---------------------------------------
				//LoginSS: LSS99
//---------------------------------------
turf/LoginSS/Load
	density = 1
	layer = 999
	Click()
		if(usr.Mclicked)
			usr<<"Stop Trying To Multiclan :: Restart NHS To Load"
			return
		usr.LoadPlayer()
		if(usr.x == 12&&usr.y == 12&&usr.z == 97)//locate = 12,12,97
			usr.loc=locate(6,58,20)// [usr.x],[usr.y],[usr.z]"
turf/LoginSS/Quit
	density = 1
	layer = 999
	Click()
		del(usr)
turf/LoginSS/Delete
	density = 1
	layer=999
	Click()
		usr.DeleteChar()
//---------------------------------------
				//Unknown: U99
//---------------------------------------
client
	Del()
		..()
		del(mob)
		return ..()

mob
	proc
		DeleteChar()
			if(fexists("players/[src.key].sav"))
				var/sure=alert(src,"Are you sure you want to delete your character?","Confirmation","Yes","No")
				if(sure=="Yes")
					sleep(0)
					fdel("players/[src.key].sav")
					src << "Character Deleted"
				else
					src << "Canceled deleting '[src.key].sav'"
			else
				src << "You do not have a character saved on this server."

//---------------------------------------
				//New: N99
//---------------------------------------
turf/LoginSS/New
	density = 1
	layer = 999
	Click()
		usr.Mclicked=1
		Start
		if(fexists("players/[usr.key].sav"))
			var/sure=alert("Are you sure you want to overwrite your character?","Confirmation","Yes","No")
			if(sure=="Yes")
				sleep(0)
				fdel("players/[usr.key].sav")
				src << "Character Deleted"
				goto Start
			else
				src << "Canceled deleting '[usr.key].sav'"
				usr.Mclicked=0
		else
			usr.Notele=1
			var/name = input("","Name") as text|null
			if(length(name) < 2)
				alert("Your name must be longer than 2 letters!")
				return
			if(length(name) > 20)
				alert("Your name can not be longer then 20 letters!")
				return
			usr.name="[html_encode(name)]"
			if(usr.name== "this game sucks"||usr.name== "THIS GAME SUCKS"||usr.name=="==)"||usr.name== "=-)"||usr.name== "8==D"||usr.name== "poop"||usr.name== "dick"||usr.name== "Poop"||usr.name== "Dick"||usr.name== "POOP"||usr.name== "DICK")
				usr<<"We don't tolerate bad names. See ya..."
				del(usr)
			if(usr.name== "sex"||usr.name== "SEX"||usr.name== "secks"||usr.name== "SECKS"||usr.name== "Sex"||usr.name== "Secks"||usr.name== "pr0n"||usr.name== "pron"||usr.name== "porn"||usr.name== "Porn"||usr.name== "PORN"||usr.name== "anal"||usr.name== "oral")
				usr<<"We don't tolerate bad names. See ya..."
				del(usr)
			if(usr.name== "Neji"||usr.name== "neji"||usr.name== "NEJI"||usr.name == "Jiraiya")
				usr<<"NO NPC names STOP TRYING NOW OR RISK IP BAN!"
				return
			if(usr.name == "jiraiya"||usr.name== "JIRAIYA"||usr.name == "Naruto"||usr.name == "naruto"||usr.name== "NARUTO"||usr.name == "Sakura"||usr.name == "sakura"||usr.name == "SAKURA"||usr.name == "Sasuke")
				usr<<"NO NPC names STOP TRYING NOW OR RISK IP BAN!"
				return
			if(usr.name == "sasuke"||usr.name == "SASUKE"||usr.name == "Lee"||usr.name == "lee"||usr.name == "LEE"||usr.name == "Kakashi"||usr.name == "kakashi"||usr.name == "KAKASHI"||usr.name == "Gaara")
				usr<<"NO NPC names STOP TRYING NOW OR RISK IP BAN!"
				return
			if(usr.name == "gaara"||usr.name == "GAARA"||usr.name == "Zabuza"||usr.name == "zabuza"||usr.name == "ZABUZA"||usr.name == "Shino"||usr.name == "shino"||usr.name == "SHINO"||usr.name == "Itachi")
				usr<<"NO NPC names STOP TRYING NOW OR RISK IP BAN!"
				return
			if(usr.name == "itachi"||usr.name == "ITACHI"||usr.name == "Orochimaru"||usr.name == "OROCHIMARU"||usr.name == "Dosu Kinuta"||usr.name == "dosu kinuta"||usr.name == "DOSU KINUTA")
				usr<<"NO NPC names STOP TRYING NOW OR RISK IP BAN!"
				return
			if(usr.name == "Shin"||usr.name == "shin"||usr.name == "SHIN"||usr.name == "Iruka"||usr.name == "iruka"||usr.name == "IRUKA"||usr.name== "Kiba"||usr.name== "KIBA"||usr.name== "kiba")
				usr<<"NO NPC names STOP TRYING NOW OR RISK IP BAN!"
				return
			if(usr.name== "Gai"||usr.name== "GAI"||usr.name== "gai"||usr.name== "Choji"||usr.name== "CHOJI"||usr.name== "choji"||usr.name== "???"||usr.name== "Haku"||usr.name== "HAKU"||usr.name== "haku")
				usr<<"NO NPC names STOP TRYING NOW OR RISK IP BAN!"
				return
			if(usr.name== "Shikamaru"||usr.name== "SHIKAMARU"||usr.name== "shikamaru"||usr.name=="Anko"||usr.name=="ANKO"||usr.name=="anko"||usr.name=="Tenten"||usr.name=="tenten"||usr.name=="TENTEN")
				usr<<"NO NPC names STOP TRYING NOW OR RISK IP BAN!"
				return
			usr.loc = locate(552,763,2)
//---------------------------------------
				//Finish: F99
//---------------------------------------
turf/FinishSS/Finished
	density=1
	Click()
		if(usr.clicked)return
		usr.clicked=1
		switch(input("What Sex Are You?", "Face Icon") in list("Male","Female"))
			if("Male")
				switch(input("What Icon Do You Want To Use?", "Icon Choose") in list ("Naruto","Naruto1","Naruto2","Sasuke","Sasuke1","Neji","Neji1","Lee","Lee1","Kakashi","Kakashi1","Gaara","Gaara1","Shino","Shino1","Shikamaru","Shikamaru1","Jiraiya","Jiraiya1","Gai","Gai1","Kiba","Kiba1","Sasori","Sasori1","1st Hokage","1st Hokage1","2nd Hokage","2nd Hokage1","3rd Hokage","3rd Hokage1","4th Hokage","4th Hokage1","Asuma","Asuma1","Dosu","Dosu1","Haku","Haku1","Itachi","Itachi1","Konohamaru","Konohamaru1","Orochimaru","Orochimaru1","Choji","Choji1","Kabuto","Kabuto1","Obito","Obito1"))
					if("Naruto")
						usr.face_icon = 'Naruto.jpg'
					if("Naruto1")
						usr.face_icon = 'Naruto1.jpg'
					if("Naruto2")
						usr.face_icon = 'Naruto2.jpg'
					if("Sasuke")
						usr.face_icon = 'Sasuke.jpg'
					if("Sasuke1")
						usr.face_icon = 'Sasuke1.jpg'
					if("Neji")
						usr.face_icon = 'Neji.jpg'
					if("Neji1")
						usr.face_icon = 'Neji1.jpg'
					if("Lee")
						usr.face_icon = 'Lee.jpg'
					if("Lee1")
						usr.face_icon = 'Lee1.jpg'
					if("Kakashi")
						usr.face_icon = 'Kakashi.jpg'
					if("Kakashi1")
						usr.face_icon = 'Kakashi1.jpg'
					if("Gaara")
						usr.face_icon = 'Gaara.jpg'
					if("Gaara1")
						usr.face_icon = 'Gaara1.jpg'
					if("Shino")
						usr.face_icon = 'Shino.jpg'
					if("Shino1")
						usr.face_icon = 'Shino1.jpg'
					if("Shikamaru")
						usr.face_icon = 'Shikamaru.jpg'
					if("Shikamaru1")
						usr.face_icon = 'Shikamaru1.jpg'
					if("Jiraiya")
						usr.face_icon = 'Jiraiya.jpg'
					if("Jiraiya1")
						usr.face_icon = 'Jiraiya1.jpg'
					if("Gai")
						usr.face_icon = 'Gai.jpg'
					if("Gai1")
						usr.face_icon = 'Gai1.jpg'
					if("Kiba")
						usr.face_icon = 'Kiba.jpg'
					if("Kiba1")
						usr.face_icon = 'Kiba1.jpg'
					if("Sasori")
						usr.face_icon = 'Sasori.jpg'
					if("Sasori1")
						usr.face_icon = 'Sasori1.jpg'
					if("1st Hokage")
						usr.face_icon = 'First Hokage.jpg'
					if("2nd Hokage")
						usr.face_icon = 'Second Hokage.jpg'
					if("3rd Hokage")
						usr.face_icon = 'Third Hokage.jpg'
					if("4th Hokage")
						usr.face_icon = 'Fourth Hokage.jpg'
					if("1st Hokage1")
						usr.face_icon = 'First Hokage1.jpg'
					if("2nd Hokage1")
						usr.face_icon = 'Second Hokage1.jpg'
					if("3rd Hokage1")
						usr.face_icon = 'Third Hokage1.jpg'
					if("4th Hokage1")
						usr.face_icon = 'Fourth Hokage1.jpg'
					if("Asuma")
						usr.face_icon = 'Asuma.jpg'
					if("Asuma1")
						usr.face_icon = 'Asuma1.jpg'
					if("Dosu")
						usr.face_icon = 'Dosu.jpg'
					if("Dosu1")
						usr.face_icon = 'Dosu1.jpg'
					if("Haku")
						usr.face_icon = 'Haku.jpg'
					if("Haku1")
						usr.face_icon = 'Haku1.jpg'
					if("Itachi")
						usr.face_icon = 'Itachi.jpg'
					if("Itachi1")
						usr.face_icon = 'Itachi1.jpg'
					if("Konohamaru")
						usr.face_icon = 'Konohamaru.jpg'
					if("Konohamaru1")
						usr.face_icon = 'Konohamaru1.jpg'
					if("Orochimaru")
						usr.face_icon = 'Orochimaru.jpg'
					if("Orochimaru1")
						usr.face_icon = 'Orochimaru1.jpg'
					if("Choji")
						usr.face_icon = 'Choji.jpg'
					if("Choji1")
						usr.face_icon = 'Choji1.jpg'
					if("Kabuto")
						usr.face_icon = 'Kabuto.jpg'
					if("Kabuto1")
						usr.face_icon = 'Kabuto1.jpg'
					if("Obito")
						usr.face_icon = 'Obito.jpg'
					if("Obito1")
						usr.face_icon = 'Obito1.jpg'
			if("Female")
				switch(input("What Icon Do You Want To Use?", "Icon Choose") in list ("Hinata","Hinata1","Ino","Ino1","Konan","Konan1","Kurenai","Kurenai1","Sakura","Sakura1","Tsunade","Tsunade1","Tayuya","Tayuya1","Temari","Temari1","Tenten","Tenten1"))
					if("Sakura")
						usr.face_icon = 'Sakura.jpg'
					if("Sakura1")
						usr.face_icon = 'Sakura1.jpg'
					if("Hinata")
						usr.face_icon = 'Hinata.jpg'
					if("Hinata1")
						usr.face_icon = 'Hinata1.jpg'
					if("Ino")
						usr.face_icon = 'Ino.jpg'
					if("Ino1")
						usr.face_icon = 'Ino1.jpg'
					if("Tenten")
						usr.face_icon = 'Tenten.jpg'
					if("Tenten1")
						usr.face_icon = 'Tenten1.jpg'
					if("Tsunade")
						usr.face_icon = 'Tsunade.jpg'
					if("Tsunade1")
						usr.face_icon = 'Tsunade1.jpg'
					if("Temari")
						usr.face_icon = 'Temari.jpg'
					if("Temari1")
						usr.face_icon = 'Temari1.jpg'
					if("Konan")
						usr.face_icon = 'Konan.jpg'
					if("Konan1")
						usr.face_icon = 'Konan1.jpg'
					if("Tenten")
						usr.face_icon = 'Tenten.jpg'
					if("Tenten1")
						usr.face_icon = 'Tenten1.jpg'
					if("Tayuya")
						usr.face_icon = 'Tayuya.jpg'
					if("Tayuya1")
						usr.face_icon = 'Tayuya1.jpg'
					if("Kurenai")
						usr.face_icon = 'Kurenai.jpg'
					if("Kurenai1")
						usr.face_icon = 'Kurenai1.jpg'
		if(usr.villageselected&&usr.baseselected)
			players += usr
			usr.loc=locate(6,996,2)
		//	new/obj/hudMeters/health_01(usr.client)
		//	new/obj/hudMeters/health_02(usr.client)
		//	new/obj/hudMeterss/chakra_01(src.client)
		//	new/obj/hudMeterss/chakra_02(src.client)
			usr.cansave=1
			usr.cap=usr.Scap
			usr.OOC=1
			usr.Notele=0
			usr.client.view = 11
			usr.AutoSave()
			world << "<font size=1><font color = yellow><B>Info:<font size=1><font color = white><B> [usr] Has Just Created A New Character"
			text2file("<font face = Tahoma size = 2 color=black>([ReportDate(world.realtime)]) Name: [usr] |-| Key: [usr.key] |-| GM: [usr.GM] |-| Ip: [usr.client.address]<br>","Logins.html")
			if(usr.Jashin)
				var/obj/HidanSword/B = new/obj/HidanSword
				B.loc = usr
			if(usr.Jiraiya)
				var/obj/Frog_Summoning_Scroll/B = new/obj/Frog_Summoning_Scroll
				B.loc = usr
			if(usr.Namikaze)
				var/obj/Frog_Summoning_Scroll/B = new/obj/Frog_Summoning_Scroll
				B.loc = usr
			if(usr.Orochimaru)
				var/obj/Big_Snake_Scroll/B = new/obj/Big_Snake_Scroll
				B.loc = usr
			if(usr.Kamizuri)
				var/obj/Bee_Summoning_Scroll/B = new/obj/Bee_Summoning_Scroll
				B.loc = usr
			if(usr.Puppet)
				var/obj/Backpuppet/B = new/obj/Backpuppet
				B.loc = usr
			if(usr.Gaara)
				return
			if(usr.Uzumaki)
				return
			if(usr.Uchiha)
				return
			if(usr.random==10)
				usr.CS=1
				usr.bit=1
				return
			/*if(usr.random == 25)
				usr.Dcatm = 1
				usr << "You recieved the Demon Cat!"
				return
			if(usr.random == 25)
				usr.Dturm = 1
				usr << "You recieved the Demon Turtle!"
				return
			if(usr.random == 25)
				usr.Ddogm = 1
				usr << "You recieved the Demon Dog!"
				return
			if(usr.random == 25)
				usr.Dsnkm = 1
				usr << "You recieved the Demon Snake!"
				return*/
			usr.random=rand(1,5)
			if(usr.random == 1)
				usr.fire = 1
				return
			if(usr.random == 2)
				usr.water = 1
				return
			if(usr.random == 3)
				usr.earth = 1
				return
			if(usr.random == 4)
				usr.wind = 1
				return
			if(usr.random == 5)
				usr.lightning=1
				return
		else
			usr.clicked=0
			usr<<"Choose A Village And A Base Icon"
//---------------------------------------
				//Skin Select: SS99
//---------------------------------------
turf/FinishSS/Skincolorselect
	density=1
	Click()
		usr.baseselected=0
		switch(input("What is your Gender?", "Gender") in list ("Male","Female"))
			if("Male")
				switch(input("Choose A Skin Color", "Male Skin Color") in list ("Pale","Tan","Vamp","Black","Red","Blue","Yellow","Ghost"))
					if("Pale")
						usr.icon='Human Icon White.dmi'
						usr.Oicon='Human Icon White.dmi'
						usr.baseselected=1
					if("Tan")
						usr.icon='Human Icon Tan.dmi'
						usr.Oicon='Human Icon Tan.dmi'
						usr.baseselected=1
					if("Vamp")
						usr.icon='Human Icon Vamp.dmi'
						usr.Oicon='Human Icon Vamp.dmi'
						usr.baseselected=1
					if("Black")
						usr.icon='Human Icon Black.dmi'
						usr.Oicon='Human Icon Black.dmi'
						usr.baseselected=1
					if("Red")
						usr.icon='Human Icon Red.dmi'
						usr.Oicon='Human Icon Red.dmi'
						usr.baseselected=1
					if("Blue")
						usr.icon='Human Icon Blue.dmi'
						usr.Oicon='Human Icon Blue.dmi'
						usr.baseselected=1
					if("Yellow")
						usr.icon='Human Icon Yellow.dmi'
						usr.Oicon='Human Icon Yellow.dmi'
						usr.baseselected=1
					if("Ghost")
						usr.icon='Human Icon Ghost.dmi'
						usr.Oicon='Human Icon Ghost.dmi'
						usr.baseselected=1
			if("Female")
				switch(input("Choose A Skin Color", "Female Skin Color") in list ("Pale","Tan","Vamp","Black","Red","Blue","Yellow","Ghost"))
					if("Pale")
						usr.icon='Human Icon WhiteF.dmi'
						usr.Oicon='Human Icon WhiteF.dmi'
						usr.baseselected=1
					if("Tan")
						usr.icon='Human Icon TanF.dmi'
						usr.Oicon='Human Icon TanF.dmi'
						usr.baseselected=1
					if("Vamp")
						usr.icon='Human Icon VampF.dmi'
						usr.Oicon='Human Icon VampF.dmi'
						usr.baseselected=1
					if("Black")
						usr.icon='Human Icon BlackF.dmi'
						usr.Oicon='Human Icon BlackF.dmi'
						usr.baseselected=1
					if("Red")
						usr.icon='Human Icon RedF.dmi'
						usr.Oicon='Human Icon RedF.dmi'
						usr.baseselected=1
					if("Blue")
						usr.icon='Human Icon BlueF.dmi'
						usr.Oicon='Human Icon BlueF.dmi'
						usr.baseselected=1
					if("Yellow")
						usr.icon='Human Icon YellowF.dmi'
						usr.Oicon='Human Icon YellowF.dmi'
						usr.baseselected=1
					if("Ghost")
						usr.icon='Human Icon Ghost.dmi'
						usr.Oicon='Human Icon Ghost.dmi'
						usr.baseselected=1
//---------------------------------------
				//Hair Select: HS99
//---------------------------------------
turf/FinishSS/Hairselect
	density=1
	Click()
		usr.overlays=null
		usr.hairselected=0
		switch(input("Male, Female? or Customs styles?", "Hair Style")in list ("Male","Female","Customs"))
			if("Male")
				switch(input("Choose A Hair Style", "Male Hair Styles") in list ("Naruto","Sasuke","Gaara","Shikamaru","Kakashi","Kabuto","Rock Lee","Itachi","Neji","Kimimaro","Yondaime","Orochimaru","Jiraiya","Bald"))
					if("Jiraiya")
						usr.hair = "Jiraiya"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Jiraiya.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Kabuto")
						usr.hair = "Kabuto"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Kabuto.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Orochimaru")
						usr.hair = "Orochimaru"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Orochimaru.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Kimimaro")
						usr.hair = "Kimimaro"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Kimimaro.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Yondaime")
						usr.hair = "Yondaime"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Yondaime.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Naruto")
						usr.hair = "Naruto"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Naruto.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Neji")
						usr.hair = "Neji"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Neji.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Itachi")
						usr.hair = "Itachi"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Itachi.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Shikamaru")
						usr.hair = "Shikamaru"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Shika.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Gaara")
						usr.hair = "Gaara"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Gaara.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Kakashi")
						usr.hair = "Kakashi"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Kakashi.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Sasuke")
						usr.hair = "Sasuke Hair"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Sasuke.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Rock Lee")
						usr.hair = "Lee Hair"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Lee.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Bald")
						usr.hair = "Bald"
						usr.hairselected=1
			if("Female")
				switch(input("Which hair style would you like?", "Female Hair Styles") in list ("Sakura","Hinata","Ino","Temari","Bald"))
					if("Temari")
						usr.hair = "Temari Hair"
						var/hairred = input("How much red do you want in your hair?") as num
						var/hairblue = input("How much blue do you want in your hair?") as num
						var/hairgreen = input("How much green do you want in your hair?") as num
						var/hairover = 'HairStyle Temari.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Sakura")
						usr.hair = "Sakura Hair"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Sakura.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Ino")
						usr.hair = "Ino"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Ino.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Hinata")
						usr.hair = "Hinata"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Hinata.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Bald")
						usr.hair = "Bald"
						usr.hairselected=1
			if("Customs")
				switch(input("Which hair style would you like?", "Custom Hair Styles") in list ("Long","Spiked Back","Straight Spike","Short Spikes"))
					if("Long")
						usr.hair = "Long"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Ithcigo.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Spiked Back")
						usr.hair = "Spiked Back"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Spikes Back.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Straight Spike")
						usr.hair = "Straight Spike"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Straight Spikes.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
					if("Short Spikes")
						usr.hair = "Short Spikes"
						var/hairred = input("How much red do you want to put into your hair?") as num
						var/hairblue = input("How much blue do you want to put into your hair?") as num
						var/hairgreen = input("How much green do you want to put into your hair?") as num
						var/hairover = 'HairStyle Roxas.dmi'
						hairover += rgb(hairred,hairgreen,hairblue)
						usr.rhair = hairred
						usr.ghair = hairgreen
						usr.bhair = hairblue
						usr.Ohair = hairover
						usr.hair = usr.Ohair
						usr.overlays += usr.hair
						usr.hairselected=1
//---------------------------------------
				//Village Select: VS99
//---------------------------------------
turf/FinishSS/Villageselect
	density=1
	Click()
		usr.Village=""
		usr.leafS=0
		usr.mistS=0
		usr.soundS=0
		usr.earthS=0
		usr.sandS=0
		usr.snowS=0
		usr.rainS=0
		usr.grassS=0
		usr.cloudS=0
		usr.snowS=0
		usr.missingS=0
		usr.villageselected=0
		alert("All Villages Have Different Styled Jutsu's")
		switch(input("Choose Your Village", "Village Choose") in list ("Leaf","Sand","Cloud","Mist","Rock","Grass","Rain"))
			if("Leaf")
				usr.leafS=1
				usr.mistS=0
				usr.soundS=0
				usr.earthS=0
				usr.sandS=0
				usr.rainS=0
				usr.grassS=0
				usr.cloudS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Leaf"
				usr.waterfallS=0
				usr.MousePointer()
			if("Sand")
				usr.leafS=0
				usr.mistS=0
				usr.sandS=1
				usr.soundS=0
				usr.earthS=0
				usr.waterfallS=0
				usr.rainS=0
				usr.grassS=0
				usr.cloudS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Sand"
				usr.MousePointer()
			if("Rock")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.sandS=0
				usr.earthS=1
				usr.rainS=0
				usr.waterfallS=0
				usr.grassS=0
				usr.cloudS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Rock"
				usr.MousePointer()
			if("Cloud")
				usr.leafS=0
				usr.mistS=0
				usr.soundS=0
				usr.earthS=0
				usr.sandS=0
				usr.rainS=0
				usr.waterfallS=0
				usr.grassS=0
				usr.cloudS=1
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Cloud"
				usr.MousePointer()
			if("Mist")
				usr.leafS=0
				usr.mistS=1
				usr.sandS=0
				usr.soundS=0
				usr.earthS=0
				usr.rainS=0
				usr.grassS=0
				usr.waterfallS=0
				usr.cloudS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Mist"
				usr.MousePointer()
			if("Waterfall")
				usr.leafS=0
				usr.mistS=0
				usr.sandS=0
				usr.soundS=0
				usr.earthS=0
				usr.rainS=0
				usr.grassS=0
				usr.waterfallS=1
				usr.cloudS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Waterfall"
				usr.MousePointer()
			if("Snow")
				usr.leafS=0
				usr.mistS=0
				usr.sandS=0
				usr.soundS=0
				usr.earthS=0
				usr.rainS=0
				usr.grassS=0
				usr.waterfallS=0
				usr.cloudS=0
				usr.snowS=1
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Snow"
				usr.MousePointer()
			if("Grass")
				usr.leafS=0
				usr.mistS=0
				usr.sandS=0
				usr.soundS=0
				usr.earthS=0
				usr.rainS=0
				usr.grassS=1
				usr.waterfallS=0
				usr.cloudS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Grass"
				usr.MousePointer()
			if("Sound")
				usr.leafS=0
				usr.mistS=0
				usr.sandS=0
				usr.soundS=1
				usr.earthS=0
				usr.rainS=0
				usr.grassS=0
				usr.waterfallS=0
				usr.cloudS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Sound"
				usr.MousePointer()
			if("Rain")
				usr.leafS=0
				usr.mistS=0
				usr.sandS=0
				usr.soundS=0
				usr.earthS=0
				usr.rainS=1
				usr.grassS=0
				usr.waterfallS=0
				usr.cloudS=0
				usr.snowS=0
				usr.missingS=0
				usr.villageselected=1
				usr.Village="Rain"
				usr.MousePointer()
//---------------------------------------
				//Clan Turfs: CT99
//---------------------------------------
turf/ClanSS/Uzumaki
	density = 1
	Click()
		switch(input("Are you sure you would like to be Uzumaki?", "Uzumaki") in list ("Yes","No"))
			if("Yes")
				usr<<"You are now a Clone specialist!"
//				usr.medals("Uzumaki")
				usr.Clan = "Uzumaki"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=1
				usr.Uchiha=0
				usr.Haruno=0
				usr.CS=0
				usr.bit=0
				usr.Kyuubi=0
				usr.Clanselected=1
				usr.loc = locate(538,734,2)
			if("No")
				return

turf/ClanSS/Tenten
	density = 1
	Click()
		switch(input("Are you sure you would like to be Tenten?", "Tenten") in list ("Yes","No"))
			if("Yes")
				usr<<"You are now a Throwing specialist!"
//				usr.medals("Tenten")
				usr.Clan = "Tenten"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=1
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(549,797,2)
			if("No")
				return

turf/ClanSS/Lee
	density = 1
	Click()
		switch(input("Are you sure you would like to be Lee?", "Lee") in list ("Yes","No"))
			if("Yes")
				usr<<"You are now a Taijutsu specialist!"
//				usr.medals("Lee")
				usr.Clan = "Lee"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=1
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return

turf/ClanSS/Jashin
	density=1
	Click()
		switch(input("Are you sure you would like to be Jashin?", "Jashin")in list("Yes","No"))
			if("Yes")
				usr<<"You Are now a Follower of Jashin!"
				//usr.medals("Jashin")
				usr.Clan="Jashin"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=1
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc=locate(8,12,97)
			if("No")
				return
turf/ClanSS/Fuuma
	density=1
	Click()
		switch(input("Are you sure you would like to be Fuuma?", "Fuuma")in list("Yes","No"))
			if("Yes")
				usr<<"You Can Now Control Peoplez!"
			//	usr.medals("Fuuma")
				usr.Clan="Fuuma"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=1
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc=locate(89,12,97)
			if("No")
				return
turf/ClanSS/Jiraiya
	density=1
	Click()
		switch(input("Are you sure you would like to be Jiraiya?", "Jiraiya")in list("Yes","No"))
			if("Yes")
				usr<<"You are now able to weild the abilities of a Toad Sage!"
			//	usr.medals("Jiraiya")
				usr.Clan="Jiraiya"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=1
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc=locate(89,12,97)
			if("No")
				return
turf/ClanSS/Gaara
	density=1
	Click()
		switch(input("Are you sure you would like to be Gaara?", "Gaara") in list ("Yes","No"))
			if("Yes")
				usr<<"You can now manipulate sand!"
			//	usr.medals("Gaara")
				usr.Clan = "Gaara"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=1
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Shukkaku=0
				usr.Clanselected=1
				var/obj/Gourd/B = new/obj/Gourd
				B.loc = usr
				usr.loc = locate(89,12,97)
			if("No")
				return
turf/ClanSS/Konoha
	density=1
	Click()
		switch(input("Are you sure you would like to be a Clan from the Village of Konoha?", "Konoha") in list ("Yes","No"))
			if("Yes")
				switch(input("There Are Two Several Konoha Clans To Choose From. Please Choose One") in list ("Aburame","Akimichi","Haruno","Hatake","Hyuuga","Jiraiya","Lee","Namikaze","Nara","Sai","TenTen","Uzumaki","Uchiha","Yamato"))
					if("Haruno")
						usr<<"You are now a member of the Haruno Clan!"
			//			usr.medals("Normal")
						usr.Clan = "Haruno"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=1
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(521,721,1)
					if("Aburame")
						usr<<"You are now a member of the Aburame Clan!"
			//			usr.medals("Normal")
						usr.Clan = "Aburame"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=1
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(521,721,1)
					if("Akimichi")
						usr<<"You are now member of the Akimichi Clan!"
				//		usr.medals("Normal")
						usr.Clan = "Akimichi"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=1
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(521,721,1)
					if("Hatake")
						usr<<"You are now in possession of one of Obito Uchiha's Sharingan Eye!"
				//		usr.medals("Normal")
						usr.Clan = "Hatake"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=1
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(521,721,1)
					if("Hyuuga")
						usr<<"You are now in possession of the Byakugan Eye!"
				//		usr.medals("Normal")
						usr.Clan = "Hyuuga"
						usr.Hyuuga=1
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(521,721,1)
					if("Jiraiya")
						usr<<"You are now a member of the Jiraiya Clan!"
				//		usr.medals("Normal")
						usr.Clan = "Jiraiya"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=1
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(521,721,1)
					if("Lee")
						usr<<"You are now a Taijutsu Specialist!"
				//		usr.medals("Normal")
						usr.Clan = "Lee"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=1
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(521,721,1)
					if("Namikaze")
						usr<<"You are now a member of the Namikaze Clan!"
				//		usr.medals("Normal")
						usr.Clan = "Namikaze"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=1
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(521,721,1)
					if("Nara")
						usr<<"You are now a part of the Nara Clan!"
				//		usr.medals("Normal")
						usr.Clan = "Nara"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=1
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(521,721,1)
					if("Uzumaki")
						usr<<"You are now a part of the Uzumaki Clan!"
				//		usr.medals("Normal")
						usr.Clan = "Uzumaki"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=1
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(521,721,1)
					if("Uchiha")
						usr<<"You are now a part of the Uchiha Clan!"
				//		usr.medals("Normal")
						usr.Clan = "Uchiha"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=1
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(521,721,1)
					if("Yamato")
						usr<<"You now have the Mokuton Style traits of the First Hokage!"
				//		usr.medals("Normal")
						usr.Clan = "Yamato"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=1
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(521,721,1)
					if("Tenten")
						usr<<"You are now a part of the Tenten Clan!"
				//		usr.medals("Normal")
						usr.Clan = "Tenten"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=1
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(521,721,1)
			if("No")
				return
turf/ClanSS/SoundFive
	density=1
	Click()
		switch(input("Are you sure you would like to be an experiment of Orochimaru?", "Sound Org") in list ("Yes","No"))
			if("Yes")
				switch(input("There Are Several Clans To Choose From. Please Choose One") in list ("Orochimaru","Kimimaro","Kidomaru","Tayuya"))
					if("Orochimaru")
						usr<<"You are now in Orochimaru's Clan!"
			//			usr.medals("Normal")
						usr.Clan = "Orochimaru"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=1
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(89,12,97)
					if("Kimimaro")
						usr<<"You are now in possession of the Bone Style!"
			//			usr.medals("Normal")
						usr.Clan = "Kaguya"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=1
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(89,12,97)
					if("Kidomaru")
						usr<<"You are now in possession of Spider Traits!"
			//			usr.medals("Normal")
						usr.Clan = "Kidomaru"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=1
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(89,12,97)
					if("Tayuya")
						usr<<"You are now able to use Genjutsu with your Flute!"
			//			usr.medals("Normal")
						usr.Clan = "Tayuya"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=1
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(89,12,97)
turf/ClanSS/Suna
	density=1
	Click()
		switch(input("Are you sure you would like to be a Clan from the Village of Suna?", "Sunagakure") in list ("Yes","No"))
			if("Yes")
				switch(input("There Are Several Suna Clans To Choose From. Please Choose One") in list ("Gaara","Temari","Puppet"))
					if("Gaara")
						usr<<"You are now able to control Sand!"
			//			usr.medals("Normal")
						usr.Clan = "Gaara"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=1
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(89,12,97)
					if("Temari")
						usr<<"You are now able to control the Wind!"
			//			usr.medals("Normal")
						usr.Clan = "Temari"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=1
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(89,12,97)
					if("Puppet")
						usr<<"You are now able to control Puppets!"
			//			usr.medals("Normal")
						usr.Clan = "Puppet"
						usr.Puppet=1
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(89,12,97)
turf/ClanSS/Akatsuki
	density=1
	Click()
		switch(input("Are you sure you would like to be an Akatsuki Clan?", "Akatsuki") in list ("Yes","No"))
			if("Yes")
				switch(input("There Are Several Akatsuki Clans To Choose From. Please Choose One") in list ("Jashin","Deidara","Hoshigaki","Nagato","Konan"))
					if("Konan")
						usr<<"You are now a Paper Master!"
			//			usr.medals("Normal")
						usr.Clan = "Konan"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Konan=1
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(89,12,97)
					if("Jashin")
						usr<<"You are now a member of Jashin!"
			//			usr.medals("Normal")
						usr.Clan = "Jashin"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=1
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(89,12,97)
					if("Deidara")
						usr<<"You are now a Clay Artist!"
			//			usr.medals("Normal")
						usr.Clan = "Deidara"
						usr.Hyuuga=0
						usr.Deidara=1
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(89,12,97)
					if("Nagato")
						usr<<"You are now in possession of the legendary Rinnegan!"
		//				usr.medals("Normal")
						usr.Clan = "Nagato"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=1
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=0
						usr.Clanselected=1
						usr.loc = locate(89,12,97)
					if("Hoshigaki")
						usr<<"You are now a part of the Shark Style Clan!"
					//	usr.medals("Normal")
						usr.Clan = "Hoshigaki"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Namikaze=0
						usr.Hoshigaki=1
						usr.Clanselected=1
						usr.loc = locate(89,12,97)
			if("No")
				return

turf/ClanSS/Medic
	density=1
	Click()
		switch(input("Are you sure you would like to be a Medic?", "Medic") in list ("Yes","No"))
			if("Yes")
				switch(input("There Are Two Branches Of Medic.  Please Choose One", "Medic") in list ("Normal","Sakura Style","I've Changed My Mind, I don't want to be Medic."))
					if("Normal")
						usr<<"You are now a Medical jutsu specialist!"
				//		usr.medals("Normal")
						usr.Clan = "Medical"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=1
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=0
						usr.Clanselected=1
						usr.loc = locate(89,12,97)
					if("Sakura Style")
						usr<<"You have chosen to go Sakura Style!"
					//	usr.medals("Sakura")
						usr.Clan = "Haruno"
						usr.Hyuuga=0
						usr.Deidara=0
						usr.Kamizuri=0
						usr.Temari=0
						usr.Kaguya=0
						usr.Sai=0
						usr.Nara=0
						usr.Tenten=0
						usr.Kidomaru=0
						usr.Orochimaru=0
						usr.Nagato=0
						usr.Jashin=0
						usr.Hatake=0
						usr.Inuzuka=0
						usr.Fuuma=0
						usr.Gaara=0
						usr.Jiraiya=0
						usr.Yamato=0
						usr.Akimichi=0
						usr.Tayuya=0
						usr.Haku=0
						usr.Medical=0
						usr.Aburame=0
						usr.Lee=0
						usr.Uzumaki=0
						usr.Uchiha=0
						usr.Haruno=1
						usr.Clanselected=1
						usr.loc = locate(89,12,97)
					if("I've Changed My Mind, I don't want to be Medic.")
						return
			if("No")
				return

turf/ClanSS/Kamizuri
	density = 1
	Click()
		switch(input("Are you sure you would like to be Kamizuri?", "Kamizuri") in list ("Yes","No"))
			if("Yes")
				usr<<"You have chosen the Kamizuri clan"
			//	usr.medals("Kamizuri")
				usr.Clan ="Kamizuri"
				usr.Konchuu = 10
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=1
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return
turf/ClanSS/Uchiha
	density = 1
	Click()
		switch(input("Are you sure you would like to be Uchiha?", "Uchiha") in list ("Yes","No"))
			if("Yes")
				usr<<"You have chosen the Uchiha clan!"
			//	usr.medals("Uchiha")
				usr.Clan = "Uchiha"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=1
				usr.Haruno=0
				usr.CS=1
				usr.bit=1
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return

turf/ClanSS/Kaguya
	density = 1
	Click()
		switch(input("Are you sure you would like to be Kaguya?", "Kaguya") in list ("Yes","No"))
			if("Yes")
				usr<<"You have chosen the Kaguya clan!"
			//	usr.medals("Kaguya")
				usr.Clan = "Kaguya"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=1
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.CS=1
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return

turf/ClanSS/Nagato
	density = 1
	Click()
		switch(input("Are you sure you would like to be Nagato", "Nagato") in list ("Yes","No"))
			if("Yes")
				usr.Nagato=1
				usr<<"You are now a Rinnegan user!"
			//	usr.medals("Nagato")
				usr.Clan = "Nagato"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=1
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return



turf/ClanSS/Hyuuga
	density = 1
	Click()
		switch(input("Are you sure you would like to be Hyuuga?", "Hyuuga") in list ("Yes","No"))
			if("Yes")
				usr<<"You have chosen the Hyuuga clan!"
			//	usr.medals("Hyuuga")
				usr.Clan = "Hyuuga"
				usr.Hyuuga=1
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return

turf/ClanSS/Akimichi
	density = 1
	Click()
		switch(input("Are you sure you would like to be Akimichi?", "Akimichi") in list ("Yes","No"))
			if("Yes")
				usr<<"You have chosen the Akimichi clan!"
			//	usr.medals("Akimichi")
				usr.Clan = "Akimichi"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=1
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return

turf/ClanSS/Orochimaru
	density = 1
	Click()
		switch(input("Are you sure you would like to be Orochimaru?", "Orochimaru") in list ("Yes","No"))
			if("Yes")
				usr<<"You have chosen Orochimaru clan!"
			//	usr.medals("Orochimaru")
				usr.Clan = "Orochimaru"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=1
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return


turf/ClanSS/Aburame
	density = 1
	Click()
		switch(input("Are you sure you would like to be Aburame?", "Aburame") in list ("Yes","No"))
			if("Yes")
				usr<<"You have chosen the Aburame clan"
			//	usr.medals("Aburame")
				usr.Konchuu = 10
				usr.Clan ="Aburame"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=1
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return


turf/ClanSS/Deidara
	density = 1
	Click()
		switch(input("Are you sure you would like to be Deidara?", "Deidara") in list ("Yes","No"))
			if("Yes")
				usr<<"You have chosen the Deidara clan!"
			//	usr.medals("Deidara")
				usr.Clan = "Deidara"
				usr.Hyuuga=0
				usr.Deidara=1
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return

turf/ClanSS/Tayuya
	density = 1
	Click()
		switch(input("Are you sure you would like to be Tayuya?", "Tayuya") in list ("Yes","No"))
			if("Yes")
				usr<<"You are now a master in Ninjutsu based flutes!!"
			//	usr.medals("Tayuya")
				usr.Clan = "Tayuya"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=1
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return

turf/ClanSS/Inuzuka
	density = 1
	Click()
		switch(input("Are you sure you would like to be Inuzuka?", "Inuzuka") in list ("Yes","No"))
			if("Yes")
				usr<<"You have chosen the Inuzuka clan!"
			//	usr.medals("Inuzuka")
				usr.Clan = "Inuzuka"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=1
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return

turf/ClanSS/Nara
	density = 1
	Click()
		switch(input("Are you sure you would like to be Nara?", "Nara") in list ("Yes","No"))
			if("Yes")
				usr<<"You have chosen the Nara clan!"
			//	usr.medals("Nara")
				usr.Clan = "Nara"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=1
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return

turf/ClanSS/Haku
	density = 1
	Click()
		switch(input("Are you sure you would like to be Haku?", "Haku") in list ("Yes","No"))
			if("Yes")
				usr<<"You now have inherited the bloodline of Haku!"
			//	usr.medals("Haku")
				usr.Clan = "Haku"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=1
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return

turf/ClanSS/Hatake
	density = 1
	Click()
		switch(input("Are you sure you would like to be Hatake?", "Hatake") in list ("Yes","No"))
			if("Yes")
				usr<<"You now have inherited the bloodline of the Hatake!"
			//	usr.medals("Hatake")
				usr.Clan = "Hatake"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=1
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.overlays += 'Hatake Born.dmi'
				usr.loc = locate(89,12,97)
			if("No")
				return


turf/ClanSS/Kidomaru
	density = 1
	Click()
		switch(input("Are you sure you would like to be Kidomaru?", "Kidomaru") in list ("Yes","No"))
			if("Yes")
				usr<<"You are now a creation of Orochimaru's power!"
			//	usr.medals("Kidomaru")
				usr.Clan = "Kidomaru"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=1
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return
turf/ClanSS/Temari
	density = 1
	Click()
		switch(input("Are you sure you would like to be Temari?", "Temari") in list ("Yes","No"))
			if("Yes")
				usr<<"You now have to power to control Wind!"
			//	usr.medals("Temari")
				usr.Clan = "Temari"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=1
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return

turf/ClanSS/Sai
	density = 1
	Click()
		switch(input("Are you sure you would like to be Sai?", "Sai") in list ("Yes","No"))
			if("Yes")
				usr.Sai=1
				usr<<"You are now in Sai's Clan!"
			//	usr.medals("Sai")
				usr.Clan = "Sai"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Yamato=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return

turf/ClanSS/Yamato
	density = 1
	Click()
		switch(input("Are you sure you would like to be Yamato?", "Yamato") in list ("Yes","No"))
			if("Yes")
				usr.Yamato=1
				usr<<"You are now in the Yamato Clan!"
			//	usr.medals("Yamato")
				usr.Clan = "Yamato"
				usr.Hyuuga=0
				usr.Deidara=0
				usr.Kamizuri=0
				usr.Temari=0
				usr.Kaguya=0
				usr.Sai=0
				usr.Nara=0
				usr.Tenten=0
				usr.Kidomaru=0
				usr.Orochimaru=0
				usr.Nagato=0
				usr.Jashin=0
				usr.Hatake=0
				usr.Inuzuka=0
				usr.Fuuma=0
				usr.Gaara=0
				usr.Jiraiya=0
				usr.Akimichi=0
				usr.Tayuya=0
				usr.Haku=0
				usr.Medical=0
				usr.Aburame=0
				usr.Lee=0
				usr.Uzumaki=0
				usr.Uchiha=0
				usr.Haruno=0
				usr.Clanselected=1
				usr.loc = locate(89,12,97)
			if("No")
				return
obj/VillageSymbols
	icon='Village Symbols.dmi'
	Leaf
		icon_state="Leaf"
	Mist
		icon_state="Mist"
	Cloud
		icon_state="Cloud"
	Rock
		icon_state="Rock"
	Sand
		icon_state="Sand"
	Rain
		icon_state="Rain"
	Snow
		icon_state="Snow"
	Grass
		icon_state="Grass"
	Waterfall
		icon_state="Waterfall"
	Sound
		icon_state="Sound"
	Akatsuki
		icon_state="Akatsuki"
	SO
		icon_state="SO"
	Hebi
		icon_state="Hebi"
	LeafM
		icon_state="Missing Leaf"
	MistM
		icon_state="Missing Mist"
	CloudM
		icon_state="Missing Cloud"
	RockM
		icon_state="Missing Rock"
	SandM
		icon_state="Missing Sand"
	RainM
		icon_state="Missing Rain"
	SnowM
		icon_state="Missing Snow"
	GrassM
		icon_state="Missing Grass"
	WaterfallM
		icon_state="Missing Waterfall"
	SoundM
		icon_state="Missing Sound"
mob/proc/MousePointer()
	switch(src.Village)
		if("Leaf")
			src.mouse_over_pointer=/obj/VillageSymbols/Leaf
			src.OldVillage="[src.Village]"
		if("Mist")
			src.mouse_over_pointer=/obj/VillageSymbols/Mist
			src.OldVillage="[src.Village]"
		if("Cloud")
			src.mouse_over_pointer=/obj/VillageSymbols/Cloud
			src.OldVillage="[src.Village]"
		if("Rock")
			src.mouse_over_pointer=/obj/VillageSymbols/Rock
			src.OldVillage="[src.Village]"
		if("Sand")
			src.mouse_over_pointer=/obj/VillageSymbols/Sand
			src.OldVillage="[src.Village]"
		if("Rain")
			src.mouse_over_pointer=/obj/VillageSymbols/Rain
			src.OldVillage="[src.Village]"
		if("Snow")
			src.mouse_over_pointer=/obj/VillageSymbols/Snow
			src.OldVillage="[src.Village]"
		if("Grass")
			src.mouse_over_pointer=/obj/VillageSymbols/Grass
			src.OldVillage="[src.Village]"
		if("Waterfall")
			src.mouse_over_pointer=/obj/VillageSymbols/Waterfall
			src.OldVillage="[src.Village]"
		if("Sound")
			src.mouse_over_pointer=/obj/VillageSymbols/Sound
			src.OldVillage="[src.Village]"
		if("Akatsuki")
			src.mouse_over_pointer=/obj/VillageSymbols/Akatsuki
		if("SO")
			src.mouse_over_pointer=/obj/VillageSymbols/SO
		if("Hebi")
			src.mouse_over_pointer=/obj/VillageSymbols/Hebi
		if("None"||"Missing")
			switch(src.OldVillage)
				if("Leaf")
					src.mouse_over_pointer=/obj/VillageSymbols/LeafM
				if("Mist")
					src.mouse_over_pointer=/obj/VillageSymbols/MistM
				if("Cloud")
					src.mouse_over_pointer=/obj/VillageSymbols/CloudM
				if("Rock")
					src.mouse_over_pointer=/obj/VillageSymbols/RockM
				if("Sand")
					src.mouse_over_pointer=/obj/VillageSymbols/SandM
				if("Rain")
					src.mouse_over_pointer=/obj/VillageSymbols/RainM
				if("Snow")
					src.mouse_over_pointer=/obj/VillageSymbols/SnowM
				if("Grass")
					src.mouse_over_pointer=/obj/VillageSymbols/GrassM
				if("Waterfall")
					src.mouse_over_pointer=/obj/VillageSymbols/WaterfallM
				if("Sound")
					src.mouse_over_pointer=/obj/VillageSymbols/SoundM