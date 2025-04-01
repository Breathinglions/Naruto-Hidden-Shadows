mob/KageRanks
	verb
		MakeHokage()
			set category = "Ranks"
			var/mob/M = input("","Make Hokage")as null|anything in players
			if(!M) return
			if(M.Village == "Leaf")
				M<<"You have been made Hokage!"
				world<<"[M] is now Hokage!"
		//		usr.medals("Hokage")
				M.rank = "Kage"
				M.cap = Kcap
				M.seals=100
				M.squads=1
				M.squad="<FONT COLOR=#ff0000>H</FONT><FONT COLOR=#ff5300>o</FONT><FONT COLOR=#ffa500>k</FONT><FONT COLOR=#ffc300>a</FONT><FONT COLOR=#ffe200>g</FONT><FONT COLOR=#ffff00>e</FONT><FONT COLOR=#ffe200>-</FONT><FONT COLOR=#ffc300>s</FONT><FONT COLOR=#ffa500>a</FONT><FONT COLOR=#ff5300>m</FONT><FONT COLOR=#ff0000>a</FONT>"
				var/obj/KageSuitHo/B = new/obj/KageSuitHo
				var/obj/KageHatHo/S = new/obj/KageHatHo
				B.loc = M
				S.loc = M
				M.verbs += new /mob/Nara/verb/kageteleport()
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Leaf."
		MakeKazekage()
			set category = "Ranks"
			var/mob/M = input("","Make Kazekage")as null|anything in players
			if(!M) return
			if(M.Village == "Sand")
				M<<"You have been made Kazekage!"
				world<<"[M] is now Kazekage!"
			//	usr.medals("Kazekage")
				M.rank = "Kage"
				M.cap =  Kcap
				M.seals=100
				M.squads=1
				M.squad="<FONT COLOR=#4682b4>K</FONT><FONT COLOR=#699fc5>a</FONT><FONT COLOR=#8bbcd6>z</FONT><FONT COLOR=#add8e6>e</FONT><FONT COLOR=#a1d5e8>k</FONT><FONT COLOR=#94d2ea>a</FONT><FONT COLOR=#87ceeb>g</FONT><FONT COLOR=#94d2ea>e</FONT><FONT COLOR=#a1d5e8>-</FONT><FONT COLOR=#add8e6>s</FONT><FONT COLOR=#8bbcd6>a</FONT><FONT COLOR=#699fc5>m</FONT><FONT COLOR=#4682b4>a</FONT>"
				var/obj/KageSuitKaze/B = new/obj/KageSuitKaze
				var/obj/KageHatKaze/S = new/obj/KageHatKaze
				B.loc = M
				S.loc = M
				M.verbs += new /mob/Nara/verb/kageteleport()
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Sand."

		MakeRaikage()
			set category = "Ranks"
			var/mob/M = input("","Make Raikage")as null|anything in players
			if(!M) return
			if(M.Village == "Cloud")
				M<<"You have been made Raikage!"
				world<<"[M] is now Raikage!"
			//	usr.medals("Raikage")
				M.rank = "Kage"
				M.seals=100
				M.cap =  Kcap
				M.squads=1
				M.squad="<FONT COLOR=#ffff00>R</FONT><FONT COLOR=#f7f456>a</FONT><FONT COLOR=#eee8aa>i</FONT><FONT COLOR=#f4f0c7>k</FONT><FONT COLOR=#faf8e3>a</FONT><FONT COLOR=#ffffff>g</FONT><FONT COLOR=#faf8e3>e</FONT><FONT COLOR=#f4f0c7>-</FONT><FONT COLOR=#eee8aa>s</FONT><FONT COLOR=#f4f072>a</FONT><FONT COLOR=#faf839>m</FONT><FONT COLOR=#ffff00>a</FONT>"
				var/obj/KageSuitRai/B = new/obj/KageSuitRai
				var/obj/KageHatRai/S = new/obj/KageHatRai
				B.loc = M
				S.loc = M
				M.verbs += new /mob/Nara/verb/kageteleport()
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Cloud."

		MakeTsuchikage()
			set category = "Ranks"
			var/mob/M = input("","Make Tsuchikage")as null|anything in players
			if(!M) return
			if(M.Village == "Rock")
				M<<"You have been made Tsuchikage!"
				world<<"[M] is now Tsuchikage!"
			//	usr.medals("Tsuchikage")
				M.rank = "Kage"
				M.cap =  Kcap
				M.seals=100
				M.squads=1
				M.squad="<FONT COLOR=#a52a2a>T</FONT><FONT COLOR=#9d3323>s</FONT><FONT COLOR=#943d1b>u</FONT><FONT COLOR=#8b4513>c</FONT><FONT COLOR=#a65d27>h</FONT><FONT COLOR=#c0753a>i</FONT><FONT COLOR=#db8d4e>k</FONT><FONT COLOR=#f4a460>a</FONT><FONT COLOR=#db8d4e>g</FONT><FONT COLOR=#c0753a>e</FONT><FONT COLOR=#a65d27>-</FONT><FONT COLOR=#8b4513>s</FONT><FONT COLOR=#943d1b>a</FONT><FONT COLOR=#9d3323>m</FONT><FONT COLOR=#a52a2a>a</FONT>"
				var/obj/KageSuitTsuchi/B = new/obj/KageSuitTsuchi
				var/obj/KageHatTsuchi/S = new/obj/KageHatTsuchi
				B.loc = M
				S.loc = M
				M.verbs += new /mob/Nara/verb/kageteleport()
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Rock."

		MakeMizukage()
			set category = "Ranks"
			var/mob/M = input("","Make Mizukage")as null|anything in players
			if(!M) return
			if(M.Village == "Mist")
				M<<"You have been made Mizukage!"
				world<<"[M] is now Mizukage!"
			//	usr.medals("Mizukage")
				M.rank = "Kage"
				M.cap =  Kcap
				M.seals=100
				M.squads=1
				M.squad="<FONT COLOR=#006400>M</FONT><FONT COLOR=#348711>i</FONT><FONT COLOR=#67ab22>z</FONT><FONT COLOR=#9acd32>u</FONT><FONT COLOR=#67b422>k</FONT><FONT COLOR=#349a11>a</FONT><FONT COLOR=#008000>g</FONT><FONT COLOR=#349a11>e</FONT><FONT COLOR=#67b422>-</FONT><FONT COLOR=#9acd32>s</FONT><FONT COLOR=#67ab22>a</FONT><FONT COLOR=#348711>m</FONT><FONT COLOR=#006400>a</FONT>"
				var/obj/KageSuitMizu/B = new/obj/KageSuitMizu
				var/obj/KageHatMizu/S = new/obj/KageHatMizu
				B.loc = M
				S.loc = M
				M.verbs += new /mob/Nara/verb/kageteleport()
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Mist."

		MakeOtokage()
			set category = "Ranks"
			var/mob/M = input("","Make Otokage")as null|anything in players
			if(!M) return
			if(M.Village == "Sound")
				M<<"You have been made Otokage!"
				world<<"[M] is now Otokage!"
			//	usr.medals("Otokage")
				M.rank = "Kage"
				M.cap =  Kcap
				M.seals=100

				M.squads=1
				M.squad="<FONT COLOR=#ff8c00>O</FONT><FONT COLOR=#ff9900>t</FONT><FONT COLOR=#ffa500>o</FONT><FONT COLOR=#e89b04>k</FONT><FONT COLOR=#d09108>a</FONT><FONT COLOR=#b8860b>g</FONT><FONT COLOR=#d09108>e</FONT><FONT COLOR=#e89b04>-</FONT><FONT COLOR=#ffa500>s</FONT><FONT COLOR=#ff9d00>a</FONT><FONT COLOR=#ff9500>m</FONT><FONT COLOR=#ff8c00>a</FONT>"
				var/obj/KageSuitOto/B = new/obj/KageSuitOto
				var/obj/KageHatOto/S = new/obj/KageHatOto
				B.loc = M
				S.loc = M
				M.verbs += new /mob/Nara/verb/kageteleport()
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Sound."
		MakeAmekage()
			set category = "Ranks"
			var/mob/M = input("","Make Amekage")as null|anything in players
			if(!M) return
			if(M.Village == "Rain")
				M<<"You have been made Amekage!"
				world<<"[M] is now Amekage!"
			//	usr.medals("Amekage")
				M.rank = "Kage"
				M.seals=100
				M.squads=1
				M.squad="<FONT COLOR=#483d8b>A</FONT><FONT COLOR=#4554b7>m</FONT><FONT COLOR=#4169e1>e</FONT><FONT COLOR=#4372d3>k</FONT><FONT COLOR=#457ac3>a</FONT><FONT COLOR=#4682b4>g</FONT><FONT COLOR=#457ac3>e</FONT><FONT COLOR=#4372d3>-</FONT><FONT COLOR=#4169e1>s</FONT><FONT COLOR=#445bc5>a</FONT><FONT COLOR=#464ca8>m</FONT><FONT COLOR=#483d8b>a</FONT>"
				M.cap =  Kcap
				var/obj/KageSuitAme/B = new/obj/KageSuitAme
				var/obj/KageHatAme/S = new/obj/KageHatAme
				B.loc = M
				S.loc = M
				M.verbs += new /mob/Nara/verb/kageteleport()
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Rain."
		MakeWaterHero()
			set category = "Ranks"
			var/mob/M = input("","Make Waterhero")as null|anything in players
			if(!M) return
			if(M.Village == "Waterfall")
				M<<"You have been made Water Fall Hero!"
				world<<"[M] is now Water Falls Hero!"
			//	usr.medals("WaterHero")
				M.rank = "Kage"
				M.seals=100
				M.squads=1
				M.squad="Waterfall Hero"
				M.cap =  Kcap
				var/obj/WaterHeroSuit/B = new/obj/WaterHeroSuit
				B.loc = M
				M.verbs += new /mob/Nara/verb/kageteleport()
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Water Fall."

		MakeFumakage()
			set category = "Ranks"
			var/mob/M = input("","Make Fumakage")as null|anything in players
			if(!M) return
			if(M.Village == "Grass")
				M<<"You have been made Fumakage"
				world<<"[M] is now Fumakage"
			//	usr.medals("GFL")
				M.rank = "Kage"
				M.seals=100
				M.cap =  Kcap
				M.squads=1
				M.squad="Fumakage"
				var/obj/GrassLSuit/B = new/obj/GrassLSuit
				B.loc = M
				M.verbs += new /mob/Nara/verb/kageteleport()
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Grass."

		MakeYukikage()
			set category = "Ranks"
			var/mob/M = input("","Make Yukikage")as null|anything in players
			if(!M) return
			if(M.Village == "Snow")
				M<<"You have been made Yukikage"
				world<<"[M] is now Yukikage"
			//	usr.medals("SFL")
				M.rank = "Kage"
				M.seals=100
				M.cap =  Kcap
				M.squads=1
				M.squad="Yukikage"
				var/obj/SnowLSuit/B = new/obj/SnowLSuit
				B.loc = M
				M.verbs += new /mob/Nara/verb/kageteleport()
				M.verbs += typesof(/mob/hokage/verb)
			else
				usr<<"Their not from the village of Snow."

		MakeHebiLeader()
			set category="Ranks"
			var/mob/M = input("","Make Hebi Leader")as null|anything in players
			if(!M) return
			M.Village="Hebi"
			M<<"You Have Been Made The Leader Of Hebi!"
		//	usr.medals("Hebi Leader")
			var/obj/HebiS/H = new()
			H.loc=M
			M.rank = "Missing"
			M.cap = SAcap
			M.seals=100
			M.Hebileader=1
			M.Hebimember=1
			M.squads=1
			M.squad="Hebi"
			M.verbs += /mob/hebi/verb/InviteA
			M.verbs += /mob/hebi/verb/BootA
			M.verbs += /mob/hokage/verb/WAR
			M.verbs += /mob/hokage/verb/EscapeW

		MakeAkatLeader()
			set category="Ranks"
			var/mob/M = input("","Make Akatsuki Leader")as null|anything in players
			if(!M) return
			M.Village="Akatsuki"
			M<<"You Have Been Made The Leader Of Akatsuki!"
			world<<"Someone Has Founded The Organization Of Akatsuki,The Leader Will Reveal Themselves in Time"
		//	usr.medals("Akatsuki Leader")
			var/obj/AKAH/H = new()
			var/obj/AKAS/S = new()
			var/obj/AKASW/B = new()
			var/obj/TobiM/K = new()
			var/obj/KisameS/X = new()
			X.loc=M
			K.loc=M
			B.loc=M
			H.loc=M
			S.loc=M
			M.rank = "Missing"
			M.cap = SAcap
			M.seals=100
			M.akatsukileader=1
			M.akatsukimember=1
			M.squads=1
			M.squad="Akatsuki"
			M.verbs += /mob/akatsuki/verb/InviteA
			M.verbs += /mob/akatsuki/verb/BootA
			M.verbs += /mob/hokage/verb/WAR
			M.verbs += /mob/hokage/verb/EscapeW
			M.verbs += /mob/Akatsuki/verb/GiveD
			M.verbs += /mob/Akatsuki/verb/Fuin

		MakeSoundLeader()
			set category="Ranks"
			var/mob/M = input("","Make Sound Leader")as null|anything in players
			if(!M) return
			M.Village="Sound Organization"
			M<<"You Have Been Made Leader Of SO!"
			world<<"The Organization Of SO Has Been Founded By [M], Another Criminal Orginization To Add To The Bounty!"
		//	usr.medals("SO")
			M.soundleader=1
			M.soundmember=1
			M.cap = SAcap
			M.seals=100
			M.squads=1
			M.rank = "Missing"
			M.squad="SO"
			M.verbs += /mob/sound/verb/InviteS
			M.verbs += /mob/sound/verb/BootS
			M.verbs += /mob/hokage/verb/WAR
			M.verbs += /mob/hokage/verb/EscapeW
			M.verbs += new /mob/sound/verb/Kyoumeisen
			M.verbs += new /mob/SOrg/verb/Cursed


		Make7SwordsmenLeader()
			set category="Ranks"
			var/mob/M = input("","Make 7Swordsmen Leader")as null|anything in players
			if(!M) return
			M.Village="7Swordsmen"
			M<<"You Have Been Made The Seven Swordsmen Leader!"
			world<<"Oh No! [M] The Seven Swordsmen Of The Mists Leader Is Here!"
		//	usr.medals("SSM")
			var/obj/SevenSM/E = new()
			var/obj/Kisamesword/H = new()
			var/obj/Zabuzasword/S = new()
			var/obj/Shibuki/R = new()
			var/obj/Nuibari/W = new()
			var/obj/RaidenS/O = new()
			var/obj/Chojuro/T = new()
			var/obj/Kabutowari/Q = new()
			Q.loc=M
			T.loc=M
			O.loc=M
			W.loc=M
			R.loc=M
			E.loc=M
			H.loc=M
			S.loc=M
			M.rank = "Missing"
			M.cap = SAcap
			M.seals=100
			M.swordsmenleader=1
			M.swordsmenmember=1
			M.squads=1
			M.squad="7Swordsmen"
			M.verbs += new /mob/mist/verb/KirigakurenoJutsu()
			M.verbs += new /mob/mist/verb/MistArmor()
			M.verbs += /mob/swordsmen/verb/InviteA
			M.verbs += /mob/swordsmen/verb/BootA
			M.verbs += /mob/hokage/verb/WAR
			M.verbs += /mob/hokage/verb/EscapeW

		MakePoliceLeader()
			set category="Ranks"
			var/mob/M = input("","Make Police Leader")as null|anything in players
			if(!M) return
			M.Village="PoliceForce"
			M<<"You Are Now The Police!"
			world<<" Beeeewww Weeeeewww Beeeeewww Weeeeew. That's Right, [M] The PoPo Is Here!"
		//	usr.medals("Police")
			M.verbs += new /mob/lightning/verb/Kaminari()
			var/obj/PoliceCap/S = new()
			S.loc=M
			M.policeleader=1
			M.policemember=1
			M.squads=1
			M.squad="Police"
			M.rank = "Police"
			M.seals=100
			M.cap=SAcap
			M.verbs += typesof(/mob/Police/verb)
			M.verbs += /mob/hokage/verb/WAR

		Remove_Kage()
			set category = "Ranks"
			var/mob/M = input("","Remove Kage")as null|anything in players
			if(!M) return
			if(M)
				M<<"You have been removed of Kage!"
				M.rank = "Hunter"
				M.cap = Hcap
				M.squads=0
				M.squad=""
				M.verbs -= typesof(/mob/hokage/verb)
			for(var/obj/KageSuitHo/E in M.contents)
				del(E)
			for(var/obj/KageHatHo/E in M.contents)
				del(E)
			for(var/obj/KageSuitKaze/E in M.contents)
				del(E)
			for(var/obj/KageHatKaze/E in M.contents)
				del(E)
			for(var/obj/KageSuitRai/E in M.contents)
				del(E)
			for(var/obj/KageHatRai/E in M.contents)
				del(E)
			for(var/obj/KageSuitTsuchi/E in M.contents)
				del(E)
			for(var/obj/KageHatTsuchi/E in M.contents)
				del(E)
			for(var/obj/KageSuitMizu/E in M.contents)
				del(E)
			for(var/obj/KageHatMizu/E in M.contents)
				del(E)
			for(var/obj/KageSuitOto/E in M.contents)
				del(E)
			for(var/obj/KageHatOto/E in M.contents)
				del(E)
			for(var/obj/KageSuitAme/E in M.contents)
				del(E)
			for(var/obj/KageHatAme/E in M.contents)
				del(E)
			for(var/obj/WaterHeroSuit/E in M.contents)
				del(E)
			for(var/obj/GrassLSuit/E in M.contents)
				del(E)
			for(var/obj/SnowLSuit/E in M.contents)
				del(E)

		StripOrganization()
			set category="Ranks"
			set name = "Remove Organization"
			var/mob/M = input("","Remove Organization")as null|anything in players
			if(!M) return
			M.Village="None"
			M.rank="Missing"
			M.verbs+= new /mob/jutsu/verb/BakuretsuBunshin
			M.verbs -= new /mob/sound/verb/Kyoumeisen
			M.verbs -= new /mob/sound/verb/Zankyokukuuha
			M.verbs -= new /mob/sound/verb/ZanArmor
			M.verbs -= new /mob/sound/verb/Seneijashu
			M.verbs -= new /mob/sound/verb/Zankuuha
			M.verbs -= new /mob/Akatsuki/verb/Fuin
			M.verbs -= new /mob/Akatsuki/verb/GiveD
			M.verbs -= new /mob/SOrg/verb/Cursed
			M.verbs -= new /mob/mist/verb/KirigakurenoJutsu()
			M.verbs -= new /mob/mist/verb/MistArmor()
			M.soundleader=0
			M.soundmember=0
			M.akatsukimember=0
			M.akatsukileader=0
			M.swordsmenmember=0
			M.swordsmenleader=0
			M.hebileader=0
			M.hebimember=0
			M.policeleader=0
			M.policemember=0
			M.cap = Jcap
			for(var/obj/AKAH/H in M.contents)
				del(H)
			for(var/obj/AKAS/S in M.contents)
				del(S)
			for(var/obj/SOSuit/O in M.contents)
				del(O)
			for(var/obj/SevenSM/E in M.contents)
				del(E)
			for(var/obj/HebiS/H in M.contents)
				del(H)

		CustomJutsu()
			set name = "Custom Jutsu"
			set category = "Nin Ranks"
			var/mob/M = input("","Player")as null|anything in players
			if(!M) return
			if(M)
				switch(input("What Jutsu do you wish to give them?", text) in list("Bug Bunshin","Mushi","Nikudan","Bubun Baika","Clay Bunshin","Clay Bunshin Explosion","Sand Flight","Sand Sphere","Sensatsu Suishou","Mirrors","Tracking Fang","Kaiten","Hakke Kuushou","Tsuuga","Capture Blood","Blood Possession Ritual","Bone Sword","Tsubaki","Sawarabi","Bee Wings","Spider Web","Konoha Senpuu","Ura Renge","Slice Tendons","Absorb","Kage Shibari","Tajuu Bunshin","Nisen Rendan","Snakes","Soul Removal","Wind Tunnel","Lion's Barrage","Teleport","Fly","Blind","Kage Shuriken","Kage Kunai","Cancel"))
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

		MakeGenin()
			set category = "Nin Ranks"
			var/mob/M = input("","Make Genin")as null|anything in players
			if(!M) return
			world<<"[M] is now a genin"
			M.rank = "Genin"
			M.cap = Gcap
			var/obj/Headband/B = new/obj/Headband
			B.loc = M

		MakeChuunin()
			set category = "Nin Ranks"
			var/mob/M = input("","Make Chúnin")as null|anything in players
			if(!M) return
			world<<"[M] is now a Chúnin"
			M.rank = "Chúnin"
			M.cap = Ccap
			if(M.Village =="Snow")
				var/obj/ChuuninVestSnow/B = new/obj/ChuuninVestSnow
				B.loc = M
			if(M.Village =="Leaf")
				var/obj/ChuuninVestLeaf/B = new/obj/ChuuninVestLeaf
				B.loc = M
			if(M.Village =="Rain")
				var/obj/ChuuninVestRain/B = new/obj/ChuuninVestRain
				B.loc = M
			if(M.Village =="Sand")
				var/obj/ChuuninVestSand/B = new/obj/ChuuninVestSand
				B.loc = M
			if(M.Village =="Rock")
				var/obj/ChuuninVestRock/B = new/obj/ChuuninVestRock
				B.loc = M
			if(M.Village =="Mist")
				var/obj/ChuuninVestMist/B = new/obj/ChuuninVestMist
				B.loc = M
			if(M.Village =="Cloud")
				var/obj/ChuuninVestCloud/B = new/obj/ChuuninVestCloud
				B.loc = M
			if(M.Village == "Grass")
				var/obj/ChuuninVestGrass/B = new/obj/ChuuninVestGrass
				B.loc = M
			if(M.Village == "Sound")
				var/obj/ChuuninVestSound/B = new/obj/ChuuninVestSound
				B.loc = M
			if(M.Village =="Waterfall")
				var/obj/ChuuninVestWaterfall/B = new/obj/ChuuninVestWaterfall
				B.loc = M

		MakeJounin()
			set category = "Nin Ranks"
			var/mob/M = input("","Make Jounin")as null|anything in players
			if(!M) return
			world<<"[M] is now a jounin"
			M.seals=100
			M.cap = Jcap
			M.rank="Jounin"
			M.verbs+= new /mob/Buyou/verb/Kagebuyou
			M.jounin=1
			if(M.Village=="Leaf")
				var/obj/JouninLeafSuit/R = new/obj/JouninLeafSuit
				R.loc=M
			if(M.Village =="Sand")
				var/obj/JouninSandSuit/S = new/obj/JouninSandSuit
				S.loc = M
			if(M.Village =="Sound")
				var/obj/JouninSoundSuit/S = new/obj/JouninSoundSuit
				S.loc = M
			if(M.Village =="Grass")
				var/obj/JouninGrassSuit/S = new/obj/JouninGrassSuit
				S.loc = M
			if(M.Village =="Rain")
				var/obj/JouninRainSuit/S = new/obj/JouninRainSuit
				S.loc = M
			if(M.Village =="Cloud")
				var/obj/JouninCloudSuit/S = new/obj/JouninCloudSuit
				S.loc = M
			if(M.Village =="Mist")
				var/obj/JouninMistSuit/S = new/obj/JouninMistSuit
				S.loc = M
			if(M.Village =="Rock")
				var/obj/JouninRockSuit/S = new/obj/JouninRockSuit
				S.loc = M
			if(M.Village =="Snow")
				var/obj/JouninSnowSuit/S = new/obj/JouninSnowSuit
				S.loc = M
			if(M.Village =="Waterfall")
				var/obj/JouninWaterfallSuit/S = new/obj/JouninWaterfallSuit
				S.loc = M

		MakeHunter()
			set category = "Nin Ranks"
			var/mob/M = input("","Make Hunter")as null|anything in players
			if(!M) return
			world<<"[M] is now a Hunter"
			M.squads=1
			M.rank = "Hunter"
			M.cap = Hcap
			M.verbs += new /mob/jutsu/verb/JourouSenbon()
			if(M.Village=="Leaf")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				var/obj/HSuit/B = new/obj/HSuit
				var/obj/AnbuR/R = new/obj/AnbuR
				B.loc=M
				R.loc=M
				M.cap = Hcap
				M.rank="Hunter"
				M.hunternin=1
			if(M.Village =="Sand")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.cap = Hcap
				M.rank="Hunter"
				M.hunternin=1
				var/obj/AnbuY/R = new/obj/AnbuY
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Sound")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.cap = Hcap
				M.rank="Hunter"
				M.hunternin=1
				var/obj/AnbuBla/R = new/obj/AnbuBla
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Grass")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.cap = Hcap
				M.rank="Hunter"
				M.hunternin=1
				var/obj/AnbuG/R = new/obj/AnbuG
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Rain")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.cap = Hcap
				M.rank="Hunter"
				M.hunternin=1
				var/obj/AnbuB/R = new/obj/AnbuB
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Cloud")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.cap = Hcap
				M.rank="Hunter"
				M.hunternin=1
				var/obj/AnbuGr/R = new/obj/AnbuGr
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Mist")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.cap = Hcap
				M.rank="Hunter"
				M.hunternin=1
				var/obj/AnbuLB/R = new/obj/AnbuLB
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Rock")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.cap = Hcap
				M.rank="Hunter"
				M.hunternin=1
				var/obj/AnbuBr/R = new/obj/AnbuBr
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Snow")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.cap = Hcap
				M.rank="Hunter"
				M.hunternin=1
				var/obj/AnbuW/R = new/obj/AnbuW
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M
			if(M.Village =="Waterfall")
				M.ChakraC=100
				M.verbs+= new /mob/jutsu/verb/JourouSenbon
				M.cap = Hcap
				M.rank="Hunter"
				M.hunternin=1
				var/obj/AnbuDB/R = new/obj/AnbuDB
				var/obj/HSuit/S = new/obj/HSuit
				S.loc = M
				R.loc = M

		MakeAnbu()
			set category = "Nin Ranks"
			var/mob/M = input("","Make Anbu")as null|anything in players
			if(!M) return
			if(M.JP)
				usr<<"You Are Only Allowed One Jutsu"
				return
			if(M)
				switch(input("What Jutsu do you wish to give them?", text) in list("Focus","Homing Windmill","Homing Shuriken","Homing Kunai","Hunter","Missing","Zan No Jutsu","Bee Armor","Kaiten","Ice Armor","Hakke Kuushou","Katon Ryuuka","Rai No Jutsu","Katon Karyuu Endan","Sensatsu Suishou","Mist","Mirrors","Nikudan","Nikudan Hari","Bubun Baika","Kage Shibari","Kage Kubi Shibaru","Bone Sword","Bone Whip","Yanagi","Tsubaki","Karamatsu","Teshi Sendan","Tessenka","Sawarabi","Konchuu","Explode Bug","Tame","Tsuuga","Gatsuuga","Soutourou","Konoha Renpuu","Konoha Senpuu","Omote Renge","Ura Renge","Konoha Genuriki Senpuu","Suna Shuirken","Suna Shushin","Sand Sphere","Sand Armor","Fire Armor","Sabaku Kyuu","Sabaku Sousou","Bee Sabaku Kyuu","Bee Sabaku Sousou","Shousen","Chakra No Mesu","Konchuu","Screw Nerves","Slice Tendons","Teleport","Fly","Bug Armor","Bug Kyuu","Bug Sousou","Bees","Explode Bee","Bee Wings","Counter","Sexy","Kage Shuriken","Kage Kunai","Tajuu Bunshin","Nisen Rendan","Restore","Absorb","Cansel"))
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
					if("Nikudan Hari")
						M.verbs += new /mob/Akimichi/verb/NikudanHariSensha()
					if("Bubun Baika")
						M.verbs += new /mob/Akimichi/verb/BabunBaikaNoJutsu()
					if("Kage Shibari")
						M.verbs += new /mob/Nara/verb/kageshibari()
						M.verbs += new /mob/Nara/verb/ExtendShadow()
						M.verbs += new /mob/Nara/verb/RetractShadow()
					if("Kage Kubi Shibaru")
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
					if("Konchuu")
						M.verbs += new /mob/Aburame/verb/summonkonchuu()
						M.verbs += new /mob/Aburame/verb/Placekonchuu()
						M.verbs += new /mob/Aburame/verb/DestroyKonchuu()
					if("Explode Bug")
						M.verbs += new /mob/Aburame/verb/ExplodeKonchuu()
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
				usr<<"They are not from your village or they are not strong enough for that rank."

		MakeAnbuCaptain()
			set category = "Nin Ranks"
			var/mob/M = input("","Make Anbu Captain")as null|anything in players
			if(!M) return
			if(M.JP1)
				usr<<"You Are Only Allowed One Jutsu"
				return
			if(M)
				switch(input("What Jutsu do you wish to give them?", text) in list("Focus","Homing Windmill","Homing Shuriken","Homing Kunai","Hunter","Missing","Zan No Jutsu","Bee Armor","Kaiten","Ice Armor","Hakke Kuushou","Katon Ryuuka","Rai No Jutsu","Katon Karyuu Endan","Sensatsu Suishou","Mist","Mirrors","Nikudan","Nikudan Hari","Bubun Baika","Kage Shibari","Kage Kubi Shibaru","Bone Sword","Bone Whip","Yanagi","Tsubaki","Karamatsu","Teshi Sendan","Tessenka","Sawarabi","Konchuu","Explode Bug","Tame","Tsuuga","Gatsuuga","Soutourou","Konoha Renpuu","Konoha Senpuu","Omote Renge","Ura Renge","Konoha Genuriki Senpuu","Suna Shuirken","Suna Shushin","Sand Sphere","Sand Armor","Fire Armor","Sabaku Kyuu","Sabaku Sousou","Bee Sabaku Kyuu","Bee Sabaku Sousou","Shousen","Chakra No Mesu","Konchuu","Screw Nerves","Slice Tendons","Teleport","Fly","Bug Armor","Bug Kyuu","Bug Sousou","Bees","Explode Bee","Bee Wings","Counter","Sexy","Kage Shuriken","Kage Kunai","Tajuu Bunshin","Nisen Rendan","Restore","Absorb","Cansel"))
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
					if("Nikudan Hari")
						M.verbs += new /mob/Akimichi/verb/NikudanHariSensha()
					if("Bubun Baika")
						M.verbs += new /mob/Akimichi/verb/BabunBaikaNoJutsu()
					if("Kage Shibari")
						M.verbs += new /mob/Nara/verb/kageshibari()
						M.verbs += new /mob/Nara/verb/ExtendShadow()
						M.verbs += new /mob/Nara/verb/RetractShadow()
					if("Kage Kubi Shibaru")
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
					if("Konchuu")
						M.verbs += new /mob/Aburame/verb/summonkonchuu()
						M.verbs += new /mob/Aburame/verb/Placekonchuu()
						M.verbs += new /mob/Aburame/verb/DestroyKonchuu()
					if("Explode Bug")
						M.verbs += new /mob/Aburame/verb/ExplodeKonchuu()
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
				usr<<"They are not from your village or they are not strong enough for that rank."

		MakeSannin()
			set category = "Nin Ranks"
			var/mob/M = input("","Make Sannin")as null|anything in players
			if(!M) return
			if(M.JP2)
				usr<<"You Are Only Allowed One Jutsu"
				return
			if(M)
				switch(input("What Jutsu do you wish to give them?", text) in list("Focus","Homing Windmill","Homing Shuriken","Homing Kunai","Hunter","Missing","Zan No Jutsu","Bee Armor","Kaiten","Ice Armor","Hakke Kuushou","Katon Ryuuka","Rai No Jutsu","Katon Karyuu Endan","Sensatsu Suishou","Mist","Mirrors","Nikudan","Nikudan Hari","Bubun Baika","Kage Shibari","Kage Kubi Shibaru","Bone Sword","Bone Whip","Yanagi","Tsubaki","Karamatsu","Teshi Sendan","Tessenka","Sawarabi","Konchuu","Explode Bug","Tame","Tsuuga","Gatsuuga","Soutourou","Konoha Renpuu","Konoha Senpuu","Omote Renge","Ura Renge","Konoha Genuriki Senpuu","Suna Shuirken","Suna Shushin","Sand Sphere","Sand Armor","Fire Armor","Sabaku Kyuu","Sabaku Sousou","Bee Sabaku Kyuu","Bee Sabaku Sousou","Shousen","Chakra No Mesu","Konchuu","Screw Nerves","Slice Tendons","Teleport","Fly","Bug Armor","Bug Kyuu","Bug Sousou","Bees","Explode Bee","Bee Wings","Counter","Sexy","Kage Shuriken","Kage Kunai","Tajuu Bunshin","Nisen Rendan","Cansel"))
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
					if("Nikudan Hari")
						M.verbs += new /mob/Akimichi/verb/NikudanHariSensha()
					if("Bubun Baika")
						M.verbs += new /mob/Akimichi/verb/BabunBaikaNoJutsu()
					if("Kage Shibari")
						M.verbs += new /mob/Nara/verb/kageshibari()
						M.verbs += new /mob/Nara/verb/ExtendShadow()
						M.verbs += new /mob/Nara/verb/RetractShadow()
					if("Kage Kubi Shibaru")
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
					if("Konchuu")
						M.verbs += new /mob/Aburame/verb/summonkonchuu()
						M.verbs += new /mob/Aburame/verb/Placekonchuu()
						M.verbs += new /mob/Aburame/verb/DestroyKonchuu()
					if("Explode Bug")
						M.verbs += new /mob/Aburame/verb/ExplodeKonchuu()
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
				usr<<"Jutsu Has Been Picked"
				M<<"You have been promoted to the rank of Sannin"
				world<<"[M] is now a Sannin"
				M.rank = "Sannin"
				M.cap = SAcap
				M.verbs += new /mob/Nara/verb/kageteleport()
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
				usr<<"They are not from your village or they are not strong enough for that rank."

