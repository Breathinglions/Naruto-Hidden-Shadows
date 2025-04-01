mob
	proc/CheckAction()
		return

proc/Name2Mob(var/mName as text)
	for(var/mob/i in world)
		if("[lowertext(i.name)]" == "[lowertext(mName)]")
			return i

mob/var
	NPCC = 0

mob/npc/Tobirama
	name = "Hashirama"
	icon = 'SecondHokage.dmi'
	PK = 0
	NPC = 1
	health = 99999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category = "Tobirama"
			if(usr.rank == "Student")
				usr<<"You're Not Strong Enough To Be Taught My Suiton Techniques!"
				return
			if(usr.Tobirama)
				usr.verbs += new /mob/Tobirama/verb/Goshun()
				usr<<"<b><font color=blue>You've learned Goshun Mawashi No Jutsu"
				usr.verbs += new /mob/Tobirama/verb/Slash()
				usr<<"<b><font color=blue>You've learned Hiraishingiri"
				usr.verbs += new /mob/Tobirama/verb/WaterDragon()
				usr<<"<b><font color=blue>You've learned Suiton Suiryuudan no Jutsu"
				usr.verbs += new /mob/Tobirama/verb/Waterfall()
				usr<<"<b><font color=blue>You've learned Suiton Suijinheki"
				usr.verbs += new /mob/Tobirama/verb/Wave()
				usr<<"<b><font color=blue>You've learned Suiton Suidanha"
				usr.verbs += new /mob/Tobirama/verb/Whip()
				usr<<"<b><font color=blue>You've learned Suiton Suiben"
				usr.verbs += new /mob/Tobirama/verb/SuitonSuishouha()
				usr<<"<b><font color=blue>You've learned Suiton Suishouha"
			else
				usr<<"Dismiss, fellow ninja!"


mob/npc/Senju
	name = "Hashirama"
	icon = 'Npc Senju.dmi'
	PK = 0
	NPC = 1
	health = 99999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category = "Senju"
			if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chúnin")
				usr<<"You're Not Strong Enough To Be Taught My Special Kekkai Genkai!"
				return
			if(usr.Senju)
				usr.verbs += new /mob/Senju/verb/Branch()
				usr<<"<b><font color=#6F4242>You've learned Mokuton Shiten Shuriken no Jutsu!"
				usr.verbs += new /mob/Senju/verb/Dragon()
				usr.verbs += new /mob/Senju/verb/Jikai()
				usr<<"<b><font color=#6F4242>You've learned Mokuton Mokuryuu no Jutsu & Mokuton Hijutsu Jukai Kotan!"
				usr.verbs += new /mob/Senju/verb/Healing()
				usr<<"<b><font color=#6F4242>You've learned Chiyu no Chikara!"
				usr.verbs += new /obj/bunshins/MokutonBunshinnojutsu/verb/WoodBunshinNoJutsu()
				usr.verbs += new /mob/Senju/verb/Hand()
				usr<<"<b><font color=#6F4242>You've learned Mokuton Bunshin no Jutsu & Mokuton Hotei no Jutsu!"
				usr.verbs += new /mob/Senju/verb/SM()
				usr<<"<b><font color=#6F4242>You've learned Sage Mode!"
			else
				usr<<"Kukukuku, better leave before I kill you"

mob/npc/Zetsu
	name = "Zetsu"
	icon = 'Npc Zetsu.dmi'
	PK = 0
	NPC = 1
	health = 99999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category = "Zetsu"
			if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chúnin")
				usr<<"Your Not Strong Enough Yet"
				return
			if(usr.Zetsu)
				usr.verbs += new /mob/Zetsu/verb/Mountain()
				usr<<"<b><font color=green>You've learned Doton Yama Tatsu no Jutsu!"
				usr.verbs += new /mob/Zetsu/verb/StoneBarrier()
				usr.verbs += new /mob/Zetsu/verb/StoneBlast()
				usr<<"<b><font color=green>You've learned Doton Ishi Shoheki no Jutsu & Doton Ishi Bakufou no Jutsu!"
				usr.verbs += new /mob/Zetsu/verb/Missle()
				usr<<"<b><font color=green>You've learned Doton Kasui Dangan no Jutsu!"
				usr.verbs += new /mob/Zetsu/verb/Mayfly()
				usr<<"<b><font color=green>You've learned Hijutsu Kagerou no Jutsu!"
				usr.verbs += new /mob/Zetsu/verb/Jaws()
				usr<<"<b><font color=green>You've learned Doton Shichi no Jutsu!"
				usr.verbs += new /obj/bunshins/IshiBunshinnojutsu/verb/IshiBunshinNoJutsu()
				usr.verbs += new /mob/Zetsu/verb/Switch()
				usr<<"<b><font color=green>You've learned Ishi Bunshin no Jutsu & Doton Karada Sokui no Jutsu!"
			else
				usr<<"Kukukuku, better leave before I kill you"


mob/npc/ChakraWi
	name = "Genma"
	icon = 'NPC.dmi'
	icon_state="Shiranui Genma"
	weaknin=1
	PK = 0
	NPC = 1
	health = 999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category = "Shiranui Genma"
			if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chúnin")
				usr<<"Your Not Strong Enough To Be Taught Your Chakra Nature Yet"
				return
			if(!usr.wind)
				usr<<"I'm sorry, but your chakra nature is not Wind. I cannot teach you the Wind Element Jutsus..."
			if(usr.wind)
				usr<<"Hmm...So your chakra element nature is Wind!! I shall teach you what I can"
				usr.verbs += new /mob/wind/verb/Sickle_S()
				usr<<"<b><font color=blue>You've learned Fusajin No Jutsu!"
			else
				usr<<"<font color=green><b>Shesh, I'm not giving out jutsu's here, Get Jounin or higher and Wind Nature!"
				return
mob/npc/ChakraL
	name = "Raido"
	icon = 'NPC.dmi'
	icon_state="Namiashi Raido"
	weaknin=1
	PK = 0
	NPC = 1
	health = 9999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category = "Namiashi Raido"
			if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chúnin")
				usr<<"Your Not Strong Enough To Be Taught Your Chakra Nature Yet"
				return
			if(!usr.lightning)
				usr<<"I'm sorry, but your chakra nature is not Lightning. I cannot teach you the Lightning Element Jutsus..."
			if(usr.lightning)
				usr<<"Hmm...So your chakra element nature is Lightning!! I shall teach you what I can"
				usr.verbs += new /mob/lightning/verb/Kaminari()
				usr<<"<b><font color=blue>You've learned Raiton Kaminari No Jutsu!"
			else
				usr<<"<font color=yellow><b>Shesh, I'm not giving out jutsu's here, Get Jounin or higher and Lightning Nature!"
				return
mob/npc/ChakraE
	name = "Genma"
	icon = 'NPC.dmi'
	icon_state="Shiranui Genma"
	weaknin=1
	PK = 0
	NPC = 1
	health = 9999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category = "Shiranui Genma"
			if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chúnin")
				usr<<"Your Not Strong Enough To Be Taught Your Chakra Nature Yet"
				return
			if(!usr.earth)
				usr<<"I'm sorry, but your chakra nature is not Earth. I cannot teach you the Earth Element Jutsus..."
			if(usr.earth)
				usr<<"Hmm...So your chakra element nature is Earth!! I shall teach you what I can"
				usr.verbs += new /mob/earth/verb/Shake()
				usr<<"<b><font color=blue>You've learned Doton Jishin No Jutsu!"
			else
				usr<<"<font color=green><b>Shesh, I'm not giving out jutsu's here, Get Jounin or higher and Earth Nature!"
				return
mob/npc/ChakraW
	name = "Gekkou Hayate"
	icon = 'NPC.dmi'
	icon_state="Gekkou Hayate"
	weaknin=1
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category = "Gekkou Hayate"
			if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chúnin")
				usr<<"Your Not Strong Enough To Be Taught Your Chakra Nature Yet"
				return
			if(!usr.water)
				usr<<"I'm sorry, but your chakra nature is not Water. I cannot teach you the Water Element Jutsus..."
			if(usr.water)
				usr<<"Hmm...So your chakra element nature is Water!! I shall teach you what I can"
				usr.verbs += new /mob/water/verb/Shark()
				usr<<"<b><font color=blue>You've learned Suiton Same No Jutsu!"
			else
				usr<<"<font color=blue><b>Shesh, I'm not giving out jutsu's here, Get Jounin or higher and Water Nature!"
				return
mob/npc/ChakraF
	name = "Iruka"
	icon = 'NPC.dmi'
	icon_state="Umino Iruka"
	weaknin=1
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category = "Iruka"
			if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chúnin")
				usr<<"Your Not Strong Enough To Be Taught Your Chakra Nature Yet"
				return
			if(!usr.fire)
				usr<<"I'm sorry, but your chakra nature is not Fire. I cannot teach you the will of Fire..."
			if(usr.fire)
				usr<<"Hmm...So your chakra element nature is Fire!! I shall teach you what I can"
				usr.verbs += new /mob/fire/verb/FlameRing()
				usr<<"<b><font color=blue>You've learned Katon Honoo No Ringu No Jutsu!"
			else
				usr<<"<font color=red><b>Shesh, I'm not giving out jutsu's here, Get Jounin or higher and Fire Nature!"
				return
mob/npc/Prizeguy
	name = "Prize Guy"
	icon = 'Npc Banker.dmi'
	PK = 0
	NPC = 1
	health = 999999999999999999999999999999
	verb/Redeem()
		set src in oview(2)
		switch(input("Would you like to redeem your Special Yen for prizes?","Special Yen: [usr.tourneyP]")in list("Village Change - 50","Chakra Nature - 30","Blue Blade - 5","Spear - 5","Red Blade - 5","Name Change - 1","Face Icon Change - 1","Custom Object - 5","Cancel"))
/*		if("Custom Jutsu - 15")
				if(usr.tourneyP>14)
					usr.tourneyP-=15
					switch(input("What Jutsu do you wish to get?", text) in list("Bug Bunshin","Mushi","Nikudan","Bubun Baika","Clay Bunshin","Clay Bunshin Explosion","Sand Flight","Sand Sphere","Sensatsu Suishou","Mirrors","Tracking Fang","Kaiten","Hakke Kuushou","Tsuuga","Capture Blood","Blood Possession Ritual","Bone Sword","Teshi Sendan","Sawarabi","Bee Wings","Spider Web","Konoha Senpuu","Ura Renge","Slice Tendons","Absorb","Kage Shibari","Tajuu Bunshin","Nisen Rendan","Snakes","Soul Removal","Wind Tunnel","Lion's Barrage","Teleport","Fly","Blind","Kage Shuriken","Kage Kunai","Cancel"))
						if("Lion's Barrage")
							usr.verbs += new /mob/Uchiha/verb/LionsBarrage()
						if("Wind Tunnel")
							usr.verbs += new /mob/Temari/verb/WD()
						if("Soul Removal")
							usr.verbs += new /mob/Pein/verb/PathofHuman()
						if("Snakes")
							usr.verbs += new /mob/Orochimaru/verb/Snake()
						if("Spider Web")
							usr.verbs += new /mob/Kidomaru/verb/Spiderweb()
						if("Blood Possession Ritual")
							usr.verbs += new /mob/Hidan/verb/Ritual()
						if("Capture Blood")
							usr.verbs += new /mob/Hidan/verb/Steal_B()
						if("Tracking Fang")
							usr.verbs += new /mob/Hatake/verb/Fang_P()
						if("Sand Flight")
							usr.verbs += new /mob/SandF/verb/Fly()
						if("Clay Bunshin")
							usr.verbs += new /obj/bunshins/ClayBunshinnojutsu/verb/ClayBunshinNoJutsu()
						if("Clay Bunshin Explosion")
							usr.verbs += new /mob/jutsu/verb/ClayArt_BE()
						if("Bug Bunshin")
							usr.verbs += new /obj/bunshins/KekkaiKonchuuBunshinnoJutsu/verb/KekkaiKonchuuBunshinnoJutsu()
						if("Mushi")
							usr.verbs += new /mob/Aburame/verb/Mushi()
						if("Restore")
							usr.verbs += new /mob/Medical/verb/Restore_Jutsu()
						if("Absorb")
							usr.verbs += new /mob/Medical/verb/ChakraAbsorb()
						if("Focus")
							usr.verbs += new /mob/Tenten/verb/Focus()
						if("Homing Shuriken")
							usr.verbs += new /mob/Tenten/verb/HomingShuriken()
						if("Homing Kunai")
							usr.verbs += new /mob/Tenten/verb/HomingKunai()
						if("Homing Windmill")
							usr.verbs += new /mob/Tenten/verb/HomingWindmill()
						if("Kaiten")
							usr.verbs += new /mob/Hyuuga/verb/HakkeshouKaiten()
						if("Bee Sabaku Kyuu")
							usr.verbs += new /mob/Kamizuri/verb/BeeSabakuKyuu()
						if("Bee Sabaku Sousou")
							usr.verbs += new /mob/Kamizuri/verb/BeeSabakuSousou()
						if("Hakke Kuushou")
							usr.verbs += new /mob/Hyuuga/verb/HakkeKuusho()
						if("Katon Ryuuka")
							usr.verbs += new /mob/katon/verb/KatonRyuukanoJutsu()
						if("Mist Armor")
							src.verbs += new /mob/mist/verb/MistArmor()
						if("Ice Armor")
							src.verbs += new /mob/ice/verb/IceArmor()
						if("Rai No Jutsu")
							src.verbs += new /mob/rai/verb/RaiArmor()
						if("Zan No Jutsu")
							src.verbs += new /mob/sound/verb/ZanArmor()
						if("Katon Karyuu Endan")
							src.verbs += new /mob/katon/verb/KatonKaryuuEndan()
						if("Sensatsu Suishou")
							usr.verbs += new /mob/Haku/verb/SensatsuSuishou()
						if("Mist")
							src.verbs += new /mob/mist/verb/KirigakurenoJutsu()
						if("Mirrors")
							usr.verbs += new /mob/Haku/verb/MakyouHyoushou()
						if("Nikudan")
							usr.verbs += new /mob/Akimichi/verb/NikudanSensha()
						if("Bubun Baika")
							usr.verbs += new /mob/Akimichi/verb/BabunBaikaNoJutsu()
						if("Kage Shibari")
							usr.verbs += new /mob/Nara/verb/kageshibari()
							usr.verbs += new /mob/Nara/verb/ExtendShadow()
							usr.verbs += new /mob/Nara/verb/RetractShadow()
							usr.verbs += new /mob/Nara/verb/KageKubiShibaru()
						if("Bone Sword")
							src.verbs += new /mob/Kaguya/verb/CreateBoneSword()
						if("Bone Whip")
							src.verbs += new /mob/Kaguya/verb/CreateSpineWhip()
						if("Yanagi")
							src.verbs += new /mob/Kaguya/verb/YanagiNoMai()
						if("Tsubaki")
							src.verbs += new /mob/Kaguya/verb/TsubakiNoMai()
						if("Karamatsu")
							src.verbs += new /mob/Kaguya/verb/KaramatsuNoMai()
						if("Teshi Sendan")
							usr.verbs += new /mob/Kaguya/verb/TeshiSendan()
						if("Tessenka")
							usr.verbs += new /mob/Kaguya/verb/TessenkaNoMai()
						if("Sawarabi")
							usr.verbs += new /mob/Kaguya/verb/Sawarabi()
						if("Tame")
							src.verbs += new /mob/Inuzuka/verb/Tame()
						if("Tsuuga")
							usr.verbs += new /mob/Inuzuka/verb/Tsuuga()
						if("Gatsuuga")
							src.verbs += new /mob/Inuzuka/verb/Gatsuuga()
						if("Soutourou")
							src.verbs += new /mob/Inuzuka/verb/Soutourou()
						if("Konoha Renpuu")
							src.verbs += new /mob/Lee/verb/KonohaReppu()
						if("Konoha Senpuu")
							usr.verbs += new /mob/Lee/verb/KonohaSenpuu()
						if("Omote Renge")
							usr.verbs += new /mob/Lee/verb/OmoteRenge()
						if("Ura Renge")
							usr.verbs += new /mob/Lee/verb/UraRenge()
						if("Konoha Genuriki Senpuu")
							usr.verbs += new /mob/Lee/verb/KonohaGenkurikiSenpuu()
						if("Suna Shuirken")
							src.verbs += new /mob/Gaara/verb/SunaShuriken()
						if("Suna Shushin")
							usr.verbs += new /mob/Gaara/verb/SunaShushinNoJutsu()
						if("Sand Sphere")
							usr.verbs += new /mob/Gaara/verb/SandSphere()
						if("Sand Armor")
							src.verbs += new /mob/Gaara/verb/SandArmor()
						if("Sabaku Kyuu")
							src.verbs += new /mob/Gaara/verb/SabakuKyuu()
						if("Sabaku Sousou")
							src.verbs += new /mob/Gaara/verb/SabakuSousou()
						if("Shousen")
							usr.verbs += new /mob/Medical/verb/Shousen_Jutsu()
						if("Chakra No Mesu")
							src.verbs += new /mob/Medical/verb/ChakraNoMesu()
						if("Slice Tendons")
							usr.verbs += new /mob/Medical/verb/SliceTendons()
						if("Screw Nerves")
							usr.verbs += new /mob/Medical/verb/ScrewNerves()
						if("Fire Armor")
							src.verbs += new /mob/katon/verb/FireArmor()
						if("Hunter")
							src.verbs += new /mob/jutsu/verb/JourouSenbon()
						if("Missing")
							src.verbs+= new /mob/jutsu/verb/BakuretsuBunshin()
						if("Teleport")
							usr.verbs += new /mob/Nara/verb/kageteleport()
						if("Fly")
							usr.verbs += new /mob/flight/verb/Fly()
						if("Bee Armor")
							src.verbs += new /mob/Kamizuri/verb/BeeArmor()
						if("Bug Armor")
							src.verbs += new /mob/Aburame/verb/BugArmor()
						if("Bug Kyuu")
							usr.verbs += new /mob/Aburame/verb/KonchuuKyuu()
						if("Bug Sousou")
							usr.verbs += new /mob/Aburame/verb/KonchuuSousou()
						if("Bees")
							usr.verbs += new /mob/Kamizuri/verb/summonbees()
							usr.verbs += new /mob/Kamizuri/verb/Placebee()
							usr.verbs += new /mob/Kamizuri/verb/Destroybee()
						if("Explode Bee")
							usr.verbs += new /mob/Kamizuri/verb/ExplodeBee()
						if("Bee Wings")
							usr.verbs += new /mob/Beeflight/verb/Fly()
						if("Sexy")
							src.verbs += new /mob/jutsu/verb/Sexy()
						if("Kage Shuriken")
							usr.verbs += new /mob/shurikenmove/verb/KageShuriken()
						if("Kage Kunai")
							usr.verbs += new /mob/shurikenmove/verb/KageKunai()
						if("Tajuu Bunshin")
							usr.verbs += new /obj/bunshins/TajuuKageBunshinNoJutsu/verb/TajuuKageBunshinNoJutsu()
						if("Nisen Rendan")
							usr.verbs += new /mob/jutsu/verb/NisenRendan()
						if("Cancel")
							return
				else usr <<"You do not have enough tournament points!"*/
			if("Village Change - 50")
				if(usr.rank=="Kage")
					usr<<"You cannot leave your village. You have responsibilities as a Kage to take care."
					return
				if(usr.tourneyP>49)
					switch(input("What Village would you like to join?","Village Change",text)in list("Leaf","Mist","Sand","Cloud","Rock","Cancel"))
						if("Leaf")
							usr.Village="Leaf"
							usr<<"You have joined Leaf Village!"
							usr.tourneyP-=50
							return
						if("Mist")
							usr.Village="Mist"
							usr<<"You have joined Mist Village!"
							usr.tourneyP-=50
							return
						if("Rock")
							usr.Village="Rock"
							usr<<"You have joined Rock Village!"
							usr.tourneyP-=50
							return
						if("Cloud")
							usr.Village="Cloud"
							usr<<"You have joined Cloud Village!"
							usr.tourneyP-=50
							return
						if("Sand")
							usr.Village="Sand"
							usr<<"You have joined Sand Village!"
							usr.tourneyP-=50
							return
						if("Cancel")
							return
			if("Chakra Nature - 30")
				if(usr.tourneyP>29)
					switch(input("What Chakra Nature would you like to receive?","Chakra Nature",text)in list("Fire","Water","Wind","Lightning","Earth","Cancel"))
						if("Fire")
							usr.fire=1
							usr<<"You now have Fire Chakra Nature!"
							usr.tourneyP-=30
							return
						if("Water")
							usr.water=1
							usr<<"You now have the Water Chakra Nature"
							usr.tourneyP-=30
							return
						if("Earth")
							usr.earth=1
							usr<<"You now have the Earth Chakra Nature"
							usr.tourneyP-=30
							return
						if("Lightning")
							usr.lightning=1
							usr<<"You now have the Lightning Chakra Nature"
							usr.tourneyP-=30
							return
						if("Wind")
							usr.wind=1
							usr<<"You now have the Wind Chakra Nature!"
							usr.tourneyP-=30
							return
						if("Cancel")
							return
				else
					usr<<"You do not have enough Special Yen!"
					return
			if("Blue Blade - 5")
				if(usr.tourneyP>4)
					var/obj/BlueB/B = new/obj/BlueB
					B.loc=usr
					usr.tourneyP-=5
				else usr<<"You do not have enough Special Yen!"
			if("Spear - 5")
				if(usr.tourneyP>4)
					var/obj/WSpear/B = new/obj/WSpear
					B.loc=usr
					usr.tourneyP-=5
				else usr<<"You do not have enough Special Yen!"
			if("Red Blade - 5")
				if(usr.tourneyP>4)
					var/obj/Red/B = new/obj/Red
					B.loc=usr
					usr.tourneyP-=5
				else usr<<"You do not have enough Special Yen!"
			if("Village Change - 30")
				if(usr.tourneyP>29)
					usr.Village = input("Village?")as text
					usr.tourneyP-=30
				else usr<<"You do not have enough Special Yen!"
			if("Name Change - 1")
				if(usr.tourneyP>0)
					text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [usr] bought a Name Change to","Prizes.html")
					alert("Do not violate rules with your name! Your name will be changed and your Points lost.")
					usr.name = input("Name?")as text
					text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [usr]<BR>","Prizes.html")
					usr.tourneyP-=1
				else usr<<"You do not have enough Special Yen!"
			if("Face Icon Change - 1")
				if(usr.tourneyP>0)
					alert("Do not violate any rules when picking your new face graphic! Violating the rules will result in your face icon being wiped and your Points lost.")
					usr.face_icon=input("Pick file:","File") as file
					usr.tourneyP-=1
					text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [usr] bought a Face Change<BR>","Prizes.html")
				else usr<<"You do not have enough Special Yen!"
			if("Custom Object - 5")
				if(usr.tourneyP>4)
					var/obj/Custom/C = new /obj/Custom
					usr.tourneyP-=5
					C.loc=usr
					C.icon = input("Icon","Icon")as icon
					C.name = input("Pick a name for the object.","Name the Object") as text
					C.clicked = 1
					text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [usr] bought a Custom Object with the name [C.name]<BR>","Prizes.html")
				else usr<<"You do not have enough Special Yen!"
			if("Custom Sword - 5")
				return
mob/npc/War
	name = "Mercenary"
	icon = 'Npc Banker.dmi'
	Kimimaro=1
	PK = 1
	NPC = 1
	health = 30000000


mob/npc/Madara
	name = "Madara"
	icon = 'Npc Madara.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category = "Madara"
			switch(input("Are you from my branch?")in list("Yes","No","I Don't Know"))
				if("Yes")
					if(usr.Madara)
						usr.verbs += new /mob/katon/verb/KatonGoukakyuu()
						usr.verbs += new /mob/katon/verb/KatonHousenka()
						usr.verbs += new /mob/katon/verb/KatonKaryuuEndan()
						usr.verbs += new /mob/katon/verb/KatonRyuukanoJutsu()
						usr.verbs += new /mob/katon/verb/Katonheki()
						usr.verbs += new /mob/jutsu/verb/ShushinNoJutsu()
						usr.verbs += new /obj/bunshins/KageBunshinnojutsu/verb/KageBunshinNoJutsu()
						usr.verbs += new /mob/Uchiha/verb/Sharingan()
mob/npc/Itachi
	name = "Itachi"
	icon = 'Npc Itachi.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category = "Itachi"
			set name = "Talk"
			switch(input("Are you from the Itachi Clan")in list("Yes","No"))
				if("Yes")
					if(usr.Itachi)
						usr.verbs += typesof(/mob/Itachi/verb)
						usr.verbs += new /mob/Uchiha/verb/Sharingan()
mob/npc/Banker
	name = "Banker"
	icon = 'Npc Banker.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Deposit()
			set src in oview(3)
			set category = "Bank"
			var/heh = input("You have [usr.Yen] yen. How much do you wish to deposit?","Deposit") as num
			if (heh < 0)
				alert("Don't try cheating me!","Bank Keeper")
				return()
			if (heh > usr.Yen)
				alert("You don't have that much yen!", "Deposit")
				return()
			usr << "You deposit [heh] gold."
			usr.Yen -= heh
			usr.goldinbank += heh
			return()
		Withdraw()
			set src in oview(3)
			set category = "Bank"
			var/heh = input("You have [usr.goldinbank] yen in the bank. How much do you wish to withdraw?","Withdraw") as num
			if (heh < 0)
				alert("You can't withdraw less then 1 yen!","Bank Keeper")
				return()
			if (heh > usr.goldinbank)
				alert("You don't have that much yen in the bank!", "Bank Keeper")
				return()
			if(usr.Yen>=100000)
				alert("You already have as much Yen as you can carry.")
				return
			usr << "You withdraw [heh] gold."
			usr.Yen += heh
			usr.goldinbank -= heh
			return()
		CheckBalance()
			set src in oview(3)
			set category = "Bank"
			set name = "Check Balance"
			usr << "You have [usr.goldinbank] yen in the bank."

mob/npc/NpcPein
	name = "Pein"
	icon = 'Npc Pein.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category = "Pein"
			if(usr.rank == "Student")
				usr<<"Your Not Strong Enough"
				return
			if(usr.Nagato)
				usr.verbs += new /mob/Pein/verb/Rinnegan()
				usr<<"<b><font color=blue>You've learned Rinnegan"
				usr.verbs += new /mob/Pein/verb/PathofNaraka()
				usr<<"<b><font color=blue>You've learned Path of Naraka"
				usr.verbs += new /mob/Pein/verb/PathofPreta()
				usr<<"<b><font color=blue>You've learned Path of Preta"
				usr.verbs += new /mob/Pein/verb/PathofHuman()
				usr<<"<b><font color=blue>You've learned Path of Human"
				usr.verbs += new /mob/Pein/verb/PathofAnimal()
				usr<<"<b><font color=blue>You've learned Path of Animal"
				usr.verbs += new /mob/Pein/verb/PathofAsura()
				usr<<"<b><font color=blue>You've learned Path of Asura"
				usr.verbs += new /obj/bunshins/Paths/verb/Paths()
				usr<<"<b><font color = blue>You've learned how to summon the paths of Pein during battle!"
				if(usr.Mnin >= 50000)
					usr.verbs += new /mob/Pein/verb/ShinraTensei()
					usr<<"<b><font color=blue>You've learned Shinra Tensei"
					usr.verbs += new /mob/Pein/verb/Chibaku()
					usr<<"<b><font color=blue>You've learned Chibaku Tensei"
					return
				else
					usr<<"<font color=yellow><b>You Need 50000 Nin to get Shinra Tensei!!"
					return
			else
				usr<<"<font color=yellow><b>Shesh, I'm not giving out jutsu's here, Get Chúnin or higher!"
				return

mob/npc/Vet
	name = "Vet"
	icon = 'Npc Vet.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Heal()
			set src in oview(3)
			set category = "Dog"
			if(usr.Yen <= 1999)
				usr<<"You need 2000 Yen to heal your dog and wolf!"
			else
				for(var/mob/pet/P in usr.contents)
					if(P.owner==usr&&usr.hasdog)
						usr.Yen-=2000
						P.health = P.Mhealth
						P.overlays=null
						usr<<"All done"
						return
					else
						usr<<"You don't own a dog OR It needs to be picked up."
						return
				for(var/mob/wolf/P in usr.contents)
					if(P.owner==usr&&usr.hasdog)
						usr.Yen-=2000
						P.health = P.Mhealth
						P.overlays=null
						usr<<"All done"
						return
					else
						usr<<"You don't own a wolf OR It needs to be picked up."
						return
		DogRanAway()
			set src in oview(3)
			set category = "Dog"
			for(var/mob/pet/P in world)
				if(P.owner==usr)
					del(P)
			usr.hasdog=0
			usr<<"Go get a new pet."
			return
		WolfRanAway()
			set src in oview(3)
			set category = "Dog"
			for(var/mob/wolf/P in world)
				if(P.owner==usr)
					del(P)
			usr.hasdog=0
			usr<<"Go get a new pet."
mob
	npc
		KBunshin
			NPC = 1
			proc/Die()
				flick("smoke2",src)
				del(src)
			Bump(atom/M)
				if(istype(M,/mob/)) // If they run into the player
					if(M == bowner||M == src.original||M.name==src.name)
						return
					else
						if(src.firing)
							return
						var/mob/P = M
						var/Damage = src.tai
						var/mob/O = src.original
						src.firing=1
						if(P.Kaiten)
							del(src)
						if(P.drunk&&P.Lee)
							view()<<"[M] dodges [src]'s attack"
							sleep(13)
							src.firing=0
							return
						P.health -= Damage
						view() << "The [src] attacks [M] for [Damage]!"
						P.Death(O)
						sleep(10)
						src.firing=0
		KKBunshin
			proc/Die()
				flick("smoke2",src)
				del(src)
			Bump(atom/M)
				if(istype(M,/mob/)) // If they run into the player
					if(M == lowner||M == src.original||M.name==src.name)
						return
					else
						if(!src.firing)
							src.firing=1
							var/mob/P = M
							var/Damage = src.tai
							var/mob/O = src.original
							if(P.Kaiten)
								del(src)
							if(P.drunk&&P.Lee)
								view()<<"[M] dodges [src]'s attack"
								sleep(13)
								src.firing=0
								return
							P.health -= Damage // Takes the players health
							view() << "<font size=1>The [src] attacks [M] for [Damage]!"
							P.Death(O)
						sleep(5)
						src.firing=0
		SBunshin
			NPC = 1
			proc/Die()
				flick("smoke2",src)
				del(src)
			Bump(atom/M)
				if(istype(M,/mob/)) // If they run into the player
					if(M == sowner||M == src.original||M.name==src.name)
						return
					else
						if(!src.firing)
							src.firing=1
							var/mob/P = M
							var/mob/O = src.original
							var/Damage = src.tai
							if(P.Kaiten)
								del(src)
							if(P.drunk&&P.Lee)
								view()<<"[M] dodges [src]'s attack"
								sleep(13)
								src.firing=0
								return
							P.health -= Damage // Takes the players health
							view() << "<font size=1>The [src] attacks [M] for [Damage]!"
							P.Death(O)
						sleep(5)
						src.firing=0
		Bunshin
			NPC = 1
			proc/Die()
				flick("smoke2",src)
				del(src)

mob/npc
	Merchant2
		name = "Throwing Weapon Sales Person"
		icon = 'Npc Throwing.dmi'
		PK = 0
		NPC = 1
		health = 9999999999999999999999999999999999999999999999
		verb/Buy()
			set src in oview(3)
			switch(input("What would you like to buy today??")in list("Shuriken - 200","Kunai - 400","Exploding Tag - 1000","Windmill - 50000","Trikunai - 50000","Nothing"))
				if("Shuriken - 200")
					var/give = input("How many Shuriken do you wish to buy?")as num
					if(usr.Shurcounter+give>=100)
						usr<<"You cannot have have more than 100 shuriken in your inventory."
						return
					if(usr.Shurcounter<=99)
						if(usr.Yen >= give*200&&give>0)
							usr.Yen -= give*200
							if(usr.Shurcounter==0)
								var/obj/Shuriken/B = new/obj/Shuriken
								B.loc = usr
								B.ammount+=give-1
								usr.Shurcounter+=give
								B.name= "[B.name] ([B.ammount])"
							else if(usr.Shurcounter>0)
								for(var/obj/Shuriken/O in usr.contents)
									O.ammount+=give
									usr.Shurcounter+=give
									O.name= "[O.name] ([O.ammount])"
						else
							usr<<"Not enough money!"
					else
						usr<<"Your only surpose to have 10000 at one time."
				if("Kunai - 400")
					var/give = input("How many Kunai do you wish to buy?")as num
					if(usr.Kucounter+give>=10000)
						usr<<"You cannot have more than 10000 kunai in your inventory."
						return
					if(usr.Kucounter<=9999)
						if(usr.Yen >= give*400&&give>0)
							usr.Yen -= give*400
							if(usr.Kucounter==0)
								var/obj/Kunai/B = new/obj/Kunai
								B.loc = usr
								B.ammount+=give-1
								usr.Kucounter+=give
								B.name= "[B.name] ([B.ammount])"
							else if(usr.Kucounter>0)
								for(var/obj/Kunai/O in usr.contents)
									O.ammount+=give
									usr.Kucounter+=give
									O.name= "[O.name] ([O.ammount])"
						else
							usr<<"Not enough money!"
					else
						usr<<"Your only surpose to have 10000 at one time."
				if("Exploding Tag - 1000")
					var/give = input("How many Exploding Tags do you wish to buy?")as num
					if(usr.Tagcounter+give>=100)
						usr<<"You cannot have more than 100 tags in your inventroy."
						return
					if(usr.Tagcounter<9)
						if(usr.Yen >= give*1000&&give>0)
							usr.Yen -= give*1000
							if(usr.Tagcounter==0)
								var/obj/ExplodingTag/B = new/obj/ExplodingTag
								B.loc = usr
								B.ammount+=give-1
								usr.Tagcounter+=give
								B.name= "[B.name] ([B.ammount])"
								usr.Tagcounter = B.ammount
							else if(usr.Tagcounter>0)
								for(var/obj/ExplodingTag/O in usr.contents)
									O.ammount+=give
									usr.Tagcounter+=give
									O.name= "[O.name] ([O.ammount])"
						else
							usr<<"Not enough money!"
					else
						usr<<"Your only suppose to have 10 at one time."
				if("Windmill - 50000")
					if(usr.windmills<=1)
						if(usr.Yen >= 50000)
							usr.Yen -= 50000
							usr.windmills+=1
							var/obj/Windmill/B = new/obj/Windmill
							B.loc = usr
						else
							usr<<"Not enough money!"
					else
						usr<<"You can only carry 2 at a time."
				if("Trikunai - 50000")
					if(usr.trikunai<=1)
						if(usr.Yen >= 50000)
							usr.Yen -= 50000
							usr.trikunai+=1
							var/obj/Trikunai/R = new/obj/Trikunai
							R.loc = usr
						else
							usr<<"Not enough money!"
					else
						usr<<"You can only carry 2 at a time."
				if("Nothing")
					return
mob/npc
	Chef
		name = "Chef"
		icon = 'Npc Chef.dmi'
		icon_state = "Chef"
		PK = 0
		NPC = 1
		health = 9999999999999999999999999999999999999999999999
		verb
			Buy()
				set src in oview(3)
				switch(input("What would you like to buy today??")in list("Ramen - 350","Vegetable Soup - 320","Sake - 1500","Nothing"))
					if("Ramen - 350")
						if(usr.Yen >= 350)
							usr.Yen -= 350
							var/obj/Ramen/R = new/obj/Ramen
							R.loc = usr
						else
							usr<<"Not enough money!"
					if("Vegetable Soup - 320")
						if(usr.Yen >= 320)
							usr.Yen -= 320
							var/obj/RVeggies/S = new/obj/RVeggies
							S.loc = usr
						else
							usr<<"Not enough money!"
					if("Sake - 1500")
						if(usr.Yen >= 1500)
							usr.Yen -= 1500
							var/obj/Sake/L = new/obj/Sake
							L.loc = usr
						else
							usr<<"Not enough money!"
					if("Nothing")
						return

mob/npc
	Merchant
		name = "Sales person"
		icon = 'Npc Shop.dmi'
		PK = 0
		NPC = 1
		health = 9999999999999999999999999999999999999999999999
		verb/Buy()
			set src in oview(3)
			switch(input("What would you like to buy today??")in list("Chakra Element Paper-200000","Casual Suit - 5000","Over Jacket - 5000","Weights - 7000","Big Hat - 5000","YondaimeCloak - 9000","Shino Coat - 1000","Nara Shirt - 4500","Sasuke Suit - 4500","Kabuto Suit - 4500","Sais Scroll - 10000","Sais Suit - 2500","Kankuoru Suit - 4500","Choji Suit - 4500","Kiba Sweater - 2000","Backshuriken - 8000","Pants - 600","Shirt - 1000","Shoes - 150","Sandles - 150","Shades - 390","Sasuke Shirt - 4500","Naruto Suit - 4500","Naruto Shippudan Suit - 10000","Neji Suit - 4500","RockLee Suit - 4500","Zabuza Suit - 4500","Face Mask - 1000","Nothing"))
				if("Chakra Element Paper-200000")
					if(usr.Yen >= 200000)
						usr.Yen -= 200000
						var/obj/Paper/S = new/obj/Paper
						S.loc= usr
					else
						usr<<"Not enough money!"
				if("Over Jacket - 5000")
					if(usr.Yen >= 5000)
						usr.Yen -= 5000
						var/obj/OJacket/B = new/obj/OJacket
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Casual Suit - 5000")
					if(usr.Yen >= 5000)
						usr.Yen -= 5000
						var/obj/Casual/B = new/obj/Casual
						B.loc = usr
					else
						usr<<"Not enough money!!"
				if("Big Hat - 5000")
					if(usr.Yen >= 5000)
						usr.Yen -= 5000
						var/obj/BigHat/B = new/obj/BigHat
						B.loc = usr
					else
						usr<<"Not enough money!!"
				if("Sais Scroll - 10000")
					if(usr.Yen >= 10000)
						usr.Yen -= 10000
						var/obj/Sais_Scroll/B = new/obj/Sais_Scroll
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Sais Suit - 2500")
					if(usr.Yen >= 2500)
						usr.Yen -= 2500
						var/obj/Sais_Suit/B = new/obj/Sais_Suit
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("YondaimeCloak - 9000")
					if(usr.Yen >= 5000)
						usr.Yen -= 5000
						var/obj/YondaimeJ/B = new/obj/YondaimeJ
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Weights - 7000")
					if(usr.Yen >= 7000)
						usr.Yen -= 7000
						var/obj/Weights/B = new/obj/Weights
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Sasuke Shirt - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/SasukeShirt/B = new/obj/SasukeShirt
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Face Mask - 1000")
					if(usr.Yen >= 1000)
						usr.Yen -= 1000
						var/obj/FaceMask/B = new/obj/FaceMask
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Kankuoru Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/Kankuorusuit/B = new/obj/Kankuorusuit
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Sasuke Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/SasukeSuit/B = new/obj/SasukeSuit
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Kabuto Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/KabutoSuit/B = new/obj/KabutoSuit
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Nara Shirt - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/NaraS/B = new/obj/NaraS
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Choji Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/ChojiS/B = new/obj/ChojiS
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Naruto Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/Narutosuit/B = new/obj/Narutosuit
						B.loc = usr
					else
				if("Naruto Shippudan Suit - 10000")
					if(usr.Yen >= 10000)
						usr.Yen -= 10000
						var/obj/Narutosuit/B = new/obj/NarutoShippudan
						B.loc = usr
					else
				if("Neji Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/Narutosuit/B = new/obj/Nejisuit
						B.loc = usr
					else
				if("RockLee Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/RockLeesuit/B = new/obj/RockLeesuit
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Zabuza Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/Zabuzasuit/B = new/obj/Zabuzasuit
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Haku Suit - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/HakuS/B = new/obj/HakuS
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Pants - 600")
					if(usr.Yen >= 600)
						usr.Yen -= 600
						var/obj/Pants/B = new/obj/Pants
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Shirt - 1000")
					if(usr.Yen >= 1000)
						usr.Yen -= 1000
						var/obj/Shirt/B = new/obj/Shirt
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Shades - 390")
					if(usr.Yen >= 390)
						usr.Yen -= 390
						var/obj/Shades/B = new/obj/Shades
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Backshuriken - 8000")
					if(usr.Yen >= 8000)
						usr.Yen -= 8000
						var/obj/BackShuriken/B = new/obj/BackShuriken
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Shino Coat - 1000")
					if(usr.Yen >= 1000)
						usr.Yen -= 1000
						var/obj/ShinoS/B = new/obj/ShinoS
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Kiba Sweater - 2000")
					if(usr.Yen >= 2000)
						usr.Yen -= 2000
						var/obj/KibaS/B = new/obj/KibaS
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Shoes - 150")
					if(usr.Yen >= 150)
						usr.Yen -= 150
						var/obj/Shoes/B = new/obj/Shoes
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Sandles - 150")
					if(usr.Yen >= 150)
						usr.Yen -= 150
						var/obj/Sandles/B = new/obj/Sandles
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Markings - 4500")
					if(usr.Yen >= 4500)
						usr.Yen -= 4500
						var/obj/Markings/B = new/obj/Markings
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Nothing")
					return

mob/npc
	Merchant3
		name = "Weapons Sales person"
		icon = 'Npc Weapons.dmi'
		PK = 0
		NPC = 1
		health = 9999999999999999999999999999999999999999999999
		verb/Buy()
			set src in oview(3)
			switch(input("What would you like to buy today??")in list("Sais Sword - 100000","Mondai Sword - 100000","Nothing"))
				if("Sais Sword - 100000")
					if(usr.Yen >= 100000)
						usr.Yen -= 100000
						var/obj/Sais_Sword/B = new/obj/Sais_Sword
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Zabuza Sword - 100000")
					if(usr.Yen >= 100000)
						usr.Yen -= 100000
						var/obj/Zabuzasword/B = new/obj/Zabuzasword
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Mondai Sword - 100000")
					if(usr.Yen >= 100000)
						usr.Yen -= 100000
						var/obj/Mondaisword/B = new/obj/Mondaisword
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Kunai Knife - 1000")
					if(usr.Yen >= 1000)
						usr.Yen -= 1000
						var/obj/KunaiKnife/B = new/obj/KunaiKnife
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Kisame Sword - 100000")
					if(usr.Yen >= 100000)
						usr.Yen -= 100000
						var/obj/Kisamesword/B = new/obj/Kisamesword
						B.loc = usr
					else
						usr<<"Not enough money!"
				if("Nothing")
					return


mob/npc
	Tailor
		name = "Hair Stylist"
		icon = 'Npc Hair Stylist.dmi'
		PK = 0
		NPC = 1
		health = 9999999999999999999999999999999999999999999999
		verb
			Talk()
				set src in oview(2)
				set category ="Hair-cut"
				switch(input("Would you like me to work magic to that ragged hair??", text) in list ("Yes","No"))
					if("Yes")
						usr.overlays-=usr.hair
						switch(input("Male or Female? or Custom styles?", text)in list ("Male","Female","Customs"))
							if("Male")
								switch(input("Which hair style would you like?", text) in list ("Atticus","Allen","Byakuya","Deidara","Chouji","Emo","Ichimaru","Stylish","Naruto","Sasuke","Gaara","Shikamaru","Kakashi","Kabuto","Rock Lee","Itachi","Neji","Madara","Kimimaro","Yondaime","Orochimaru","Jiraiya","Bald"))
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
									if("Ichimaru")
										usr.hair = "Ichimaru"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'Ichimaru.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
										usr.hairselected=1
									if("Hitsugaya")
										usr.hair = "Hitsugaya"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'Hitsugaya.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
										usr.hairselected=1
									if("Byakuya")
										usr.hair = "Byakuya"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'Byakuya.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
										usr.hairselected=1
									if("Chouji")
										usr.hair = "Chouji"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'ChoujiH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
										usr.hairselected=1
									if("Deidara")
										usr.hair = "Deidara"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'DeidaraH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
										usr.hairselected=1
									if("Atticus")
										usr.hair = "Atticus"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'AtticusH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
										usr.hairselected=1
									if("Madara")
										usr.hair = "Madara"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'HairStyle Madara.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
										usr.hairselected=1
									if("Stylish")
										usr.hair = "Stylish"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'Stylish.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
										usr.hairselected=1
									if("Emo")
										usr.hair = "Emo"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'Emo.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
										usr.hairselected=1
									if("Allen")
										usr.hair = "Allen"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'Allen.dmi'
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
									if("Bald")
										usr.hair = "Bald"
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
									if("Cancel")
										return
							if("Female")
								switch(input("Which hair style would you like?", text) in list ("Female1","Female2","Female3","Anko","Kurenai","Konan","Sakura","Hinata","Ino","Temari","TenTen","Yuffie","Bald"))
									if("Yuffie")
										usr.hair = "Yuffie"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'Yuffie.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
										usr.hairselected=1
									if("Konan")
										usr.hair = "Konan"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'Konan.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
										usr.hairselected=1
									if("Female2")
										usr.hair = "Female2"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'Female2.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
										usr.hairselected=1
									if("Female1")
										usr.hair = "Female1"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'Female1.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
										usr.hairselected=1
									if("Female3")
										usr.hair = "Female3"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'Female3.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
										usr.hairselected=1
									if("Anko")
										usr.hair = "Anko"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'AnkoH.dmi'
										hairover += rgb(hairred,hairgreen,hairblue)
										usr.rhair = hairred
										usr.ghair = hairgreen
										usr.bhair = hairblue
										usr.Ohair = hairover
										usr.hair = usr.Ohair
										usr.overlays += usr.hair
										usr.hairselected=1
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
									if("TenTen")
										usr.hair = "TenTen"
										var/hairred = input("How much red do you want to put into your hair?") as num
										var/hairblue = input("How much blue do you want to put into your hair?") as num
										var/hairgreen = input("How much green do you want to put into your hair?") as num
										var/hairover = 'TenTenH.dmi'
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
									if("Cancel")
										return
							if("Customs")
								switch(input("Which hair style would you like?", text) in list ("Long","Spiked Back","Straight Spike","Short Spikes","Bald"))
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
									if("Bald")
										usr.hair = "Bald"
										usr.hairselected=1
									if("Cancel")
										return

mob/Spawn/SnowSpawndude
   icon = 'Spawn Helper Snow.dmi'
   name = "Snow Spawn Helper"
   NPC = 1
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         usr << "<b> You will now respawn in The Hidden Village of Snow!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.snowS = 1
         usr.waterfallS=0
         usr.soundS = 0
         usr.rainS = 0
         usr.earthS = 0
         usr.cloudS = 0
         usr.mistS = 0
         usr.swordsmenS= 0
         usr.policeS= 0
         usr.hebiS= 0
mob/Spawn/AKATSpawndude
   icon = 'Spawn Helper Akatsuki.dmi'
   name = "AKAT Spawn Helper"
   NPC = 1
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         if(usr.Village!="Akatsuki")return
         usr << "<b> You will now respawn in The Akat base!"
         usr.akatS = 1
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.snowS = 0
         usr.waterfallS=0
         usr.soundS = 0
         usr.rainS = 0
         usr.earthS = 0
         usr.cloudS = 0
         usr.mistS = 0
         usr.swordsmenS= 0
         usr.policeS= 0
         usr.hebiS= 0
mob/Spawn/SOSpawndude
   icon = 'Spawn Helper Sound Organization.dmi'
   name = "SO Spawn Helper"
   NPC = 1
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         usr << "<b> You will now respawn in The SO base!"
         usr.akatS = 0
         usr.soS = 1
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.snowS = 0
         usr.waterfallS=0
         usr.soundS = 0
         usr.rainS = 0
         usr.earthS = 0
         usr.cloudS = 0
         usr.mistS = 0
         usr.swordsmenS= 0
         usr.policeS= 0
         usr.hebiS= 0
mob/Spawn/LeafSpawndude
   icon = 'Spawn Helper Leaf.dmi'
   name = "Leaf Spawn Helper"
   NPC = 1
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         set category = "Spawn Point"
         usr << "<b> You will now respawn in The Hidden Village of Leaf!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 1
         usr.snowS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.soundS = 0
         usr.rainS = 0
         usr.earthS = 0
         usr.waterfallS=0
         usr.mistS = 0
         usr.cloudS = 0
         usr.swordsmenS= 0
         usr.policeS= 0
         usr.hebiS= 0
mob/Spawn/SoundSpawndude
   icon = 'Spawn Helper Sound.dmi'
   name = "Sound Spawn Helper"
   NPC = 1
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         usr << "<b> You will now respawn in The Hidden Village of Sound!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.snowS = 0
         usr.soundS = 1
         usr.rainS = 0
         usr.waterfallS=0
         usr.earthS = 0
         usr.mistS = 0
         usr.cloudS = 0
         usr.swordsmenS= 0
         usr.policeS= 0
         usr.hebiS= 0
mob/Spawn/WaterfallSpawndude
   icon = 'Spawn Helper Waterfall.dmi'
   name = "Waterfall Spawn Helper"
   NPC = 1
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         usr << "<b> You will now respawn in The Hidden Village of Waterfall!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.snowS = 0
         usr.soundS = 0
         usr.waterfallS=1
         usr.rainS = 0
         usr.earthS = 0
         usr.mistS = 0
         usr.cloudS = 0
         usr.swordsmenS= 0
         usr.policeS= 0
         usr.hebiS= 0
mob/Spawn/RainSpawndude
   icon = 'Spawn Helper Rain.dmi'
   name = "Rain Spawn Helper"
   NPC = 1
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         usr << "<b> You will now respawn in The Hidden Village of Rain!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.waterfallS=0
         usr.sandS = 0
         usr.snowS = 0
         usr.soundS = 0
         usr.rainS = 1
         usr.earthS = 0
         usr.mistS = 0
         usr.cloudS = 0
         usr.swordsmenS= 0
         usr.policeS= 0
         usr.hebiS= 0
mob/Spawn/SandSpawndude
   icon = 'Spawn Helper Sand.dmi'
   name = "Sand Spawn Helper"
   NPC = 1
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         usr << "<b> You will now respawn in The Hidden Village of Sand!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 1
         usr.snowS = 0
         usr.waterfallS=0
         usr.soundS = 0
         usr.rainS = 0
         usr.earthS = 0
         usr.cloudS = 0
         usr.mistS = 0
         usr.swordsmenS= 0
         usr.policeS= 0
         usr.hebiS= 0
mob/Spawn/GrassSpawndude
   icon = 'Spawn Helper Grass.dmi'
   name = "Grass Spawn Helper"
   NPC = 1
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         usr << "<b> You will now respawn in The Hidden Village of Grass!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 1
         usr.sandS = 0
         usr.snowS = 0
         usr.soundS = 0
         usr.rainS = 0
         usr.earthS = 0
         usr.cloudS = 0
         usr.waterfallS=0
         usr.mistS = 0
         usr.swordsmenS= 0
         usr.policeS= 0
         usr.hebiS= 0
mob/Spawn/RockSpawndude
   icon = 'Spawn Helper Rock.dmi'
   name = "Rock Spawn Helper"
   NPC = 1
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         usr << "<b> You will now respawn in The Hidden Village of Earth!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.waterfallS=0
         usr.sandS = 0
         usr.snowS = 0
         usr.soundS = 0
         usr.rainS = 0
         usr.earthS = 1
         usr.cloudS = 0
         usr.mistS = 0
         usr.swordsmenS= 0
         usr.policeS= 0
         usr.hebiS= 0
mob/Spawn/MistSpawndude
   icon = 'Spawn Helper Mist.dmi'
   name = "Mist Spawn Helper"
   NPC = 1
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         usr << "<b> You will now respawn in The Hidden Village of Mist!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.soundS = 0
         usr.waterfallS=0
         usr.rainS = 0
         usr.snowS = 0
         usr.earthS = 0
         usr.cloudS = 0
         usr.mistS = 1
         usr.swordsmenS= 0
         usr.policeS= 0
         usr.hebiS= 0
mob/Spawn/CloudSpawndude
   icon = 'Spawn Helper Cloud.dmi'
   name = "Cloud Spawn Helper"
   NPC = 1
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         usr << "<b> You will now respawn in The Hidden Village of Lightning!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.waterfallS=0
         usr.soundS = 0
         usr.rainS = 0
         usr.snowS = 0
         usr.earthS = 0
         usr.cloudS = 1
         usr.mistS = 0
         usr.swordsmenS= 0
         usr.policeS= 0
         usr.hebiS= 0

mob/Spawn/SwordsmenSpawndude
   icon = 'Spawn Helper Swordsmen.dmi'
   name = "Swordsmen Spawn Helper"
   NPC = 1
   PK = 1
   health = 9999999999999999999999999999999999999999999999
   density = 0
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         usr << "<b> You will now respawn in The Hidden Organization House of 7swordsmen!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.waterfallS=0
         usr.soundS = 0
         usr.rainS = 0
         usr.snowS = 0
         usr.earthS = 0
         usr.cloudS = 0
         usr.mistS = 0
         usr.swordsmenS= 1
         usr.policeS= 0
         usr.hebiS= 0

mob/Spawn/PoliceSpawndude
   icon = 'Spawn Helper Police.dmi'
   name = "Police Spawn Helper"
   NPC = 1
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         usr << "<b> You will now respawn in The Police Force!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.waterfallS=0
         usr.soundS = 0
         usr.rainS = 0
         usr.snowS = 0
         usr.earthS = 0
         usr.cloudS = 0
         usr.mistS = 0
         usr.swordsmenS= 0
         usr.policeS= 1
         usr.hebiS= 0
mob/Spawn/HebiSpawndude
   icon = 'Spawn Helper Police.dmi'
   name = "Hebi Spawn Helper"
   NPC = 1
   PK = 0
   health = 9999999999999999999999999999999999999999999999
   density = 1
   verb
      ChangeSpawnPoint()
         set src in oview(1)
         usr << "<b> You will now respawn in The Hebi Base!"
         usr.akatS = 0
         usr.soS = 0
         usr.leafS = 0
         usr.grassS = 0
         usr.sandS = 0
         usr.waterfallS=0
         usr.soundS = 0
         usr.rainS = 0
         usr.snowS = 0
         usr.earthS = 0
         usr.cloudS = 0
         usr.mistS = 0
         usr.swordsmenS= 0
         usr.policeS= 0
         usr.hebiS= 1

mob/npc
	Scroll_Vender
		name = "Scroll Seller"
		icon = 'Npc Scroll.dmi'
		PK = 0
		NPC = 1
		health = 9999999999999999999999999999999999999999999999
		verb
			Buy()
				set src in oview(3)
				switch(input("What scroll would you like to buy today??")in list("Kaze Dangan No Jutsu - 50k","Kage Bunshin No Jutsu - 5k","Renkuudan No Jutsu - 60k","Daitoppa No Jutsu - 50k","Doton Doryo Dango - 40k","Doton Doryuuheki - 50k","Raikyuu No Jutsu - 40k","Rairyuu No Tatsumaki - 40k","Katon Goukakyuu - 40k","Katon Housenka no jutsu - 40k","Nothing"))
					if("Kaze Dangan No Jutsu - 50k")
						if(usr.Yen >= 50000)
							usr.Yen -= 50000
							usr.contents += new /obj/Scroll_Fuuton1
						else
							usr<<"Not enough money!"
					if("Renkuudan No Jutsu - 60k")
						if(usr.Yen >= 60000)
							usr.Yen -= 60000
							usr.contents += new /obj/Scroll_Fuuton2
						else
							usr<<"Not enough money!"
					if("Daitoppa No Jutsu - 50k")
						if(usr.Yen >= 50000)
							usr.Yen -= 50000
							usr.contents += new /obj/Scroll_Fuuton3
						else
							usr<<"Not enough money!"
					if("Doton Doryo Dango - 40k")
						if(usr.Yen >= 40000)
							usr.Yen -= 40000
							usr.contents += new /obj/Scroll_Doton1
						else
							usr<<"Not enough money!"
					if("Doton Doryuuheki - 50k")
						if(usr.Yen >= 50000)
							usr.Yen -= 50000
							usr.contents += new /obj/Scroll_Doton2
						else
							usr<<"Not enough money!"
					if("Raikyuu No Jutsu - 40k")
						if(usr.Yen >= 40000)
							usr.Yen -= 40000
							usr.contents += new /obj/Scroll_Rai1
						else
							usr<<"Not enough money!"
					if("Rairyuu No Tatsumaki - 40k")
						if(usr.Yen >= 40000)
							usr.Yen -= 40000
							usr.contents += new /obj/Scroll_Rai2
						else
							usr<<"Not enough money!"
					if("Katon Goukakyuu - 40k")
						if(usr.Yen >= 40000)
							usr.Yen -= 40000
							usr.contents += new /obj/Scroll_Katon1
						else
							usr<<"Not enough money!"
					if("Katon Housenka no jutsu - 40k")
						if(usr.Yen >= 40000)
							usr.Yen -= 40000
							usr.contents += new /obj/Scroll_Katon2
						else
							usr<<"Not enough money!"
					if("Kage Bunshin No Jutsu - 5k")
						if(usr.Yen >= 5000)
							usr.Yen -= 5000
							usr.contents += new /obj/KagebunshinS
						else
							usr<<"Not enough money!"
					if("Nothing")
						return
mob/npc/Naruto
	name = "Naruto"
	icon = 'Npc Naruto.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category ="Naruto"
			switch(input("Someday I'll be the Hokage of this village!?!??!.") in list ("I'm Uzumaki too!","Get Lost"))
				if("I'm Uzumaki too!")
					if(usr.Uzumaki)
						usr<<"Hello fellow Uzumaki, welcome to our house."
						if(usr.rank == "Student")
							return
						if(usr.Uzumaki&&usr.Mgen >=250)
							usr << "<B><font color = blue>You Learned Oiroke No Jutsu!!"
							usr.verbs += new /mob/jutsu/verb/Sexy()
						else
							usr<<"You need 250 Gen to learn Oiroke No Jutsu."
						if(usr.Uzumaki&&usr.Mnin >=10000)
							usr << "<B><font color = blue>You learned Ichi Bunshin No Jutsu!"
							usr.verbs += new /obj/bunshins/RaitonBunshinnojutsu/verb/IchiBunshinNoJutsu()
						else
							usr<<"You need 10000 Nin to learn Ichi Bunshin No Jutsu"
						if(usr.Uzumaki&&usr.shurikenskill >=250)
							usr << "<B><font color = blue>You Learned Kage Shuriken!!"
							usr.verbs += new /mob/shurikenmove/verb/KageShuriken()
						else
							usr<<"You need 250 Shuriken Skill to learn Kage Shuriken."
						if(usr.Uzumaki&&usr.kunaiskill >=250)
							usr << "<B><font color = blue>You Learned Kage Kunai!!"
							usr.verbs += new /mob/shurikenmove/verb/KageKunai()
						else
							usr<<"You need 250 Kunai Skill to learn Kage Kunai."
						if(usr.Uzumaki&&usr.Mnin >=500)
							usr << "<B><font color = blue>You learned Tajuu Kage Bunshin No Jutsu!!"
							usr.verbs += new /obj/bunshins/TajuuKageBunshinNoJutsu/verb/TajuuKageBunshinNoJutsu()
						else
							usr<<"You need 500 Nin to learn Tajuu Kage Bunshin No Jutsu."
						if(usr.Uzumaki&&usr.Mnin >=500)
							usr << "<B><font color = blue>You learned Rasen-Shuriken No Jutsu!!"
							usr.verbs += new /mob/Naruto/verb/Rasen_S()
						else
							usr<<"You need 500 Nin to learn Rasen-Shuriken No Jutsu."
						if(usr.Uzumaki&&usr.Mnin>=1000)
							usr << "<B><font color = blue>You learned Nisen Rendan!!"
							usr.verbs += new /mob/jutsu/verb/NisenRendan()
						else
							usr<<"You need 1000 Nin to learn Nisen Rendan."
						if(usr.Uzumaki&&usr.Mtai>=1000)
							usr<<"<b><font color = blue>You learned Uzumaki Barrage!!"
							usr.verbs += new/mob/Naruto/verb/UzumakiBarrage()
						if(usr.Uzumaki&&usr.Mnin>=7500)
							usr<<"<b><font color=blue>You learned Blazing Rasengan!"
							usr.verbs += new/mob/Naruto/verb/BRasengan()
						else
							usr<<"You need 7500 Nin to learn Blasing Rasengan."
					else
						usr<<"Lier leave the Uzumaki house NOW!"
mob/npc/HidanNPC
	name = "Hidan(NPC)"
	icon = 'Npc Hidan.dmi'
	PK=0
	NPC = 1
	health=99999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Hidan"
			switch(input("I have Praying to do") in list ("I'm Here For My Clan"))
				if("I'm Here For My Clan")
					if(usr.Jashin)
						usr<<"Welcome Follower of Jashin!"
						if(usr.rank=="Student")
							return
						if(usr.Jashin&&usr.nin>=7500)
							usr<<"<b><font color=blue>You learned Cursed Ritual Death Possessed Blood!"
							usr.verbs += new /mob/Hidan/verb/Ritual()
						else
							usr<<"You need 7500 Nin to get Cursed Ritual: Death Possessed Blood."
						if(usr.Jashin&&usr.nin>=7500)
							usr<<"<b><font color=blue>You learned Capture Blood!"
							usr.verbs += new /mob/Hidan/verb/Steal_B()
						else
							usr<<"You need 7500 Nin to get Capture Blood"
						if(usr.Jashin&&usr.nin>=7500)
							usr<<"<b><font color=blue>You learned Ritual of the Immortal!"
							usr.verbs += new /mob/Hidan/verb/Immortal()
						else
							usr<<"You need 7500 Nin to get Ritual of the Immortal"
						if(usr.Jashin&&usr.nin>=7500)
							usr<<"<b><font color=blue>You learned Three-Blade Scythe Slasher!"
							usr.verbs += new /mob/Hidan/verb/Scythe_S()
						else
							usr<<"You need 7500 Nin to get Three-Blade Scythe Slasher"
					else
						usr<<"Your Disturbing My Praying!"
mob/npc/FuumaNPC
	name = "Fuuma(NPC)"
	icon = 'Npc Fuuma.dmi'
	PK=0
	NPC = 1
	health=999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "FuumaNPC"
			switch(input("Hi")in list("I Whunt Meh Jutsu!"))
				if("I Whunt Meh Jutsu!")
					if(usr.Fuuma)
						usr<<"Hi."
						if(usr.rank=="Student")
							return
						if(usr.Fuuma&&usr.Mnin>=1000)
							usr<<"<b><font color=blue>You learned Ant Lion!"
							usr.verbs += new /mob/Fuuma/verb/AntLion()
						else
							usr<<"You need 1000 Nin to get Ant Lion."
						if(usr.Fuuma&&usr.Mnin>1000)
							usr<<"<b><font color=blue>You learned Chakra Threads!"
							usr.verbs += new /mob/Fuuma/verb/ChakraThreads()
						else
							usr<<"You need 1000 Nin to get Chakra Threads."
						if(usr.Fuuma&&usr.Mtai>=1000)
							usr<<"<b><font color=blue>You learned Ninja Sword Strike!"
							usr.verbs += new /mob/Fuuma/verb/NinjaSwordStrike()
						else
							usr<<"You need 1000 Tai to get Ninja Sword Strike."
						if(usr.Fuuma&&usr.Mnin>=7500)
							usr<<"<b><font color=blue>You learned Chakra No Itu!"
							usr.verbs += new /mob/Fuuma/verb/ChakraNoItu()
						else
							usr<<"You need 7500 Nin to get Chakra No Itu."
					else
						usr<<"I'm Sorry To Say, That You are Not Apart of My Clan, Goodbye."
mob/npc/Sakura
	name = "Sakura"
	icon = 'Npc Sakura.dmi'
	PK=0
	NPC = 1
	health=9999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Sakura"
			switch(input("Im Sakura :D")in list("Give Me My Clan Jutsu!","*Tap @$$*","Fix My Eyes!"))
				if("Give Me My Clan Jutsu!")
					if(usr.Haruno==1)
						usr<<"Don't Be So Pushy!"
						if(usr.rank=="Student")
							return
						if(usr.Haruno&&usr.Mnin>=500)
							usr<<"<b><font color=blue>You learned Restore no jutsu!"
							usr.verbs += new /mob/Haruno/verb/Restore_Jutsu()
						else
							usr<<"You need 500 nin to get Restore no jutsu."
						if(usr.Haruno&&usr.Mnin>=500)
							usr<<"<b><font color=blue>You learned Shousen no jutsu!"
							usr.verbs += new /mob/Haruno/verb/Shousen_Jutsu()
						else
							usr<<"You need 500 nin to get Shousen no jutsu."
						if(usr.Haruno&&usr.Mnin>=750)
							usr<<"<b><font color=blue>You learned Deathly Tree Trap!"
							usr.verbs += new /mob/Haruno/verb/DeathlyTreeTrap()
						else
							usr<<"You need 750 nin to get Deathly Tree Trap!"
						if(usr.Haruno&&usr.Mtai>=3000&&usr.Mnin>=3000)
							usr<<"<b><font color=blue>You Learned Cherry Blossom Impact!"
							usr.verbs += new /mob/Haruno/verb/InnerHaruno2
						else
							usr<<"You need 3000 Nin & Tai to get Cherry Blossom Impact"
						if(usr.Haruno&&usr.Mnin>=500)
							usr<<"<b><font color=blue>You learned Cherry Blossom Impact Crater!"
							usr.verbs += new /mob/Haruno/verb/Cherry_BI2()
						else
							usr<<"You need 500 nin to get Cherry Blossom Impact Crater."
						if(usr.Haruno&&usr.Mtai>=1500&&usr.Mnin>=1500)
							usr<<"<b><font color=blue>You Learned Chakra Enhanced Strength!"
							usr.verbs += new /mob/Haruno/verb/Chakra_ES()
						else
							usr<<"You need 1500 Nin & Tai to get Chakra Enhanced Strength."
						if(usr.Haruno&&usr.shurikenskill>=500)
							usr<<"<b><font color=blue>You learned Kage Shuriken."
							usr.verbs += new /mob/shurikenmove/verb/KageShuriken()
						else
							usr<<"You need 500 Shuriken skill to learn Kage Shuriken."
						if(usr.Haruno&&usr.kunaiskill >=500)
							usr << "<B><font color = blue>You Learned Kage Kunai!!"
							usr.verbs += new /mob/shurikenmove/verb/KageKunai()
						else
							usr<<"You need 500 Kunai Skill to learn Kage Kunai."
					else
						usr<<"Everyone Makes a Mistake"
				if("*Tap @$$*")
					usr<<"CHAA! -Punches you in the face- ^.^"
				if("Fix My Eyes!")
					if(usr.Uchiha&&usr.Itachii&&usr.blind)
						usr<<"Sakura: Whose's eyes are these?! Nevermind it now. I'll replace your eyes with the ones you have here."
						sleep(20)
						usr<<"Sakura: There you go. Try them out."
						usr.Itachii=0
						usr.EMS=1
						usr.blind=0
						return
					else
						usr<<"Nothing is wrong with your eyes. Come back when you have a real problem. Hmph!"
						return



mob/npc/Sasuke
	name = "Sasuke"
	icon = 'Npc Sasuke.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Sasuke"
			switch(input("What? Can't you see I'm busy training?",text) in list ("I'm Uchiha too!","Forget it"))
				if("I'm Uchiha too!")
					if(usr.Uchiha)
						usr<<"Hello fellow Uchiha, welcome to our house."
						if(usr.rank == "Student")
							return
						if(usr.Uchiha&&usr.Mnin >=200&&usr.Mgen >= 100)
							usr << "<B><font color = blue>Your sharingan has activated!!"
							usr.verbs += new /mob/Uchiha/verb/Sharingan()
						else
							usr<<"You need 200 Nin&Gen to activate Sharingan."
						if(usr.Uchiha&&usr.Mnin >=1000&&usr.Mgen>=700&&usr.kills>=150&&usr.Suses>=100)
							usr << "<B><font color = blue>You learned Mangekyou Sharingan!"
							usr.verbs += new /mob/Uchiha/verb/MSharingan()
						else
							usr<<"You need 1000 all stats and 150 kills along with 100 Uses to activate Mangekyou."
						if(usr.Uchiha&&usr.Mtai >=1000)
							usr<<"<b><font color=blue>You learned Lions Barrage!"
							usr.verbs += new /mob/Uchiha/verb/LionsBarrage()
						if(usr.Uchiha&&usr.Mtai >=750)
							usr<<"<b><font color=blue>You Learned Chidori Eiso & Chidori Senbon!"
							usr.verbs += new /mob/Uchiha/verb/Eiso()
							usr.verbs += new /mob/Uchiha/verb/ChidoriSenbon()
						else
							usr<<"You need 750 Tai for Chidori Eiso & Chidori Senbon!"
						if(usr.Uchiha&&usr.Mtai >=750)
							usr<<"<b><font color=blue>You Learned Kirin!"
							usr.verbs += new /mob/Uchiha/verb/Kirin()
						else
							usr<<"You need 750 Tai for Kirin."
						if(usr.Uchiha&&usr.Mtai >=750)
							usr<<"<b><font color=blue>You Learned Windmill Triple Attack!"
							usr.verbs += new /mob/Uchiha/verb/WindmillTripleAttack()
						else
							usr<<"You need 750 Tai for Windmill Triple Attack."
					else
						usr<<"Lier leave the Uchiha house NOW!"

mob/npc/ClanOrochimaru
	name = "Orochimaru"
	icon = 'Npc Orochimaru.dmi'
	PK = 0
	NPC = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Orochimaru"
			switch(input("What do you want, or shall I kill you where you stand!",text) in list ("I'm in your clan!","Don't kill me! I'll leave, ok?"))
				if("I'm in your clan!")
					if(usr.Orochimaru == 1)
						usr<<"It seems you really are in my clan. Very well, I shall teach you all I know. Do NOT fail me!"
						if(usr.rank == "Student")
							usr<<"Wait...WHAT'S THIS?! You're not even a ninja! DIE!!!"
							usr.health -= 10000
							if(usr.health <=1)
								usr.Death()
								return
							if(usr.health >=1)
								usr<<"Well you survived so you're not completely useless...but come back when you're actually worth something."
								return
						if(usr.Orochimaru&&usr.Mnin >=3500&&usr.Mgen >=1500)
							usr<<"<B><font color=blue>You learned Summoning Mandara No Jin!!"
							usr.verbs += new /mob/Orochimaru/verb/Snake()
						else
							usr<<"<font color=white>You need at least 3500 nin and 1500 gen to learn Mandara no Jin"
						if(usr.Orochimaru&&usr.Mnin >=3500&&usr.Mgen >=1500)
							usr<<"<B><font color=blue>You learned Summoning Rashomon!!"
							usr.verbs += new /mob/Orochimaru/verb/Summoning_R()
						else
							usr<<"<font color=white>You need at least 3500 nin and 1500 gen to learn Summoning Rashomon"
						if(usr.Orochimaru&&usr.Mnin >=3000&&usr.Mgen >=1000)
							usr<<"<B><font color=blue>You learned Gogyo Fuin!!"
							usr.verbs += new /mob/Orochimaru/verb/Element()
						else
							usr<<"<font color=white>You need at least 3000 gen to learn Gogyo Fuin"
						if(usr.Orochimaru&&usr.Mnin >=3000&&usr.Mgen >=1000)
							usr<<"<B><font color=blue>You learned Kanashibari no jutsu!!"
							usr.verbs += new /mob/Orochimaru/verb/Temp_Paralysis()
						else
							usr<<"<font color=white>You need at least 3000 gen to learn Kanashibari no jutsu"
						if(usr.Orochimaru&&usr.Mnin >=5000&&usr.Mgen >=1000)
							usr<<"<B><font color=blue>You learned Twin Snakes Mutual Death Technique!!"
							usr.verbs += new /mob/Orochimaru/verb/Twin_S()
						else
							usr<<"<font color=white>You need at least 5000 nin and 1000 gen to learn Twin Snakes Mutual Death Technique"
						if(usr.Orochimaru&&usr.Mnin >=5000&&usr.Mgen >=1000)
							usr<<"<B><font color=blue>You learned Snake Sage Mode!!"
							usr.verbs += new /mob/Medical/verb/SSM()
						else
							usr<<"<font color=white>You need at least 5000 nin and 1000 gen to learn Snake Sage Mode"
						if(usr.Orochimaru&&usr.Mnin >=5000&&usr.Mgen >=1000)
							usr<<"<B><font color=blue>You learned how to bite people, and make their bodies potential hosts!"
							usr.verbs += new /mob/Orochimaru/verb/Bite()
						else
							usr<<"<font color=white>You need at least 5000 nin and 1000 gen to learn how to bite people."
						if(usr.Orochimaru&&usr.Mnin >=2500&&usr.Mtai >=7500)
							usr<<"<B><font color=blue>You learned Kusanagi Dageki!"
							usr.verbs += new /mob/Orochimaru/verb/KusanagiGO()
						else
							usr<<"<B><font color=white>You need at least 2500 nin and 7500 tai to learn Kusanagi Dageki."
					else
						usr<<"<font color=white>LIAR!!!!! GET OUT OR DIE!!!!!!!!!!!!!!!!"
				if("Don't kill me! I'll leave, ok?")
					usr<<"Then be gone, you are no use to me."
					return

mob/npc/ClanTayuya
	name= "Tayuya"
	icon = 'Npc Tayuya.dmi'
	PK = 0
	NPC = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Tayuya"
			switch(input("What do you want!",text) in list ("I'm in the Tayuya clan too!","leave"))
				if("I'm in the Tayuya clan too!")
					if(usr.Tayuya == 1)
						usr<<"It seems you really are in my clan.Very well, I shall teach you all I know."
						if(usr.rank == "Student")
							usr<<"Wait...WHAT'S THIS?! You're not even a Genin! Leave!!!"
							usr.health -= 10000
							if(usr.health <=1)
								usr.Death()
								return
							if(usr.health >=1)
								usr<<"Well you survived so you're not completely useless...but come back when you're actually worth something."
								return
						if(usr.Tayuya&&usr.Mnin >=5000&&usr.Mgen >=1000)
							usr<<"<B><font color=blue>You learned how to slow anyones movement!"
							usr.verbs += new /mob/Tayuya/verb/Slow_Movement()
						else
							usr<<"<font color=white>You need at least 5000 nin and 1000 gen to learn Slow_Movement."
						if(usr.Tayuya&&usr.Mnin >=10000&&usr.Mgen >=1500)
							usr<<"<B><font color=blue>You learned how to shoot musical notes!!"
							usr.verbs += new /mob/Tayuya/verb/MatekiMugenonsaMultiple()
						else
							usr<<"<B><font color=white>You need at least 10,000 nin and 1500 gen to learn MatekiMugenonsaMultiple!"
						if(usr.Tayuya&&usr.Mnin >=2500&&usr.Mtai >=7500)
							usr<<"<B><font color=blue>You learned the essence of magical notes!"
							usr.verbs += new /mob/Tayuya/verb/MatekiMugenonsa()
						else
							usr<<"<B><font color=white>You need at least 2500 nin and 7500 tai to learn MatekiMugenonsa."
						if(usr.Tayuya&&usr.Mnin >=2500&&usr.Mtai >=7500)
							usr<<"<B><font color=blue>You learned how to shoot musical notes better and stronger!"
							usr.verbs += new /mob/Tayuya/verb/MatekiMugenonsaMultipleLVL2()
						else
							usr<<"<B><font color=white>You need at least 2500 nin and 7500 tai to learn MatekiMugenonsaMultipleLVL2."
					else
						usr<<"<font color=white>Liar get out now!"
				if("leave")
					usr<<"Then be gone."
					return


mob/npc/Haku
	name = "Haku"
	icon = 'Npc Haku.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Haku"
			switch(input("Hello *smiles* are you from my clan?",text) in list ("Yes","Forget it"))
				if("Yes")
					if(usr.Haku == 1)
						usr<<"Hello fellow clan memeber, welcome to our house."
						if(usr.Haku&&usr.Mnin >=250&&usr.Mtai>=250)
							usr << "<B><font color = blue>You have learned Sensatsu Suishou!"
							usr.verbs += new /mob/Haku/verb/SensatsuSuishou()
						else
							usr<<"You need 250 Nin&Tai to learn Sensatsu Suishou."
						if(usr.Haku&&usr.Mnin >=2000)
							usr << "<B><font color = blue>You have learned Hissatsu Hyoso!!"
							usr.verbs += new /mob/Haku/verb/CKI()
						else
							usr<<"You need at least 2000 nin to learn Hissatsu Hyoso"
						if(usr.Haku&&usr.Mnin >=2000)
							usr << "<B><font color = blue>You have learned Ice Dragon no jutsu!!"
							usr.verbs += new /mob/Haku/verb/Ice_D()
						else
							usr<<"You need at least 2000 nin to learn Ice Dragon no jutsu"
						if(usr.Haku&&usr.Mnin >=500)
							usr<<"<b><font color=blue> You have learned Kage Needle No Jutsu!"
							usr.verbs += new /mob/Haku/verb/Needle_Jutsu()
						else
							usr<<"You need 500 Nin to learn Kage Needle No Jutsu."
						if(usr.Haku&&usr.Mnin >=750)
							usr << "<B><font color = blue>You learned Makyou Hyoushou!"
							usr.verbs += new /mob/Haku/verb/MakyouHyoushou()
						else
							usr<<"You need 750 Nin to learn Mirrors."
						if(usr.Haku&&usr.Mnin>=500)
							usr<<"<b><font color=blue> You have learned Ice Armor!"
							usr.verbs += new /mob/ice/verb/IceArmor()
						else
							usr<<"You need 500 Nin to learn Ice Armor."
						if(usr.Haku&&usr.Mgen >=1000&&usr.Mnin>=1000)
							usr<<"<b><font color=blue>You have learned Teleport!"
							usr.verbs += new /mob/Nara/verb/kageteleport()
						else
							usr<<"You need 1000 Nin&Gen to learn Teleport."
					else
						usr<<"Lier leave my house NOW!"
				if("Forget it")
					usr<<"Ohh ok do you have a dream?"

mob/npc/Kido
	name = "Kido"
	icon = 'Npc Kido.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Kido"
			switch(input("Are you in the Kidomaru too?",text) in list ("Yes","Forget it"))
				if("Yes")
					if(usr.Kidomaru)
						usr<<"Hello fellow clan memeber, welcome to our house."
					/*	if(usr.Kidomaru&&usr.Mnin >=250&&usr.Mtai>=250)
							usr << "<B><font color = blue>You have learned CreateBows!"
							usr.verbs += new /mob/Kidomaru/verb/CreateSpiderBow()
						else
							usr<<"You need 250 Nin&Tai to learn Create Arrow."
						if(usr.Kidomaru&&usr.Mnin >=500)
							usr<<"<b><font color=blue> You have learned Create Arrows!"
							usr.verbs += new /mob/Kidomaru/verb/CreateSpiderArrows()
						else
							usr<<"You need 500 Nin to learn Homing Arrows."*/
						if(usr.Kidomaru&&usr.Mnin >=750)
							usr << "<B><font color = blue>You learned Spider Arrows!"
							usr.verbs += new /mob/Kidomaru/verb/SpiderArrows()
						else
							usr<<"You need 750 Nin to learn Homing Arrows."
						if(usr.Kidomaru&&usr.Mnin>=500)
							usr<<"<b><font color=blue> You have learned Web Sousou!"
							usr.verbs += new /mob/Kidomaru/verb/WebSabakuSousou()
						else
							usr<<"You need 500 Nin to learn Web Sousou."
						if(usr.Kidomaru&&usr.Mgen >=1000&&usr.Mnin>=1000)
							usr<<"<b><font color=blue>You have learned Web Kyuu!"
							usr.verbs += new /mob/Kidomaru/verb/WebSabakuKyuu()
						else
							usr<<"You need 1000 Nin&Gen to learn Web Kyuu."
						if(usr.Kidomaru&&usr.Mgen >=1500&&usr.Mnin>=1500)
							usr<<"<b><font color=blue>You have learned Spiders Web!"
							usr.verbs += new /mob/Kidomaru/verb/Spiderweb()
						else
							usr<<"You need 1500 Nin&Gen to learn SpiderWeb."
						if(usr.Kidomaru&&usr.Mgen >=1500&&usr.Mnin>=1500)
							usr<<"<b><font color=blue>You have learned Spider Web Spew!"
							usr.verbs += new /mob/Kidomaru/verb/SpiderSpew()
						else
							usr<<"You need 1500 Nin&Gen to learn Spider Wed Spew!"
				/*		if(usr.Kidomaru&&usr.Mgen >=1500&&usr.Mnin>=1500)
							usr<<"<b><font color=blue>You have learned Create Spikes!"
							usr.verbs += new /mob/Kidomaru/verb/CreateSpiderSpikes()
						else
							usr<<"You need 1500 Nin&Gen to learn Create Spikes."*/
						if(usr.Kidomaru&&usr.Mgen >=1500&&usr.Mnin>=1500)
							usr<<"<b><font color=blue>You have learned Spider Spikes!"
							usr.verbs += new /mob/Kidomaru/verb/SpiderSpikes()
						else
							usr<<"You need 1500 Nin&Gen to learn Spider Spikes."
					else
						usr<<"Lier leave my house NOW!"
				if("Forget it")
					usr<<"You are nothing but a puppet"



mob/npc/Choji
	name = "Chouji"
	icon = 'Npc Chouji.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Chouji"
			switch(input("Hello this is the Akimichi house",text) in list ("I'm Akimichi too!","Forget it"))
				if("I'm Akimichi too!")
					if(usr.Akimichi == 1)
						usr<<"Hello, welcome to our house."
						if(usr.Akimichi&&usr.Mtai >=25000)
							usr << "<B><font color = blue>You learned Butterfly Chakra!!"
							usr.verbs += new /mob/Akimichi/verb/EatP()
						else
							usr<<"You need 25000 Tai to learn Butterfly Chakra."
						if(usr.Akimichi&&usr.Mtai >=250)
							usr << "<B><font color = blue>You learned Chodan Bakugeki!!"
							usr.verbs += new /mob/Akimichi/verb/Chodan()
						else
							usr<<"You need 250 Tai to learn Chodan Bakugeki."
						if(usr.Akimichi&&usr.Mnin >=500)
							usr << "<B><font color = blue>You learned Baika No Jutsu!"
							usr.verbs += new /mob/Akimichi/verb/BaikaNoJutsu()
						else
							usr<<"You need 500 Nin to learn Baika No Jutsu."
						if(usr.Akimichi&&usr.Mtai >=250)
							usr << "<B><font color = blue>You learned Nikudan Sensha!!"
							usr.verbs += new /mob/Akimichi/verb/NikudanSensha()
						else
							usr<<"You need 250 Tai to learn Nikudan Sensha."
						if(usr.Akimichi&&usr.Mtai >=1000)
							usr << "<B><font color = blue>You learned Nikudan Hari Sensha!"
							usr.verbs += new /mob/Akimichi/verb/NikudanHariSensha()
						else
							usr<<"You need 1000 tai to learn Nikudan Hari Sensha."
						if(usr.Akimichi&&usr.Mnin >=750&&usr.calories>=750&&usr.Mtai>=750)
							usr << "<B><font color = blue>You learned Babun Baika No Jutsu!"
							usr.verbs += new /mob/Akimichi/verb/BabunBaikaNoJutsu()
						else
							usr<<"You need 750 Tai&Nin&Calories to learn Babun Baika No Jutsu."

					else
						usr<<"Lier leave the Akimichi house NOW!"
						return
				if("Forget it")
					usr<<"Ohh ok do you have some food?"
mob/npc/Shikamaru
	name = "Shikamaru"
	icon = 'Npc Shikamaru.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Shikamaru"
			switch(input("How boring this is, this is the Nara house",text) in list ("I'm Nara too!","Forget it"))
				if("I'm Nara too!")
					if(usr.Nara)
						usr<<"Hello, welcome to our house."
						if(usr.Nara&&usr.Mgen >=500)
							usr << "<B><font color = blue>You learned Kage Shibari No Jutsu!"
							usr.verbs += new /mob/Nara/verb/kageshibari()
							usr.verbs += new /mob/Nara/verb/ExtendShadow()
							usr.verbs += new /mob/Nara/verb/RetractShadow()
						else
							usr<<"You need 500 Gen to learn Kage Shibari No Jutsu."
						if(usr.Nara&&usr.Mgen >=500&&usr.Mnin>=500)
							usr << "<B><font color = blue>You learned Kage Kubi Shibaru!"
							usr.verbs += new /mob/Nara/verb/KageKubiShibaru()
						else
							usr<<"You need 500 Nin&Gen to learn Kage Kubi Shibaru."
						if(usr.Nara&&usr.Mgen >=1000&&usr.Mnin>=1000)
							usr<<"<b><font color=blue>You have learned Teleport!"
							usr.verbs += new /mob/Nara/verb/kageteleport()
						else
							usr<<"You need 1000 Nin&Gen to learn Teleport."
						if(usr.Nara&&usr.Mgen >=1000&&usr.Mnin>=1000)
							usr<<"<b><font color=blue>You have learned Shadow Stitching Jutsu!"
							usr.verbs += new /mob/Nara/verb/SBlazing_Hell()
						else
							usr<<"You need 1000 Nin&Gen to learn Shadow Stitching Jutsu."
						if(usr.Nara&&usr.Mnin>=5000)
							usr<<"<b><font color=blue>You learned Shadow No Jutsu"
							usr.verbs += new /mob/Nara/verb/ShadowNoJutsu()
						else
							usr<<"You need 5000 Nin to learn Shadow No Jutsu."
						if(usr.Nara&&usr.shurikenskill>=500)
							usr<<"<b><font color=blue>You learned Kage Shuriken."
							usr.verbs += new /mob/shurikenmove/verb/KageShuriken()
						else
							usr<<"You need 500 Shuriken skill to learn Kage Shuriken."
						if(usr.Nara&&usr.kunaiskill >=500)
							usr << "<B><font color = blue>You Learned Kage Kunai!!"
							usr.verbs += new /mob/shurikenmove/verb/KageKunai()
						else
							usr<<"You need 500 Kunai Skill to learn Kage Kunai."
					else
						usr<<"Lier leave the Nara house NOW!"
						return
				if("Forget it")
					usr<<"What a drag"

mob/npc/Kamizuri
	name = "Bee Keeper"
	icon = 'BeeArmor.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Bee Keeper"
			switch(input("What do you want I'm beezy.",text) in list ("I'm Kamizuri too!","Forget it"))
				if("I'm Kamizuri too!")
					if(usr.Kamizuri == 1)
						usr<<"Hello, welcome to our house."
						if(usr.Kamizuri&&usr.Mnin >=250)
							usr << "<B><font color = blue>You learned your Bee options!"
							usr.verbs += new /mob/Kamizuri/verb/summonbees()
							usr.verbs += new /mob/Kamizuri/verb/Placebee()
							usr.verbs += new /mob/Kamizuri/verb/Destroybee()
						else
							usr<<"You need 250 Nin to learn how to use Bees."
						if(usr.Kamizuri&&usr.Mnin >=500&&usr.Mgen>=200)
							usr << "<B><font color = blue>You learned how to explode your Bees!"
							usr.verbs += new /mob/Kamizuri/verb/ExplodeBee()
						else
							usr<<"You need 500 Nin to learn how to Explode Bees"
						if(usr.Kamizuri&&usr.Mnin >=500&&usr.Mgen>=200)
							usr<<"<B><font color = blue>You learned Bee Kyuu!"
							usr.verbs += new /mob/Kamizuri/verb/BeeSabakuKyuu()
						else
							usr<<"You need at least 500 Nin to learn Bee Kyuu!"
						if(usr.Kamizuri&&usr.Mnin >=500&&usr.Mgen>=200)
							usr<<"<B><font color = blue>You learned Bee Sousou!"
							usr.verbs += new /mob/Kamizuri/verb/BeeSabakuSousou()
						else
							usr<<"You need at least 500 Nin to learn Bee Sousou!"
						if(usr.Kamizuri&&usr.Mnin >=500&&usr.Mgen>=200)
							usr << "<B><font color = blue>You learned Hachi Senbon no jutsu!"
							usr.verbs += new /mob/Kamizuri/verb/hsenbon()
						else
							usr<<"You need 500 Nin to learn Hachi Senbon no jutsu"
						if(usr.Kamizuri&&usr.Mnin >=300)
							usr << "<B><font color = blue>You learned Bee Armor!"
							usr.verbs += new /mob/Kamizuri/verb/BeeArmor()
						else
							usr<<"You need 300 Nin to learn Bee Armor."
						if(usr.Kamizuri&&usr.Mnin >= 2500)
							usr<<"<b><font color=blue>You learned Bee Wings."
							usr.verbs += new /mob/Beeflight/verb/Fly()
						else
							usr<<"You need 2500 Nin to learn Bee Wings."
					else
						usr<<"Lier leave the Kamizuri house NOW!"
						return
				if("Forget it")
					usr<<"Bee gone!"

mob/npc/Deidara
	name = "Deidara"
	icon = 'Npc Deidara.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Deidara"
			switch(input("What do you want I'm busy.","Deidara") in list ("I'm Deidara too!","Forget it"))
				if("I'm Deidara too!")
					if(usr.rank=="Student")
						usr<<"Noob."
					else
						if(usr.Deidara)
							usr<<"Hello, welcome to our house."
							if(usr.Deidara&&usr.Mnin >=4000)
								usr << "<B><font color = blue>You learned your basic clay sculpting options!"
								usr.verbs += new /mob/Deidara/verb/DestroyClay()
								usr.verbs += new /mob/Deidara/verb/summonclay()
								usr.verbs += new /mob/Deidara/verb/Placeclay()
							else
								usr<<"You need 4000 Nin to learn how to use Clay."
							if(usr.Deidara&&usr.Mnin >=4000&&usr.Mnin>=4000)
								usr << "<B><font color = blue>You learned Clay Art: Clay Bunshin no jutsu!"
								usr.verbs += new /obj/bunshins/ClayBunshinnojutsu/verb/ClayBunshinNoJutsu()
							if(usr.Deidara&&usr.Mnin >=4000&&usr.Mchakra>=4000)
								usr << "<B><font color = blue> You learned Clay Art: Bunshin Explosion Technique!"
								usr.verbs += new /mob/jutsu/verb/ClayArt_BE()
							if(usr.Deidara&&usr.Mnin >=4000&&usr.Mgen>=4000)
								usr << "<B><font color = blue>You learned how to explode your Clay!"
								usr.verbs += new /mob/Deidara/verb/ExplodeClay()
							else
								usr<<"You need 4000 Nin to learn how to Explode Clay"
							if(usr.Deidara&&usr.Mnin >=4000)
								usr << "<B><font color = blue>You learned Clay Armor!"
								usr.verbs += new /mob/Deidara/verb/ClayArmor()
							else
								usr<<"You need 4000 Nin to learn Clay Armor."
							if(usr.Deidara&&usr.Mnin >=4000&&usr.Mchakra>=4000)
								usr << "<B><font color = blue>You learned Clay Art: Clay Spider Mines!"
								usr.verbs += new /mob/Deidara/verb/ClayMine()
							else
								usr<<"You need at least 4000 Nin to learn Clay Art: Clay Spider Mines"
							if(usr.Deidara&&usr.Mnin >=4000&&usr.Mchakra>=4000)
								usr << "<B><font color = blue>You learned Clay Art: Bird Bombardment!"
								usr.verbs += new /mob/Deidara/verb/ClayBird()
							else
								usr<<"You need at least 4000 Nin to learn Clay Art Bird Bombardment"
							if(usr.Deidara&&usr.Mnin >=4000&&usr.Mchakra>=4000)
								usr << "<B><font color = blue>You learned Clay Art: C4 Self Detonate!"
								usr.verbs += new /mob/Deidara/verb/C4()
							else
								usr<<"You need at least 4000 Nin to learn Clay Art: C4 Self Detonation"
						else
							usr<<"Lier leave the Deidara House NOW!"
							return

				if("Forget it")
					usr<<"Leave Then!!"

mob/npc/Kabuto
	name = "Kabuto"
	icon = 'Npc Kabuto.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Kubuto"
			switch(input("What do you want I'm working on my cards.",text) in list ("Can you heal me?","INFO Cards","Give me a pill","I'm a Medic too!","Forget it"))
				if("I'm a Medic too!")
					if(usr.Medical)
						usr<<"Hello, welcome to our house."
						if(usr.Medical&&usr.Mgen >=500)
							usr << "<B><font color = blue>You have acquired Shousen Jutsu!!"
							usr.verbs += new /mob/Medical/verb/Shousen_Jutsu()
						else
							usr<<"You need 500 Gen to learn Shousen Jutsu."
						if(usr.Medical&&usr.Mnin >=1000&&usr.Mgen >= 1000)
							usr << "<B><font color = blue>You have acquired Chakra No Mesu!!"
							usr.verbs += new /mob/Medical/verb/ChakraNoMesu()
						else
							usr<<"You need 1000 Nin&Gen to learn Chakra No Mesu."
						if(usr.Medical&&usr.Mnin >=750&&usr.Mtai >= 750)
							usr.verbs += new /mob/Medical/verb/SliceTendons()
							usr<<"You have learned Slice Tendons."
						else
							usr<<"You need 750 Nin&Tai to learn Slice Tendons."
						if(usr.Medical&&usr.Mnin >=500&&usr.Mtai >= 500)
							usr.verbs += new /mob/Medical/verb/ScrewNerves()
							usr<<"You have learned Screw Nerves."
						else
							usr<<"You need 500 Nin&Tai to learn Screw Nerves."
						if(usr.Medical&&usr.Mgen >= 100)
							usr.verbs += /mob/Medical/verb/InfoCards
							usr<<"You have learned Info Cards."
						else
							usr<<"Hit a log noob."
						if(usr.Medical&&usr.Mgen >= 1000)
							usr << "<B><font color = blue>You have acquired Restore!!"
							usr.verbs += new /mob/Medical/verb/Restore_Jutsu()
						else
							usr<<"You need 1000 Gen to learn Restore."
						if(usr.Medical&&usr.Mnin >= 5000)
							usr << "<B><font color = blue>You have acquired Chakra Absorb!!"
							usr.verbs += new /mob/Medical/verb/ChakraAbsorb()
						else
							usr<<"You need 5000 Nin to learn Chakra Absorb."
						if(usr.Medical&&usr.Mnin >= 25000)
							usr << "<B><font color = blue>You have acquired Snake Sage Mode!!"
							usr.verbs += new /mob/Medical/verb/SSM()
						else
							usr<<"You need 25000 Nin to learn Snake Sage Mode."
					else
						usr<<"Lier leave the Medic house NOW!"
						return
				if("Can you heal me?")
					usr<<"Ok then."
					usr.health=usr.Mhealth
					usr.chakra=usr.Mchakra
					usr<<"There you go good as new."
				if("Give me a pill")
					switch(input("That will be 2000 Yen.", text) in list("Yes","No"))
						if("Yes")
							if(usr.Yen >= 2000)
								usr.Yen -= 2000
								var/obj/Pill/P = new/obj/Pill
								P.loc = usr
								usr<<"Here you go."
							else
								usr<<"Not enough money!"
						else
							usr<<"Ok."
				if("INFO Cards")
					for(var/mob/M in world)
						if(M.client&&M.z==usr.z)
							usr<<"{\icon[M][M.name],Rank - [M.rank], health - [M.health],Chakra - [M.chakra]"
							usr<<"Tai - [M.tai],Nin - [M.nin],Gen - [M.gen]"
							usr<<"Location; [M.x],[M.y]"
				if("Forget it")
					usr<<"Ok then back to my cards."

mob/npc/Kaguya
	name= "???"
	icon = 'Npc Kimimaro.dmi'
	icon_state = "Kimimaro"
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "???"
			switch(input("What, this is the Kaguya house",text) in list ("I'm Kaguya too!","Forget it"))
				if("I'm Kaguya too!")
					if(usr.Kaguya == 1)
						usr<<"Hello."
						if(usr.Kaguya&&src.Mtai >=100)
							usr << "<B><font color = blue>You learned how to develop a sword out of your arm bone!"
							usr.verbs += new /mob/Kaguya/verb/CreateBoneSword()
						else
							usr<<"You need 100 Tai to learn Bone Sword No Jutsu."
						if(usr.Kaguya&&usr.Mtai >=500)
							usr << "<B><font color = blue>You learned how to develop a whip out of your spinal column!"
							usr.verbs += new /mob/Kaguya/verb/CreateSpineWhip()
						else
							usr<<"You need 500 Tai to learn Spine Wipe."
						if(usr.Kaguya&&usr.Mtai >=100)
							usr << "<B><font color = blue>You learned Yanagi No Mai!"
							usr.verbs += new /mob/Kaguya/verb/YanagiNoMai()
						else
							usr<<"You need 100 Tai to learn Yanagi No Mai."
						if(usr.Kaguya&&usr.Mtai >=250)
							usr << "<B><font color = blue>You learned Tsubaki No Mai!"
							usr.verbs += new /mob/Kaguya/verb/TsubakiNoMai()
						else
							usr<<"You need 250 Tai to learn Tsubaki No Mai."
						if(usr.Kaguya&&usr.Mtai >=300)
							usr << "<B><font color = blue>You learned Karamatsu No Mai!"
							usr.verbs += new /mob/Kaguya/verb/KaramatsuNoMai()
						else
							usr<<"You need 300 Tai to learn Karamatsu No Mai."
						if(usr.Kaguya&&usr.Mtai >=750)
							usr << "<B><font color = blue>You learned Tessenka No Mai!"
							usr.verbs += new /mob/Kaguya/verb/TessenkaNoMai()
						else
							usr<<"You need 750 Tai to learn Tessenka No Mai."
						if(usr.Kaguya&&usr.Mtai >=180&&usr.Mnin>=100)
							usr << "<B><font color = blue>You learned Teshi Sendan!"
							usr.verbs += new /mob/Kaguya/verb/TeshiSendan()
						else
							usr<<"You need 200 Tai&Nin to learn Teshi Sendan."
						if(usr.Kaguya&&usr.Mtai >=1000&&usr.Mchakra>=10000)
							usr << "<B><font color = blue>You learned Sawarabi No Mai!"
							usr.verbs += new /mob/Kaguya/verb/Sawarabi()
						else
							usr<<"You need 1000 Tai & 10000 Chakra to learn Sawarabi No Mai."
					else
						usr<<"Lier leave the Kaguya house NOW!"
						return
				if("Forget it")
					usr<<"Fine"
					return

mob/npc/Kiba
	name = "Kiba"
	icon = 'Npc Kiba.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Inuzuka"
			switch(input("Ya, this is the Inuzuka house what do you want?",text) in list ("I'm Inuzuka too!","Forget it"))
				if("I'm Inuzuka too!")
					if(usr.Inuzuka)
						usr<<"Hello."
						if(usr.Mtai >=50&&usr.Clan=="Inuzuka")
							usr << "<B><font color = blue>You learned how to Tame Dogs!"
							usr.verbs += new /mob/Inuzuka/verb/Tame()
						else
							usr<<"Hit a log noob."
						if(usr.Inuzuka&&usr.Mtai >=500)
							usr << "<B><font color = blue>You learned Tsuuga!!"
							usr.verbs += new /mob/Inuzuka/verb/Tsuuga()
						else
							usr<<"You need 500 Tai to learn Tsuuga."
						if(usr.Inuzuka&&usr.Mnin >=250)
							usr << "<B><font color = blue>You learned Juujin Bunshin!!"
							usr.verbs += new /mob/Inuzuka/verb/JuujinBunshin()
						else
							usr<<"You need 250 Tai to learn Juujin Bunshin."
						if(usr.Inuzuka&&usr.Mtai >=1000&&usr.Mnin >= 1000)
							usr << "<B><font color = blue>You learned Soutourou!!"
							usr.verbs += new /mob/Inuzuka/verb/Soutourou()
						else
							usr<<"You need 1000 Nin&Tai to learn Soutourou."
						if(usr.Inuzuka&&usr.Mtai >=750&&usr.Mnin >= 750)
							usr << "<B><font color = blue>You learned Garouga!!"
							usr.verbs += new /mob/Inuzuka/verb/Garouga()
						else
							usr<<"You need 750 Nin&Tai to learn Garouga."
						if(usr.Inuzuka&&usr.Mtai >=800)
							usr << "<B><font color = blue>You learned Gatsuuga!"
							usr.verbs += new /mob/Inuzuka/verb/Gatsuuga()
						else
							usr<<"You need 800 Tai to learn Gatsuuga."
					else
						usr<<"Lier leave the Inuzuka house NOW!"
				if("Forget it")
					usr<<"Forgoten"
					return

mob/npc/Neji
	name = "Neji"
	icon = 'Npc Neji.dmi'
	PK = 0
	NPC = 1
	health = 99999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Neiji"
			switch(input("What do you want inferior insect?",text) in list ("Nothing","I'm hyuuga too!"))
				if("I'm hyuuga too!")
					if(usr.Hyuuga == 1)
						usr<<"Hello fellow Hyuuga, welcome to our house."
						if(usr.rank == "Student")
							return
						if(usr.Mtai >=500)
							usr<<"You will now learn Gentle Step: Twin Lion Fists!"
							usr.verbs += new /mob/Hyuuga/verb/Gentle_Step()
						if(usr.Mtai >=350)
							usr<<"You have become very strong [usr]..I think it is time to teach you Hakkeshou Kaiten,the Hyuuga ultimate defense jutsu. Use it wisely."
							usr.verbs += new /mob/Hyuuga/verb/HakkeshouKaiten()
						if(usr.Mtai >=500)
							usr<<"I will now teach you Hakke Kuushou."
							usr.verbs += new /mob/Hyuuga/verb/HakkeKuusho()
						if(usr.Mtai >=250&&usr.Mnin >= 250)
							usr << "<B><font color = blue>Your byakugan has activated!!"
							usr.verbs += new /mob/Hyuuga/verb/Byakugan()
						else
							usr<<"You need 250 Nin&Tai to activate your Byakugan."
					else
						usr<<"Lier leave the Hyuuga house NOW!"

mob/npc/Kakashi
	name = "Kakashi"
	icon = 'Npc Kakashi.dmi'
	PK = 0
	NPC = 1
	health = 999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Kakashi"
			switch(input("Come to the great copy ninja have we?",text) in list ("I'm Hatake too.","Cancel"))
				if("I'm Hatake too.")
					if(usr.Hatake)
						usr<<"Really...?"
						if(usr.Hatake&&usr.Mnin >=10000)
							usr << "<B><font color = blue>You learned Raiton Bunshin No Jutsu!"
							usr.verbs += new /obj/bunshins/RaitonBunshinnojutsu/verb/RaitonBunshinNoJutsu()
						else
							usr<<"You need 10000 Nin to learn Raiton Bunshin No Jutsu"
						if(usr.Hatake&&usr.Mnin >=10000)
							usr << "<B><font color = blue>You learned Raiton Beast No Jutsu!"
							usr.verbs += new /mob/Hatake/verb/Raiton_B()
						else
							usr<<"You need 10000 Nin to learn Raiton Beast No Jutsu"
						if(usr.Hatake&&usr.Mnin >=10000)
							usr << "<B><font color = blue>You learned Raiden!"
							usr.verbs += new /mob/Hatake/verb/Raiden()
						else
							usr<<"You need 10000 Nin to learn Raiden"
						if(usr.Hatake&&usr.Mtai >=550)
							usr << "<B><font color = blue>You learned how to open the First Gate!"
							usr.verbs += new /mob/Hatake/verb/OpenFirstGate()
						else
							usr<<"<B><font color = blue>You need 550 Taijutsu to learn how to open the First Gate!."
						if(usr.Hatake&&usr.Mtai >=500)
							usr << "<B><font color = blue>You learned Omote Renge!!"
							usr.verbs += new /mob/Lee/verb/OmoteRenge()
						else
							usr<<"You need 500 Tai to learn Omote Renge."
						if(usr.Hatake&&usr.Mnin >= 1000)
							usr<<"<B><font color = blue>You learned Tracking Fang Technique!!"
							usr.verbs += new /mob/Hatake/verb/Fang_P()
						else
							usr<<"<B><font color = blue>You need at least 1000 nin to learn Tracking Fang Technique"
						if(usr.Hatake&&usr.Mnin >= 1000)
							usr << "Hmm... You seem ready... Now, I'll teach you the basics of controlling your Sharingan!"
							usr << "<B><font color = blue>You learned to control your Sharingan!!"
							usr.verbs += new /mob/Uchiha/verb/Sharingan()
						else
							usr<<"<B><font color = blue>You need 1000 Ninjutsu to Learn to control your Sharingan."
						if(usr.Hatake&&usr.Mnin >= 2500&&usr.Mtai >=2500)
							usr << "<B><font color = blue>You learned Raikiri!!"
							usr.verbs += new /mob/Hatake/verb/Raikiri()
						else
							usr<<"<B><font color = blue>You need 2500 Taijutsu and Ninjutsu to learn Raikiri."
						if(usr.Hatake&&usr.Mnin >= 5000&&usr.Mtai >=5000&&usr.kills >= 250&&usr.Suses >= 300)
							usr << "<B><font color = blue>You learned how to for your Sharingan from normal to the Legendary Mangekyou form!!!"
							usr.verbs += new /mob/Uchiha/verb/MSharingan()
						else
							usr<<"<B><font color = blue>You need 5000 Taijutsu and Ninjutsu and you also need to have 250 kills and used your Sharingan more than 300 times to be able to learn how to get Mangekyou Sharingan."


					else
						usr << "Your not a Hatake... You can not learn anything from me!"

mob/npc/Jiraiya
	name = "Jiraiya"
	icon = 'Npc Jiraiya.dmi'
	PK = 0
	NPC = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Jiraiya"
			if(!usr.Uzumaki&&!usr.Jiraiya&&!usr.Namikaze)
				switch(input("Sup what can i do for you?","Jiraiya") in list ("Redo my Seals"))
					if("Redo my Seals")
						if(usr.rank=="Student"||usr.rank=="Genin"||usr.rank=="Chúnin")
							usr<<"You must be a Jounin or higher to redo your seals"
							return
						if(usr.Kyuubi)
							if(usr.kyuu2>=1)
								if(usr.kyuu2>=1&&usr.kills>=250)
									usr<<"Wow you have become the practiced killer, ok now relax this is a trust test."
									usr.kyuu3=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"You have not killed enough."
									return
							else
								if(usr.Kyuubi==1)
									usr<<"Wow you have ranked up some, ok now relax this is a trust test."
									usr.kyuu2=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"Your rank is to low."
									return
						else
							usr<<"You do not have tails."
						if(usr.bit==1)
							if(usr.CS2>=1)
								if(usr.CS2>=1&&usr.kills>=250)
									usr<<"Wow you have become the practiced killer, ok now relax this is a trust test."
									usr.CS3=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"You have not killed enough."
									return
							else
								if(usr.bit==1)
									usr<<"Wow you have ranked up some, ok now relax this is a trust test."
									usr.CS2=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"Your rank is to low."
									return
						else usr<<"You do not have Cursed Seal."
			else if (usr.Namikaze)
				switch(input("Sup what can I do for you?","Jiraiya") in list ("Let Me Be Your Apprentice","Redo my Seals"))
					if("Let Me Be Your Apprentice")
						if(usr.Namikaze)
							usr<<"So You Would Like To Learn My Ways?"
							if(usr.Namikaze&&usr.Mtai<5000&&usr.Mgen<5000&&usr.Mnin<5000)
								usr<<"You Need To Have At Least 5k All Stats To Learn My Techniques!"
								return
							if(usr.Namikaze&&usr.Mtai>=5000&&usr.Mgen>=5000&&usr.Mnin>=5000)
								usr<<"I Will Teach You My Legendary Sannin Skills!"
								usr.verbs += new /mob/Minato/verb/Seal()
								usr.verbs += new /mob/Minato/verb/FlyingThunderGod()
								usr.verbs += new /mob/jutsu/verb/Rasengan()
								usr.verbs += new /mob/Reaper/verb/Reaper()
								usr.verbs += new /mob/Minato/verb/Space()
								usr.verbs += new /mob/Minato/verb/FTGKunai()
								usr<<"<font color = blue><B>You Have Learned Flying Thunder God Kunai"
								usr<<"<font color=blue><B>You Have Learned Flying Thunder God Technique"
								usr<<"<font color=blue><B>You Have Learned Rasengan"
								usr<<"<font color=blue><B>You Have Learned Demon Dead Seal"
								usr<<"<font color=blue><B>You Have Learned Space Time Barrier"
					if("Redo my Seals")
						if(usr.rank=="Student"||usr.rank=="Genin"||usr.rank=="Chúnin")
							usr<<"You must be a Jounin or higher."
							return
						if(usr.Kyuubi)
							if(usr.kyuu2>=1)
								if(usr.kyuu2>=1&&usr.kills>=250)
									usr<<"Wow you have become the practiced killer, ok now relax this is a trust test."
									usr.kyuu3=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"You have not killed enough."
									return
							else
								if(usr.Kyuubi==1)
									usr<<"Wow you have ranked up some, ok now relax this is a trust test."
									usr.kyuu2=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"Your rank is to low."
									return
						else
							usr<<"You do not have tails."
						if(usr.bit==1)
							if(usr.CS2>=1)
								if(usr.CS2>=1&&usr.kills>=250)
									usr<<"Wow you have become the practiced killer, ok now relax this is a trust test."
									usr.CS3=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"You have not killed enough."
									return
							else
								if(usr.bit==1)
									usr<<"Wow you have ranked up some, ok now relax this is a trust test."
									usr.CS2=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"Your rank is to low."
									return
						else usr<<"You do not have Cursed Seal."
			else if(usr.Uzumaki)
				switch(input("Sup what can i do for you?","Jiraiya") in list ("Sage Mode","Redo my Seals"))
					if("Sage Mode")
						if(usr.Uzumaki)
							usr<<"So You Would Like To Learn Sage Mode"
							if(usr.Uzumaki&&usr.Mtai<50000&&usr.Mgen<50000&&usr.Mnin<50000)
								usr<<"You Need To Be Capped Jounin or Higher To Learn Sage Mode"
								return
							if(usr.Uzumaki&&usr.Mtai>=50000&&usr.Mgen>=50000&&usr.Mnin>=50000)
								usr<<"I Will Teach You Sage Mode"
								usr.verbs += new /mob/Jiraiya/verb/SM()
								usr<<"You Have Learned Sage Mode"
					if("Redo my Seals")
						if(usr.rank=="Student"||usr.rank=="Genin"||usr.rank=="Chúnin")
							usr<<"You must be a Jounin or higher."
							return
						if(usr.Kyuubi)
							if(usr.kyuu2>=1)
								if(usr.kyuu2>=1&&usr.kills>=250)
									usr<<"Wow you have become the practiced killer, ok now relax this is a trust test."
									usr.kyuu3=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"You have not killed enough."
									return
							else
								if(usr.Kyuubi==1)
									usr<<"Wow you have ranked up some, ok now relax this is a trust test."
									usr.kyuu2=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"Your rank is to low."
									return
						else
							usr<<"You do not have tails."
						if(usr.bit==1)
							if(usr.CS2>=1)
								if(usr.CS2>=1&&usr.kills>=250)
									usr<<"Wow you have become the practiced killer, ok now relax this is a trust test."
									usr.CS3=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"You have not killed enough."
									return
							else
								if(usr.bit==1)
									usr<<"Wow you have ranked up some, ok now relax this is a trust test."
									usr.CS2=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"Your rank is to low."
									return
						else usr<<"You do not have Cursed Seal."
			else if(usr.Jiraiya)
				switch(input("Sup what can i do for you?","Jiraiya") in list ("Jutsus Please","Redo my Seals"))
					if("Jutsus Please")
						if(usr.Jiraiya)
							if(usr.rank=="Student")
								return
							if(usr.Jiraiya&&usr.Mnin>=2000)
								usr<<"<b><font color=blue>You learned Toad Flame Bomb!"
								usr.verbs += new /mob/Jiraiya/verb/Toad_F()
							else
								usr<<"You need 2000 Nin to get Toad Flame Bomb."
							if(usr.Jiraiya&&usr.Mnin>=2000)
								usr<<"<b><font color=blue>You learned Big Flame Bullet!"
								usr.verbs += new /mob/Jiraiya/verb/BFlame()
							else
								usr<<"You need 2000 Nin to get Big Flame Bullet."
							if(usr.Jiraiya&&usr.Mnin>=2000)
								usr<<"<b><font color=blue>You learned Fire Dragon!"
								usr.verbs += new /mob/katon/verb/Karyuudan()
							else
								usr<<"You need 2000 Nin to get Fire Dragon."
							if(usr.Jiraiya&&usr.Mnin>=2000)
								usr<<"<b><font color=blue>You learned Grand Fire Ball!"
								usr.verbs += new /mob/katon/verb/KatonGoukakyuu()
							else
								usr<<"You need 2000 Nin to get Grand Fire Ball."
							if(usr.Jiraiya&&usr.Mnin>=2000)
								usr<<"<b><font color=blue>You learned Dark Swamp!"
								usr.verbs += new /mob/Jiraiya/verb/DarkSwamp()
							else
								usr<<"You need 2000 Nin to get Dark Swamp."
							if(usr.Jiraiya&&usr.Mnin>=2000)
								usr<<"<b><font color=blue>You learned Hell Toad Dance!"
								usr.verbs += new /mob/Jiraiya/verb/HTD()
							else
								usr<<"You need 2000 Nin to get Hell Toad Dance!"
							if(usr.Jiraiya&&usr.Mnin>=7500)
								usr<<"<b><font color=blue>You learned Blazing Rasengan!"
								usr.verbs += new/mob/Naruto/verb/BRasengan()
							else
								usr<<"You need 7500 Nin to learn Blasing Rasengan."
							if(usr.Jiraiya&&usr.rank == "Sannin")
								usr<<"<b><font color=blue>You learned Hide in a Toad Technique!"
								usr.verbs += new /mob/Jiraiya/verb/HIAT()
							else
								usr<<"You need at least Sannin rank to get Hide in a Toad Technique."
							if(usr.Jiraiya&&usr.Mnin>=50000&&usr.Mtai>=50000&&usr.Mgen>=50000)
								usr<<"<b><font color=blue>You learned How to control Sage Chakra!"
								usr.verbs += new /mob/Jiraiya/verb/SM()
							else
								usr<<"You need 50k In Each Stat to get Sage Mode."
						else
							usr<<"Your Not In My Clan"
					if("Redo my Seals")
						if(usr.rank=="Student"||usr.rank=="Genin"||usr.rank=="Chúnin")
							usr<<"You must be a Jounin or higher."
							return
						if(usr.Kyuubi)
							if(usr.kyuu2>=1)
								if(usr.kyuu2>=1&&usr.kills>=250)
									usr<<"Wow you have become the practiced killer, ok now relax this is a trust test."
									usr.kyuu3=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"You have not killed enough."
									return
							else
								if(usr.Kyuubi==1)
									usr<<"Wow you have ranked up some, ok now relax this is a trust test."
									usr.kyuu2=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"Your rank is to low."
									return
						else
							usr<<"You do not have tails."
						if(usr.bit==1)
							if(usr.CS2>=1)
								if(usr.CS2>=1&&usr.kills>=250)
									usr<<"Wow you have become the practiced killer, ok now relax this is a trust test."
									usr.CS3=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"You have not killed enough."
									return
							else
								if(usr.bit==1)
									usr<<"Wow you have ranked up some, ok now relax this is a trust test."
									usr.CS2=1
									sleep(30)
									usr<<"There you go you should receive a bigger boost now."
									return
								else
									usr<<"Your rank is to low."
									return
						else usr<<"You do not have Cursed Seal."
mob/npc/Gaara
	name = "Gaara"
	icon = 'Npc Gaara.dmi'
	PK = 0
	NPC = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Gaara"
			switch(input("Who are you? What do you want.",text) in list ("I'm Gaara too.","Unlock My Demon"))
				if("I'm Gaara too.")
					if(usr.Gaara)
						usr<<"Really."
						if(usr.Gaara&&usr.Mnin >=100)
							usr << "<B><font color = blue>You learned Suna Shuriken No Jutsu!"
							usr.verbs += new /mob/Gaara/verb/SunaShuriken()
						else
							usr<<"Hit a log noob."
						if(usr.Gaara&&usr.Mnin >=100)
							usr << "<B><font color = blue>You learned Sand Control!!"
							usr.verbs += new /mob/Gaara/verb/SandC()
						else
							usr <<"You need at least 100 nin to learn Sand Control"
						if(usr.Gaara&&usr.Mnin >=100)
							usr << "<B><font color = blue>You learned Sand Hail!!"
							usr.verbs += new /mob/Gaara/verb/SandTsunami()
						else
							usr <<"You need at least 100 nin to learn Sand Hail"
						if(usr.Gaara&&usr.Mnin >=100)
							usr << "<B><font color = blue>You learned Sand Spear!!"
							usr.verbs += new /mob/Gaara/verb/Desert_AD()
						else
							usr<<"You need at least 100 nin to learn Sand Spear"
						if(usr.Gaara&&usr.Mnin >=100)
							usr << "<B><font color = blue>You learned Sabaku Fuyu!!"
							usr.verbs += new /mob/SandF/verb/Fly()
						else
							usr<<"You need at least 100 nin to learn Sabaku Fuyu"
						if(usr.Gaara&&usr.Mnin >=100&&usr.KawaN >= 30)
							usr << "<B><font color = blue>You learned Suna Shushin No Jutsu!!"
							usr.verbs += new /mob/Gaara/verb/SunaShushinNoJutsu()
						else
							usr<<"You need 100 Nin & 30 Kawa uses to learn Suna Shushin No Jutsu."
						if(usr.Gaara&&usr.Mnin >=300)
							usr << "<B><font color = blue>You learned Sand Sphere!"
							usr.verbs += new /mob/Gaara/verb/SandSphere()
						else
							usr<<"You need 300 Nin to learn Sand Sphere."
						if(usr.Gaara&&usr.Mnin >=200)
							usr << "<B><font color = blue>You learned Suna Bunshin No Jutsu!"
							usr.verbs += new /obj/bunshins/SunaBunshinnojutsu/verb/SunaBunshinNoJutsu()
						else
							usr<<"You need 200 Nin to learn Suna Bunshin No Jutsu."
						if(usr.Gaara&&usr.Mgen>=500)
							usr << "<B><font color = blue>You learned Sand Armor!"
							usr.verbs += new /mob/Gaara/verb/SandArmor()
						else
							usr<<"You need 500 Gen to learn Sand Armor."
					else
						usr<<"Your Not In My Clan"
				if("Unlock My Demon")
					if(usr.rank=="Student"||usr.rank=="Genin"||usr.rank=="Chúnin")
						usr<<"You must be a Jounin or higher."
						return
					if(usr.Shukkaku==1&&usr.kaku2<=0)
						usr<<"You have ranked up some, your still a no body though."
						usr.kaku2=1
						sleep(30)
						usr<<"There you go you should receive a bigger boost now."
						return
					if(usr.kaku2>=1&&usr.kills>=250)
						usr<<"You have become the practiced killer but you are still nothing to me."
						usr.kaku3=1
						sleep(30)
						usr<<"There you go you should receive a bigger boost now."
						return
					else
						usr<<"You have not killed enough."
						return
				else
					usr<<"Lair leave now before I kill you."

mob/npc/Gai
	name = "Gai"
	icon = 'Npc Gai.dmi'
	PK = 0
	NPC = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Gai"
			switch(input("Well hi there and welcome to the Lee house.",text) in list ("I'm Lee too.","Weirdo"))
				if("I'm Lee too.")
					if(usr.Lee||usr.Clan=="Non Clan")
						usr<<"Hello."
						if(usr.Lee&&usr.Mtai >=500&&usr.Mhealth >= 5000)
							usr << "<B><font color = blue>You learned lotus!!"
							usr.verbs += new /mob/Lee/verb/Lotus()
						else
							usr<<"You need 500 Tai and 5000 Stam to start your hidden Lotus training."
						if(usr.Lee&&usr.Mtai >=50)
							usr << "<B><font color = blue>You learned Konoha Renpuu!!"
							usr.verbs += new /mob/Lee/verb/KonohaReppu()
						else
							usr<<"Go hit a log."
						if(usr.Lee&&usr.Mtai >=250)
							usr << "<B><font color = blue>You learned Konoha Senpuu!!"
							usr.verbs += new /mob/Lee/verb/KonohaSenpuu()
						else
							usr<<"You need 250 Tai to learn Konoha Senpuu."
						if(usr.Lee&&usr.Mtai >=500)
							usr << "<B><font color = blue>You learned Omote Renge!!"
							usr.verbs += new /mob/Lee/verb/OmoteRenge()
						else
							usr<<"You need 500 Tai to learn Omote Renge."
						if(usr.Lee&&usr.Mtai >=750)
							usr << "<B><font color = blue>You learned Ura Renge!!"
							usr.verbs += new /mob/Lee/verb/UraRenge()
						else
							usr<<"You need 750 Tai to learn Ura Renge."
						if(usr.Lee&&usr.Mtai>=1000)
							usr << "<B><font color = blue>You learned Konoha Genkuriki Senpuu!"
							usr.verbs += new /mob/Lee/verb/KonohaGenkurikiSenpuu()
						else
							usr<<"You need 1000 Tai to learn Konoha Genkuriki Senpuu."
						if(usr.Lee&&usr.Mtai>=1000)
							usr << "<B><font color = blue>You learned Dyanmic Entry!"
							usr.verbs += new /mob/Lee/verb/Dynamic()
						else
							usr<<"You need 1000 Tai to learn Dynamic Entry."
					else
						usr<<"It's not nice to lie you know."
				if("Weirdo")
					usr<<"Thats not nice ready for your punishment?"
					usr<<"PIMP SLAP!!"
					usr.health-=500000000

mob/npc/Tenten
	name = "Ten Ten"
	icon = 'Npc Ten Ten.dmi'
	PK = 0
	NPC = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Tenten"
			switch(input("Well hi there cutie welcome to the Tenten house.",text) in list ("I'm Tenten too.","Well hello yourself cutie."))
				if("I'm Tenten too.")
					if(usr.Clan=="Tenten")
						usr<<"Hello."
						if(usr.Tenten&&usr.shurikenskill >=250)
							usr << "<B><font color = blue>You learned Homing Shuriken!!"
							usr.verbs += new /mob/Tenten/verb/HomingShuriken()
						else
							usr<<"You need 250 Shuriken skill to learn Homing Shuriken."
						if(usr.Tenten&&usr.kunaiskill >=250)
							usr << "<B><font color = blue>You learned Homing Kunai!!"
							usr.verbs += new /mob/Tenten/verb/HomingKunai()
						else
							usr<<"You need 250 Kunai skill to learn Homing Kunai."
						if(usr.Tenten&&usr.shurikenskill >=1000)
							usr << "<B><font color = blue>You learned Homing Windmill!!"
							usr.verbs += new /mob/Tenten/verb/HomingWindmill()
						else
							usr<<"You need 1000 Shuriken skill to learn Homing Windmill."
						if(usr.Tenten&&usr.shurikenskill>=500)
							usr<<"<b><font color=blue>You learned Kage Shuriken."
							usr.verbs += new /mob/shurikenmove/verb/KageShuriken()
						else
							usr<<"You need 500 Shuriken skill to learn Kage Shuriken."
						if(usr.Tenten&&usr.kunaiskill >=500)
							usr << "<B><font color = blue>You Learned Kage Kunai!!"
							usr.verbs += new /mob/shurikenmove/verb/KageKunai()
						else
							usr<<"You need 500 Kunai Skill to learn Kage Kunai."
						if(usr.Tenten&&usr.shurikenskill >=1000&&usr.kunaiskill >=1000)
							usr << "<B><font color = blue>You learned Focus!!"
							usr.verbs += new /mob/Tenten/verb/Focus()
						else
							usr<<"You need 1000 Shuriken skill and Kunai skill to learn Focus."

					else
						usr<<"Don't lie to ME!"
				if("Well hello yourself cutie.")
					usr<<"Thank you wonderfull."

mob/npc/Yamato
	name = "Yamato"
	icon = 'Npc Yamato.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Yamato"
			switch(input("Are you in the Yamato clan?","Yamato") in list ("Yes","No"))
				if("Yes")
					if(usr.Yamato)
						usr<<"Lets Start."
						if(usr.Mnin >=100&&usr.Mgen >= 500)
							usr << "<B><font color = blue>You learned Wood Prison!"
							usr.verbs += new /mob/Yamato/verb/WoodCage()
						if(usr.Mnin >=100&&usr.Mgen >= 500)
							usr << "<B><font color = blue>You learned Wood Shield!"
							usr.verbs += new /mob/Yamato/verb/WoodShield()
						if(usr.Mnin >=100&&usr.Mgen >= 500)
							usr << "<B><font color = blue>You learned Wood CLone!"
							usr.verbs += new /obj/bunshins/WoodClone/verb/WoodClone()
						if(usr.Mnin >=100&&usr.Mgen >= 500)
							usr << "<B><font color = blue>You learned Mokuton Hijutsu Jukai Kotan!"
							usr.verbs += new /mob/Yamato/verb/JukaiKotan()
						if(usr.Mnin >=100&&usr.Mgen >= 500)
							usr << "<B><font color = blue>You learned Log Throw!"
							usr.verbs += new /mob/Yamato/verb/LogThrow()
						if(usr.Mnin >=100&&usr.Mgen >= 500)
							usr << "<B><font color = blue>You learned Mokuton Jukai Heki!"
							usr.verbs += new /mob/Yamato/verb/WoodW()
					else
						usr<<"Your Not Apart Of My Clan!"
				if("No")
					usr<<"You should leave now!"

mob/npc/Shino
	name = "Shino"
	icon = 'Npc Shino.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Shino"
			switch(input("What Do you want pathetic fool?",text) in list ("I'm Aburame too!"))
				if("I'm Aburame too!")
					if(usr.Aburame)
						usr<<"Hello."
						if(usr.Aburame&&usr.Mnin >=100)
							usr << "<B><font color = blue>You learned Kekkai Konchuu Bunshin No Jutsu!"
							usr.verbs += new /obj/bunshins/KekkaiKonchuuBunshinnoJutsu/verb/KekkaiKonchuuBunshinnoJutsu()
						else
							usr<<"You need 100 Nin to learn Kekkai Konchuu Bunshin No Jutsu"
						if(usr.Aburame&&usr.Mnin >=250)
							usr << "<B><font color = blue>You learned your Konchuu options!"
							usr.verbs += new /mob/Aburame/verb/summonkonchuu()
							usr.verbs += new /mob/Aburame/verb/Placekonchuu()
							usr.verbs += new /mob/Aburame/verb/DestroyKonchuu()
						else
							usr<<"You need 250 Nin to learn how to use Konchuu."
						if(usr.Aburame&&usr.Mnin >=300)
							usr<<"<b><font color=blue>You learned Konchuu Armor."
							usr.verbs += new /mob/Aburame/verb/BugArmor()
						else
							usr<<"You need 300 Nin to learn Konchuu Armor."
						if(usr.Aburame&&usr.Mnin >=300)
							usr<<"<b><font color=blue>You learned Mushi Kame No Jutsu."
							usr.verbs += new /mob/Aburame/verb/Mushi()
						else
							usr<<"You need 300 Nin to learn Mushi Kame No Jutsu."
						if(usr.Aburame&&usr.Mnin >=500&&usr.Mgen>=200)
							usr << "<B><font color = blue>You learned how to explode your Konchuu!"
							usr.verbs += new /mob/Aburame/verb/ExplodeKonchuu()
						else
							usr<<"You need 500 Nin to learn how to Explode Konchuus"
						if(usr.Aburame&&usr.Mnin >=750)
							usr<<"<b><font color=blue>You learn Konchuu Kyuu"
							usr.verbs += new /mob/Aburame/verb/KonchuuKyuu()
						else
							usr<<"You need 750 Nin to learn Konchuu Kyuu."
						if(usr.Aburame&&usr.Mnin>=1000)
							usr<<"<b><font color=blue>You learn Konchuu Sousou."
							usr.verbs += new /mob/Aburame/verb/KonchuuSousou()
						else
							usr<<"You need 1000 Nin to learn Konchuu Sousou"

					else
						usr<<"Lier leave the Aburame house now!"


mob/npc/Temari
	name = "Temari"
	icon = 'NPC Temari.dmi'
	PK = 0
	NPC = 1
	health = 99999999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Temari"
			switch(input("Well hi,I will show you how to weild the power of Wind.",text) in list ("Ok","No Thanks"))
				if("Ok")
					if(usr.Clan=="Temari")
						usr<<"Lets Start."
						if(usr.Temari&&usr.Mnin >=500&&usr.Mhealth >= 5000)
							usr << "<B><font color = blue>You learned WindStorm!!"
							usr.verbs += new /mob/Temari/verb/WindStorm()
						else
							usr<<"You need 500 nin and 5000 Stam to start your hidden Wind training."
						if(usr.Temari&&usr.Mtai >=50)
							usr << "<B><font color = blue>You learned WindStrike!!"
							usr.verbs += new /mob/Temari/verb/WindStrike()
						else
							usr<<"Hit a log noob."
						if(usr.Temari&&usr.Mtai >=250)
							usr << "<B><font color = blue>You learned Fan Summoning!!"
							usr.verbs += new /mob/flight/verb/TemariFan()
						else
							usr<<"You need 250 Tai to learn Fan Summoning."
						if(usr.Temari&&usr.Mnin>=2000)
							usr<< "<B><font color = blue>You learned Wind Style: Quick Beheading Dance!!"
							usr.verbs += new /mob/Temari/verb/QuickBeheading()
						else
							usr<<"You need 2000 Nin to learn Wind Style: Quick Beheading Dance"
						if(usr.Temari&&usr.Mnin>=2000)
							usr<< "<B><font color = blue>You learned Wind Style: Great Task of the Dragon!!"
							usr.verbs += new /mob/Temari/verb/Wind_GTD()
						else
							usr<<"You need 2000 Nin to learn Wind Style: Great Task of the Dragon"
						if(usr.Temari&&usr.Mnin>=2000)
							usr << "<B><font color = blue>You learned Wind Style: Sickle Wind Shield!!"
							usr.verbs += new /mob/Temari/verb/Sickle_S()
						else
							usr<<"You need 2000 Nin to learn Wind Style: Sickle Wind Shield"
						if(usr.Temari&&usr.Mnin>=2000)
							usr << "<B><font color = blue>You learned Wind Style: Daikamaitachi No Jutsu!!"
							usr.verbs += new /mob/Temari/verb/WD()
						else
							usr<<"You need 2000 Nin to learn Wind Style: Daikamaitachi No Jutsu"
						if(usr.Temari&&usr.Mnin>=2000)
							usr << "<B><font color = blue>You Obtained a Fan!!"
							usr.contents += new /obj/Fan
						else
							usr<<"You need 5000 Nin to obtain a Fan."
					else
						usr<<"You arent good enough to Learn my jutsus."
				if("....")
					usr<<"You should leave now!"
					usr.health-=1000

mob/npc/Squads
	name="Jounin Squad assignments."
	icon='Banker.dmi'
	PK = 0
	NPC = 1
	health=999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category="Squads"
			switch(input("Do you wish to form a squad of genin and train them to become Chúnin?",text) in list ("Yes","No"))
				if("Yes")
					if(usr.squads==0)
						if(usr.rank=="Student"||usr.rank=="Genin"||usr.rank=="Chúnin")
							usr<<"Your not allowed a squad."
							return
						else
							alert("If you change the font size YOUR BANNED!& if u use HTML remember to use the </font> at the end!")
							var/squad = input("","Squad") as text|null
							usr.squads=1
							usr.squad="[(squad)]"
							usr.verbs += typesof(/mob/Squads/verb)
					else
						usr<<"Your already in a squad."
				else
					usr<<"If you feel you are not ready it is best."

mob/npc/Genin
	name="Iruka"
	icon='Npc Iruka.dmi'
	PK = 0
	NPC = 1
	health=999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(2)
			set category="Iruka"
			switch(input("Henge Me 5 Times After Taking The Genin Written Exam, Ok?","Iruka",text) in list ("Ok","No"))
				if("Ok")
					if(usr.rank=="Student"&&usr.hengeN >= 5&&usr.tested)
						world<<"[usr] is now a genin"
						usr.rank = "Genin"
						usr.cap = Gcap
						var/obj/Headband/B = new/obj/Headband
						B.loc = usr
					else
						if(usr.rank=="Genin"||usr.rank=="Chúnin"||usr.rank=="Jounin"||usr.rank=="Hunter"||usr.rank=="Anbu")
							usr<<"You are a higher rank then Genin."
						else
							if(!usr.tested)
								usr<<"You Must Take The Written Test To Become Genin"
							else
								if(usr.hengeN <=4)
									usr<<"You Must Have 5 Henge Uses Before You Become Genin"
				if("No")
					usr<<"Ok then."

mob/npc/Anko
	name="Anko"
	icon='Npc Anko.dmi'
	PK = 0
	NPC = 1
	health=999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(3)
			set category="Forest Exit"
			switch(input("Giving up already are we?",text) in list ("Yes","No"))
				if("Yes")
					for(var/obj/heavenscroll/H in usr.contents)
						del(H)
					for(var/obj/earthscroll/S in usr.contents)
						del(S)
					usr.deathforest=0
					usr.earthscroll=0
					usr.heavenscroll=0
					usr.health = 0
					usr.Death(usr)
					usr<<"You quit the exam!"
				else
					usr<<"That's the spirit."


mob/npc/Pawn
	name = "Pawn Shop"
	icon = 'Npc Pawn.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999
	Click()if(src in oview(2))Sell()
	proc
		Sell()
			switch(input("Would You Like To Sell Your Items To Me?","Choose") in list ("Yes","No"))
				if("Yes")
					var/varPackList = list()
					if(locate(/obj) in usr:contents)
						for(var/obj/O in usr:contents)
							varPackList += O
					else
						usr << "[usr:name] has an empty pack!"
						return
					var/varPackItem = input("Pick an item from [usr:name]'s pack","Sell") in varPackList + list("Cancel")
					if(varPackItem != "Cancel")
						if(alert("Would you like to Sell [varPackItem:name]?","[varPackItem:name]","Yes","No") == "Yes")
							if(varPackItem:equipped)return
							if(varPackItem:price<=0)
								usr<<"This Item Isn't Sellable"
								return
							else
								usr.Yen += rand(25000000,50000000)/varPackItem:price
								del(varPackItem)
						else usr<<"Nevermind Then"
				else usr<<"Alright Until Next Time"

mob/npc/Jailman
	name = "Jailman"
	icon = 'Jailman.dmi'
	PK = 0
	NPC = 1
	health = 99999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Talk"
			usr << "What are you in for?... Dont talk much do you?!"

mob/npc/Hayate
	name = "Hayate"
	icon = 'Npc Hayate.dmi'
	PK = 0
	NPC = 1
	health = 99999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Talk"
			switch(input("Ready to fight?",text) in list ("Yes","No"))
				if("Yes")
					usr.talk2h=1
					usr<<"Please choose a door"
				if("No")
					usr.talk2h=0
					usr<<"Then return with your opponent when you're ready"
				else
					return

mob/npc/Hayate2
	name = "Hayate."
	icon = 'Npc Hayate.dmi'
	PK = 0
	NPC = 1
	health = 99999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Talk"
			switch(input("Welcome are you ready for the survival exam?",text) in list ("Yes","No"))
				if("Yes")
					usr.loc = locate(50,33,13)
					(usr) << sound(null)
					usr<<'Survival examination.mid'
				if("No")
					usr<<"Then return when your ready to fight noob!"
				else
					return

mob/npc/Onishimo
	name = "Onishimo"
	icon = 'Npc Onishimo.dmi'
	PK = 0
	NPC = 1
	health = 999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Talk"
			switch(input("Welcome to the Chúnin Exam, Survival Exam, are you here to watch the fights?") in list ("Yes","No"))
				if("Yes")
					usr. <<"Enjoy the Fights"
				if("No")
					usr. <<"Oh, well if you change your mind please come back."
				else
					return

/*----------------------------------------------------------------*/

						//Helper\\

/*----------------------------------------------------------------*/

mob/Helpers
	HelperV1
		name = "Helper"
		icon = 'Helpers.dmi'
		icon_state = "H1"
		PK = 0
		NPC = 1
		health = 9999999999999999999999999999999999999999999999
		verb
			Owner()
				set src in oview(2)
				set name = "How Do I Contact The Owner?"
				set category = "Help"
				usr.ContactOwner()
			Cntmove()
				set src in oview(2)
				set name = "I Cant Move???"
				set category = "Help"
				usr.CantMove()
			Cntspeak()
				set src in oview(2)
				set name = "I Cant Speak???"
				set category = "Help"
				usr.CantSpeak()
			Infoquick()
				set src in oview(2)
				set name = "How to play?"
				set category = "Help"
				usr.Howtoplay()
			GeninExam()
				set src in oview(2)
				set name = "How to take Genin Exam?"
				set category = "Help"
				usr.GeninExam101()
			Icon()
				set src in oview(2)
				set name = "Icon bugged..."
				set category = "Help"
				usr.Iconbugged()
			BlackScreen()
				set src in oview(2)
				set name = "Black Screen..."
				set category = "Help"
				usr.BlackScreen101()
			Deposit()
				set src in oview(2)
				set category = "Help"
				var/heh = input("You have [usr.Yen] yen. How much do you wish to deposit?","Deposit") as num
				if (heh < 0)
					alert("Don't try cheating me!","Bank Keeper")
					return()
				if (heh > usr.Yen)
					alert("You don't have that much yen!", "Deposit")
					return()
				usr << "You deposit [heh] gold."
				usr.Yen -= heh
				usr.goldinbank += heh
				return()
			Withdraw()
				set src in oview(2)
				set category = "Help"
				var/heh = input("You have [usr.goldinbank] gold in the bank. How much do you wish to withdraw?","Withdraw") as num
				if (heh < 0)
					alert("You can't withdraw less then 1 yen!","Bank Keeper")
					return()
				if (heh > usr.goldinbank)
					alert("You don't have that much yen in the bank!", "Bank Keeper")
					return()
				usr << "You withdraw [heh] gold."
				usr.Yen += heh
				usr.goldinbank -= heh
				return()
			CheckBalance()
				set src in oview(2)
				set category = "Help"
				set name = "Check Balance"
				usr << "You have [usr.goldinbank] yen in the bank."

/*----------------------------------------------------------------*/

						//Helper Proc\\

/*----------------------------------------------------------------*/
mob/proc/CantSpeak()
	usr.say_delay=0
	usr.muted=0
mob/proc/ContactOwner()
	var/ContactOwner = {"
		<html>
		<STYLE>BODY {font-family: Tahoma;font-size: 14px}</STYLE>
		<body bgcolor=#000000 text=#DDDDDD>
		<strong>You can contact the owner at Thefuryrain@hotmail.com<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(ContactOwner,"window=credittext,size=300x200,can_resize=0,can_minimize=0")
mob/proc/CantMove()
	var/CantMove = {"
		<html>
		<STYLE>BODY {font-family: Tahoma;font-size: 14px}</STYLE>
		<body bgcolor=#000000 text=#DDDDDD>
		<strong>The moving keys are now changed to W,S,A,D on your keyboard, and yes you can now use the arrow keys aswell. Press O for OOC, Press L for Say.<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(CantMove,"window=credittext,size=300x200,can_resize=0,can_minimize=0")
mob/proc/Howtoplay()
	var/Howtoplay = {"
		<html>
		<STYLE>BODY {font-family: Tahoma;font-size: 14px}</STYLE>
		<body bgcolor=#000000 text=#DDDDDD>
		<strong>Some quick instructions for you for how playing this game! First, you make a character by clicking on New when you log into the game. Then select a clan of your choice, a good clan to begin with is Kaguya or Uchiha, either clan is good though. Then choose your desired base icon, village and hair! Hit some logs and train using Bunshin No Jutsu and Kage Bunshin No Jutsu and walk on the water for training too! Tip; take the Genin Exam then buy Kage Bunshin Scroll<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(Howtoplay,"window=credittext,size=300x200,can_resize=0,can_minimize=0")
mob/proc/GeninExam101()
	var/GeninExam101 = {"
		<html>
		<STYLE>BODY {font-family: Tahoma;font-size: 14px}</STYLE>
		<body bgcolor=#000000 text=#DDDDDD>
		<strong>Go to one of the academy's. There is one in each Hidden Village. Then go to a desk and stand right for the test. When the Game text says the Genin Exam started, you go to Commands and click Take test! If you failed the test after you did it,retake it if it wont let you relog and try again<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(GeninExam101,"window=credittext,size=300x200,can_resize=0,can_minimize=0")
mob/proc/Iconbugged()
	var/Iconbugged = {"
		<html>
		<STYLE>BODY {font-family: Tahoma;font-size: 14px}</STYLE>
		<body bgcolor=#000000 text=#DDDDDD>
		<strong>If your Icon is bugged, you can go to 'Commands' tab and click HELP. Then you go to 'Fix me!' and then you click what Skin color you had<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(Iconbugged,"window=credittext,size=300x200,can_resize=0,can_minimize=0")
mob/proc/BlackScreen101()
	var/BlackScreen101 = {"
		<html>
		<STYLE>BODY {font-family: Tahoma;font-size: 14px}</STYLE>
		<body bgcolor=#000000 text=#DDDDDD>
		<strong>If your Screen is totally black, you can go to 'Commands' tab and click HELP. Then you go to 'Black Screen!' and it should be fixed.<br>
		<p>
		<br>
		</body>
		</html>
		"}
	usr << browse(BlackScreen101,"window=credittext,size=300x200,can_resize=0,can_minimize=0")

/*----------------------------------------------------------------*/

						//Ino\\

/*----------------------------------------------------------------*/

mob/npc/Ino
	name = "Ino"
	icon = 'Npc Ino.dmi'
	PK = 0
	NPC = 1
	health = 9999999999999999999999999999999999999999999999999999
	verb
		Talk()
			set src in oview(1)
			set category = "Talk"
			switch(input("Isn't Sasuke just the dreamiest?",text) in list ("Yes","No"))
				if("Yes")
					usr. <<"Back off he is mine!!"
				if("No")
					usr. <<"What do you know!!"