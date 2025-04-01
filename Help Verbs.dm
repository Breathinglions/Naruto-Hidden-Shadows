mob/verb/Help()
	set name ="HELP"
	set category = "Commands"
	switch(input("What do you need?","HELP",) in list("NHS Map","Rules","Training","Jutsus","NPCs","RankCaps","Stuck!","Fix Me!","Change Face Icon","Huds","Server Information","Credits","Cancel"))
		if("Rules")
			usr.Rules()
		if("NHS Map")
			usr.MAP()
		if("Stuck!")
			if(!usr.cansave)return
			if(usr.jailtime)return
			usr.loc = locate(6,58,20)
		if("Training")
			switch(input("What do you need help on?","Help",) in list("Ninjutsu","Genjutsu","Taijutsu","Cancel"))
				if("Ninjutsu")
					usr.Ninjutsu()
				if("Genjutsu")
					usr.Genjutsu()
				if("Taijutsu")
					usr.Taijutsu()
		if("RankCaps")
			usr.RankCaps()
		if("NPCs")
			usr.NPCs()
		if("Jutsus")
			usr.Techniques()
		if("Credits")
			usr.Credits()
		if("Change Face Icon")
			switch(input("What's Your Gender?", "Gender") in list("Male","Female"))
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
		if("Fix Me!")
			switch(input("What do you need to be Fixed?","Help",) in list("Black Screen!","Kunai/Shuriken/Tag Bugged!","Icon is Messed!","Cancel"))
				if("Black Screen!")
					if(!usr.cansave)return
					if(usr.jailtime)return
					if(usr.loc==null)
						usr.loc=locate(6,29,2)
						usr<<"Fixed"
					else
						usr<< "You don't have a Black Screen"
				if("Kunai/Shuriken/Tag Bugged!")
					usr.Kucounter=0
					usr.Shurcounter=0
					usr.Tagcounter=0
				if("Icon is Messed!")
					usr.overlays = null
					usr.icon_state = ""
					usr.underlays = null
					switch(input("What Sex are you?", text) in list ("Male","Female"))
						if("Male")
							switch(input("Choose a skin color", text) in list ("Pale","Tan","Vamp","Black","Red","Blue","Yellow"))
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

						if("Female")
							switch(input("Choose a skin color", text) in list ("Pale","Tan","Vamp","Black","Red","Blue","Yellow"))
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

		if("Server Information")
			var/calcLag = abs(world.cpu - 100)
			usr << "<strong>Server Hosted On: [world.system_type]</strong>"
			usr << "<strong>Server Efficiency: [calcLag]%</strong>"
			usr << "<strong>Server Port: [world.port]</strong>"
			usr << "<strong>Server Uptime: [ReportTime()]</strong>"
		if("Huds")
			switch(input("Do you want to turn on/off the Menus in your game screen","Menus Options",) in list("ON","OFF"))
				if("ON")
					if(usr.menus==1)
						alert("Sorry it´s already on...")
						return
					usr.menus=1
					usr.menu()
				if("OFF")
					if(usr.menus==0)
						alert("Sorry it´s already off...")
						return
					usr.menus=0
					usr.menu2()
				if("Cancel")
					return()

//------------------------------------------------------------------------------------------------------------------
mob/proc/RankCaps()
	var/RankCapstext = {"
		<html>
		<STYLE>BODY {font-family: Verdana;font-size: 10px}</STYLE>
		<head>
		<BODY>
		<title>Ranks and Caps</title>
		</head>
		<body bgcolor=#000000 text=#f5f5f5>
		<center><h2>Caps<br></h2>
		<strong>(The Ranks Chúnin,and Jounin are auto)</strong><br>
		<strong>Student-5000</strong><br>
		<strong>Genin-10000</strong><br>
		<strong>Chúnin-25000</strong><br>
		<strong>Jounin-50000</strong><br>
		<strong>Missing-50000</strong><br>
		<strong>Hunter-75000</strong><br>
		<strong>(Get 50 Missing Kills)</strong><br>
		<strong>Anbu-90000-1 Custom Jutsu</strong><br>
		<strong>Anbu Captain-100000-2 Custom Jutsu</strong><br>
		<strong>Sannin-110000-3 Custom Jutsu</strong><br>
		<strong>Kage-125000-4 Custom Jutsu</strong><br>
		<strong>Akat-100000</strong><br>
		<strong>SO-100000</strong><br>
		<strong>7Swordsmen-100000</strong><br>
		<strong>PoliceForce-100000</strong><br>

		<strong><b><u>The best thing to do is Genin, Chúnin, Jounin, Hunter, Anbu or Sannin or Missing.</b></u></strong><br>
		<strong><b><i>Piss off your Kage and you risk being jumped right to missing and missing out on alot of rare jutsu learning.</b></i></strong><br>
		<strong><b><i>In order to get Hunter (50 missing kills, 10 A Rank Missions and 5 S Rank Missions(Anbu:5 S Rank, ANBU Cap, 25, Sannin:40).</b></i></strong><br>

		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(RankCapstext)
//--------------------------------------------------------------------------------------------------------
mob/proc/NPCs()
	var/NPCstext = {"
		<html>
		<STYLE>BODY {font-family: Verdana;font-size: 10px}</STYLE>
		<head>
		<BODY>
		<title>NPCs</title>
		</head>
		<body bgcolor=#000000 text=#f5f5f5>
		<center><h2>NPCs<br></h2>
		<strong>Chakra Nature Elements NPC</strong>- Jounin(s) can get their Chakra Element Jutsus Here<br>
		<strong>Jounin Squad Assignment NPC</strong>- Jounin(s) can make squads here<br>
		<strong>Scroll Seller</strong>- Sells Jutsu Scrolls<br>
		<strong>Weapons Seller</strong>- Sells wearable weapons like swords<br>
		<strong>Throwing Weapons Seller</strong>- Sells throwing weapons<br>
		<strong>Orochimaru</strong>- If he bites you you'll receive cursed seal<br>
		<strong>Spawn Helpers</strong>- Resets your spawn in that village<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(NPCstext)
//--------------------------------------------------------------------------------------------------------
mob/proc/Credits()
	var/credittext = {"
		<html>
		<head>
		<title>Naruto: Forbidden Tales</title>
		</head>
		<body bgcolor=#000000 text=#DDDDDD>
		<center><h2>Naruto Remaining Shadows</h2></center><hr>
		<p><strong>Owner/Coder:</strong> Narutouzumaki188<br>
		<p><strong>Owner/Coder:</strong> Garruea<br>
		<p><strong>Co-Owner:</strong> Uryu48<br>
		<p><strong>Co-Owner:</strong> Knvqkslvr<br>
		<p><strong>Co-Owner:</strong> Salurax<br>
		<strong>Iconist:</strong> Garruea<br>
		<strong>Iconist:</strong> Merick12<br>
		<strong>Lead Forum Maker:</strong>Garruea<br>
		<strong>Host:</strong> Knvqkslvr<br>
		<strong>Mapper:</strong> Garruea<br>
		<strong>GFX Artist:</strong> Salurax<br>
		<strong>Web Owner :</strong> Garruea<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(credittext)
//--------------------------------------------------------------------------------------------------------
mob/proc/Taijutsu()
	var/helptext = {"
		<html>
		<STYLE>BODY {font-family: Verdana}</STYLE>
		<head>
		<title>Training</title>
		</head>
		<body bgcolor=#f5f5f5 text=#000000>
		<center><h2>Taijutsu</h2></center><hr>
		<p><strong>Logs:</strong> Logs are scattered about, You lose Stamina per log hit and gain Taijutsu randomly, New! - Shuriken and Kunai can be thrown at logs as a Taijutsu and Ninjutsu training method, Also to increase your Shuriken Skill or Kunai skill to learn a Jutsu for that weapon.<br>
		<strong>Mountain Climbing:</strong> This is a form of Stamina and Taijutsu training.<br>
		<strong>Level Up:</strong> Trains All Stats a bit.<br>

		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(helptext)
//--------------------------------------------------------------------------------------------------------
mob/proc/Genjutsu()
	var/helptext = {"
		<html>
		<STYLE>BODY {font-family: Verdana}</STYLE>
		<head>
		<title>Training</title>
		</head>
		<body bgcolor=#f5f5f5 text=#000000>
		<center><h2>Genjutsu</h2></center><hr>
		<strong>Gen</strong> use Bunshin No Jutsu<br>
		<strong>Level Up:</strong> Trains All Stats a bit.<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(helptext)
//--------------------------------------------------------------------------------------------------------
mob/proc/Ninjutsu()
	var/helptext = {"
		<html>
		<STYLE>BODY {font-family: Verdana}</STYLE>
		<head>
		<title>Training</title>
		</head>
		<body bgcolor=#f5f5f5 text=#000000>
		<center><h2>Ninjutsu</h2></center><hr>
		<strong>Nin</strong> use Kage Bunshin No Jutsu<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(helptext)
//--------------------------------------------------------------------------------------------------------
mob/proc/Techniques()
	var/helptext = {"
		<html>
		<STYLE>BODY {font-family: Verdana;font-size: 10px}</STYLE>
		<head>
		<BODY>
		<title>Techniques</title>
		</head>
		<body bgcolor=#000000 text=#f5f5f5>
		<center><h2>Techniques<br></h2>
		<centerLast Updated 8/30/07<br>
		<p>(A new Jutsu is triggered by a level up if you have the required Nin, Gen, and Tai And Note: If I a Jutsu is hidden, Don't go asking for the requirement.)<br>
		<strong> Clans:<font size=5><u><url>http://com5.runboard.com/bnarutohiddenshadows.f2.t13</url></u></font><br></strong>

	<center><h2>Uchiha Info-</h2>

		See Sasake at Uchiha clan house in Grass for otheres<br>

		<center><h2>Hyuuga Info-<br></h2>

		See Neiji at Hyuuga house in Leaf<br>

		<center><h2>Haku Info-<br></h2>

		See Haku at Haku house in Snow<br>

		<center><h2>Akimichi Info-<br></h2>

		See Choji at Akimichi house in Waterfall<br>

		<center><h2>Nara Info-<br></h2>

		See Shikamaru at Nara house in Mist<br>

		<center><h2>Kaguya-<br></h2>

		See ??? at Kaguya house in Sound<br>

		<center><h2>Aburame Info-<br></h2>

		See Shino at Aburame house in Rain<br>

		<center><h2>Inuzuka Info-<br></h2>

		See Kiba at Inuzuka house at Cloud<br>

		<center><h2>Rock Lee-<br></h2>

		See Lee at Lee house in Rock<br>

		<center><h2>Gaara-<br></h2>

		See Gaara in Gaara house at Sand<br>

		<center><h2>Kamizuri-<br></h2>

		See Bee Keeper in Kamizuri house at Rock<br>

		<center><h2>Tenten-<br></h2>

		See Tenten in Tenten house at Grass<br>

		<center><h2>Uzumaki-<br></h2>

		See Naruto in Uzumaki house at Rain<br>

		<center><h2>Medic-<br></h2>

		See Kabuto at Medic house in Leaf<br>

		<center><h2>Kidomaru-<br></h2>

		Talk to a GM or the Owner<br>

		<center><h2>Missing-</h2><br>
		Bakuretsu Bunshin - Become Missing Nin<br>

		<center><h2>Hunter-</h2><br>
		Jourou Senbon - Become Hunter Nin<br>

		<center><h2>Jounin-</h2><br>
		Kage Konaha Buyou - Become Jounin Nin<br>

		<center><h2>All Village Jutsu are Given At Certain Requirements,here is a link for the handsings too.!:<br></h2>

		<strong> Clans:<font size=5><u><url>http://i144.photobucket.com/albums/r161/IxIMelissaIxI/jutsus.png</url></u></font><br></strong>

			<strong>Village Jutsu's Are Auto Gotten By Gen,Nin and Tai lvls</strong><br>
------------------------------------------
		<strong>Leaf-</strong><br>
		1.Katon Goukakyuu No Jutsu<br>
		2.Katon Housenka No Jutsu<br>
		3.Katon Ryuukano No Jutsu<br>
		4.Katon No Jutsu<br>
		5.Katon Karyuu Endan<br>
		<br>
		<strong>Grass-</strong><br>
		1.Katon No Jutsu<br>
		2.Karyuudan<br>
		3.Katon Goukakyuu<br>
		4.Katon Housenka<br>
		5.Katonheki<br>
		<br>
		<strong>Mist-</strong><br>
		1.Suiton Suiryuudan No Jutsu<br>
		2.Suirou No Jutsu<br>
		3.Suiton Suikoudan No Jutsu<br>
		4.Kirigakure<br>
		5.Mist No Jutsu<br>
		<br>
		<strong>Rain-</strong><br>
		1.Daibakufu No Jutsu<br>
		2.Jouro Senban<br>
		3.Rain No Jutsu<br>
		4.Suiton Bunshin<br>
		5.Suiton Doryuudan<br>
		<br>
		<strong>Waterfall-</strong><br>
		1.Suishouha<br>
		2.Suiton No Jutsu<br>
		3.Suiton Suishouha<br>
		4.Suiton Kyuu<br>
		5.Suiton Sousou<br>
		<br>
		<strong>Rock-</strong><br>
		1.Doton Doryo Dango<br>
		2.Doton Doryuuheki<br>
		3.Doton Kyuu<br>
		4.Doton Sousou<br>
		5.Doroudorno<br>
		<br>
		<strong>Sand-</strong><br>
		1.Fuuton Kaze Dangan No Jutsu<br>
		2.Fuuton Renkuudan No Jutsu<br>
		3.Fuuton Daitoppa No Jutsu<br>
		4.Fly<br>
		5.Ninpou Kamaitachi<br>
		<br>
		<strong>Cloud-</strong><br>
		1.Raikyuu No Jutsu<br>
		2.Rairyuu No Tatsumaki<br>
		3.Rai No Jutsu<br>
		4.Ikazuchi No Kiba<br>
		5.Summon Cloud<br>
		<br>
		<strong>Sound-</strong><br>
		1.Zankuuha<br>
		2.Zankyokukuuha<br>
		3.Zan No Jutsu<br>
		4.Kyoumeisen<br>
		5.Sen'eijashu<br>
		<br>
		<strong>Snow-</strong><br>
		1.Makyou Armor<br>
		2.Futagoza No Jutsu<br>
		3.Makyou Hyoushou<br>
		4.Makyou Suiryuudan<br>
		5.Makyou Suikoudan<br>
		<br>
		<strong>Everyone-</strong><br>
		Sennen Goroshi - Genin<br>
		Kage Bunshin No Jutsu - 100 Bunshin uses, Genin, and a scroll.<br>
		Shushin No Jutsu - 100 Kawa uses
		Mei Mei No Jutsu - 100 Henge uses
		Chidori - 30knin/gen/Jounin<br>
		Rensengan - 30knin/gen/Jounin<br>
		<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(helptext)
//--------------------------------------------------------------------------------------------------------
mob/proc/MAP()
	var/helptext = {"
		<html>
		<IMG SRC = "http://imageshack.us/m/121/3206/nhsmap.png">
		</html>
		"}
	usr << browse(helptext)
//--------------------------------------------------------------------------------------------------------
mob/proc/Rules()
	var/helptext = {"
		<html>
<p style="text-align: left;"><span style="font-size: small;"><span style="color: #ff0000;"><strong><em>Rules and Regulations</em></strong></span> </span>
<hr />
<br /><span style="font-size: x-small;"><span style="font-family: tahoma,arial,helvetica,sans-serif;">* No Repeatedly asking for Higher Rank or GM.<br />* No Disrespecting GMs.<br />* No Multiclanning (Anyone caught will be IP-BANNED)<br />* No Spamming. (Boot then IP Ban)<br />* Don't ask for a GM summon. (If so must have a good reason behind it.)<br />* No Calling for a GM More than Once Or a Boot/Then Ban. If we do not acknowledge you we are busy or we are not ready to come to you or summon you or we are simply not even there.<br />* Do Not Mass Recreate, you will Get booted then Banned.<br />* Do Not Mass Relog, you will Get booted then Banned.<br />* Do not ask to be put in an Organization by a Staff Member.<br />* Do not ask to become a Sannin, Sage Or an ANBU by a Staff Member. That is the Kage's Decision.<br />* No foul language. (Only to a certain extent if used to much will result in a ban.)<br />* No Going Into An Organization's Base, Unless Given Permission By A Member Or The Leader Of The Organization's Base.<br />* Asking For An Edit Will Result In An Automatic Kick.<br />* Advertising Another Game On Byond Will Result In A Ban.<br />* Asking For A Genin Examination, Three Times By The Same Player Will Result In A Ban.<br />* The Players Are Allowed To Challenge For Their Current Village Kage For Their Village Kage's Position, This May Only Be Done Once A Week, Though.<br />* If A Village's Kage Hasn't Logged In For About Five Days, They Will Be Replaced By A New Village Kage.<br />* Kages Have To Accept Challenges, If They Don't They Forfeit Their Position As Kage.<br />* The Only Exception Is If The Naruto Remaining Shadows Staff Members Are Informed Of When They Will Be Absent<br />* If A Village's Kage Is Absent And Off Of Naruto Remaining Shadows, A Substitute Village Kage Will Take Their Place Only During Their Absence, When They're Off Of Naruto Remaining Shadows.<br />* Rules Will Not Be Limited To The Above.</span><br /><br /></span>
<p>&nbsp;</p>
</p>
		</html>
		"}
	usr << browse(helptext)
//--------------------------------------------------------------------------------------------------------

