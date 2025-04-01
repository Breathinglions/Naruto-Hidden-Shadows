mob
	var{L1=0;L2=0;L3=0;L4=0;L5=0;L6=0;L7=0;L8=0;L9=0;L10=0;L11=0;L12=0;L13=0;L14=0;L15=0;L16=0;L17=0;L18=0;L19=0;L20=0;L21=0;L22=0;L23=0;L24=0;L25=0;L26=0;L27=0;L28=0;L29=0;L30=0;L31=0;L32=0;L33=0;L34=0;L35=0;L36=0;L37=0;L38=0;L39=0;L40=0;L41=0;L42=0;L43=0;L44=0;L45=0;L46=0;L47=0;L48=0;L49=0;L50=0;L51=0;L52=0;L53=0;L54=0;L55=0;L56=0;L57=0;L71=0;L72=0;L73=0;L74=0}
	proc
		Skills()
			src.KIS()
			src.SE()
			src.KH()
			src.FA()
			src.KE()
			src.KY()
			src.SS()
			src.SJ()
			src.SN()
			src.KK()
			src.MJ()
			src.MS()
			src.MN()
			src.MA()
			src.MH()
			src.FJ()
			src.SD()
			src.SO()
			src.RN()
			src.SB()
			src.JS()
			src.S()
			src.SU()
			src.SK()
			src.SI()
			src.SQ()
			src.KO()
			src.KD()
			src.KG()
			src.KW()
			src.MM()
			src.DY()
			src.DU()
			src.DD()
			src.DS()
			src.DK()
			src.RUJ()
			src.RJU()
			src.UJR()
			src.JUR()
			src.JRU()
			src.KDN()
			src.DKN()
			src.NDK()
			src.NKD()
			src.DDD()
			src.ZKN()
			src.NKZ()
			src.KZN()
			src.KNZ()
			src.ZZZ()
			src.CHI()
			src.RAN()
			src.AAA()
			src.BBB()
			src.CCC()
			src.DDD1()
			src.EEE()
			src.FFF()
			src.GGG()
			src.HHH()
			src.LV1TAY()
			src.LV2TAY()
			src.LV3TAY()
			src.LV4TAY()
		SE()
			if(!src.L2)
				if(src.rank == "Student")
					return
				if(src.Mtai >=200)
					src << "<B><font color = blue>You've learned Sennen Goroshi!"
					src.verbs += new /mob/pain/verb/SennenGoroshi()
					src.L2 = 1
			else ..()
		KIS()
			if(!src.L1)
				if(src.rank == "Student")
					return
				if(src.Hoshigaki&&src.Mtai >= 5000)
					src <<"<B><font color = blue>You've learned Single Suiton Same No Jutsu!"
					src << "<B><font color = blue>You've learned Suirou No Jutsu!"
					src<<"<B><font color = blue>You've learned Suiton Bunshin No Jutsu!"
					src<<"<B><font color = blue>You've learned Suiton Same No Jutsu!"
					src<<"<B><font color = blue>You've learned Suiton Goshokuzame!"
					src<<"<B><font color = blue>You've learned Swordsmen Style: Samehada!"
					src.verbs += new /mob/Hoshigaki/verb/SharkAttack
					src.verbs += new /mob/suiton/verb/SuirouNoJutsu
					src.verbs += new /obj/bunshins/SuitonBunshinnojutsu/verb/SuitonBunshinNoJutsu
					src.verbs += new /mob/Hoshigaki/verb/Sharkz
					src.verbs += new /mob/Hoshigaki/verb/Shark
					src.verbs += new /mob/Kenjutsu/verb/Samehada
		KH()
			if(!src.L3)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Leaf")
					src << "<B><font color = blue>You've learned Katon Housenka!"
					src.verbs += new /mob/katon/verb/KatonHousenka()
					src.L3 = 1
				if(src.Mnin >=1000&&src.Village == "Grass")
					src << "<B><font color = blue>You've learned Katon Housenka!"
					src.verbs += new /mob/katon/verb/KatonHousenka()
					src.L3 = 1
			else ..()
		FA()
			if(!src.L4)
				if(src.rank == "Student")
					return
				if(src.Mgen >=2500&&src.Village == "Leaf")
					src << "<B><font color = blue>You've learned Katon No Jutsu!"
					src.verbs += new /mob/katon/verb/FireArmor()
					src.L4 = 1
				if(src.Mgen >=2500&&src.Village == "Grass")
					src << "<B><font color = blue>You've learned Katon No Jutsu!"
					src.verbs += new /mob/katon/verb/FireArmor()
					src.L4 = 1
			else ..()
		KE()
			if(!src.L5)
				if(src.rank == "Student")
					return
				if(src.Mnin >=5000&&src.Village == "Grass")
					src << "<B><font color = blue>You've learned Katon Karyuu Endan!!"
					src.verbs += new /mob/katon/verb/KatonKaryuuEndan()
					src.L5 = 1
			else ..()
		KY()
			if(!src.L6)
				if(src.rank == "Student")
					return
				if(src.Mnin >=10000&&src.Village == "Leaf")
					src << "<B><font color = blue>You've learned acquired Katon Ryuuka No Jutsu!!"
					src.verbs += new /mob/katon/verb/KatonRyuukanoJutsu()
					src.L6 = 1
			else ..()
		SS()
			if(!src.L7)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "X")
					src << "<B><font color = blue>You've learned Suiton Suiryuudan no Jutsu!!"
					src.verbs += new /mob/Suiton/verb/SuitonSuiryuudannoJutsu()
					src.L7 = 1
			else ..()
		SJ()
			if(!src.L8)
				if(src.rank == "Student")
					return
				if(src.Mnin >=2500&&src.Village == "X")
					src << "<B><font color = blue>You've learned Suirou No Jutsu!!"
					src.verbs += new /mob/suiton/verb/SuirouNoJutsu()
					src.L8 = 1
			else ..()
		SN()
			if(!src.L9)
				if(src.rank == "Student")
					return
				if(src.Mgen >=5000&&src.Village == "X")
					src << "<B><font color = blue>You've learned Suiton Suikoudan no Jutsu!!"
					src.verbs += new /mob/Suiton/verb/SuitonSuikoudannoJutsu()
					src.L9 = 1
			else ..()
		KK()
			if(!src.L10)
				if(src.rank == "Student")
					return
				if(src.Mnin >=5800&&src.Village == "Mist")
					src<<"<b><font color=blue>You've learned Kirigakure!"
					src.verbs += new /mob/mist/verb/KirigakurenoJutsu()
					src.L10 = 1
			else ..()
		MJ()
			if(!src.L11)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Mist")
					src<<"<b><font color=blue>You've learned Mist No Jutsu!"
					src.verbs += new /mob/mist/verb/MistArmor()
					src.L11 = 1
			else ..()
		MS()
			if(!src.L12)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Snow")
					src << "<B><font color = blue>You've learned Makyou Suiryuudan no Jutsu!!"
					src.verbs += new /mob/Makyou/verb/MakyouSuiryuudannoJutsu()
					src.L12 = 1
			else ..()
		MN()
			if(!src.L13)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Snow")
					src << "<B><font color = blue>You've learned Makyou Suikoudan no Jutsu!!"
					src.verbs += new /mob/Makyou/verb/MakyouSuikoudannoJutsu()
					src.L13 = 1
			else ..()
		MA()
			if(!src.L14)
				if(src.rank == "Student")
					return
				if(src.Mgen >=2500&&src.Village == "Snow")
					src<<"<b><font color=blue>You've learned Makyou Armor!"
					src.verbs += new /mob/ice/verb/IceArmor()
					src.L14 = 1
			else ..()
		MH()
			if(!src.L15)
				if(src.rank == "Student")
					return
				if(src.Mnin >=5000&&src.Village == "Snow")
					src << "<B><font color = blue>You've learned Makyou Hyoushou!"
					src.verbs += new /mob/Haku/verb/MakyouHyoushou()
					src.L15 = 1
			else ..()
		FJ()
			if(!src.L16)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Snow")
					src << "<B><font color = blue>You've learned Futagoza No Jutsu!!"
					src.verbs += new /mob/Juvenile_Ice/verb/FutagozaNoJutsu()
					src.L16 = 1
			else ..()
		SD()
			if(!src.L17)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Mist")
					src << "<B><font color = blue>You've learned Suiton Daibakufu no Jutsu!!"
					src.verbs += new /mob/Suiton/verb/SuitonDaibakufunoJutsu()
					src.L17 = 1
			else ..()
		SO()
			if(!src.L18)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Mist")
					src << "<B><font color = blue>You've learned Suiton Doryuudan!!"
					src.verbs += new /mob/suiton/verb/SuitonDoryuudan()
					src.L18 = 1
			else ..()
		RN()
			if(!src.L19)
				if(src.rank == "Student")
					return
				if(src.Mgen >=2500&&src.Village == "Rain")
					src << "<B><font color = blue>You've learned Rain No Jutsu!!"
					src.verbs += new /mob/suiton/verb/RainArmor()
					src.L19 = 1
			else ..()
		SB()
			if(!src.L20)
				if(src.rank == "Student")
					return
				if(src.Mnin >=5000&&src.Village == "Mist")
					src << "<B><font color = blue>You've learned Suiton Bunshin No Jutsu!!"
					src.verbs += new /obj/bunshins/SuitonBunshinnojutsu/verb/SuitonBunshinNoJutsu()
					src.L20 = 1
			else ..()
		JS()
			if(!src.L21)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Rain")
					src << "<B><font color = blue>You've learned Jouro Senban!"
					src.verbs += new /mob/rain/verb/JouroSenban()
					src.L21 = 1
			else ..()
		S()
			if(!src.L22)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Waterfall")
					src << "<B><font color = blue>You've learned Suishouha!!"
					src.verbs += new /mob/suiton/verb/Suishouha()
					src.L22 = 1
			else ..()
		SU()
			if(!src.L23)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Waterfall")
					src << "<B><font color = blue>You've learned Suiton Suishouha!!"
					src.verbs += new /mob/suiton/verb/SuitonSuishouha()
					src.L23 = 1
			else ..()
		SK()
			if(!src.L24)
				if(src.rank == "Student")
					return
				if(src.Mgen >=2500&&src.Village == "Waterfall")
					src << "<B><font color = blue>You've learned Suiton Kyuu!!"
					src.verbs += new /mob/suiton/verb/SuitonKyuu()
					src.L24 = 1
			else ..()
		SI()
			if(!src.L25)
				if(src.rank == "Student")
					return
				if(src.Mnin >=5000&&src.Village == "Waterfall")
					src << "<B><font color = blue>You've learned Suiton Sousou!!"
					src.verbs += new /mob/suiton/verb/SuitonSousou()
					src.L25 = 1
			else ..()
		SQ()
			if(!src.L26)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Waterfall")
					src<<"<b><font color=blue>You've learned Suiton No Jutsu!"
					src.verbs += new /mob/suiton/verb/SuitonArmor()
					src.L26 = 1
			else ..()
		KO()
			if(!src.L27)
				if(src.rank == "Student")
					return
				if(src.Mgen >=2500&&src.Village == "Grass")
					src << "<B><font color = blue>You've learned Katonheki!!"
					src.verbs += new /mob/katon/verb/Katonheki()
					src.L27 = 1
			else ..()
		KD()
			if(!src.L28)
				if(src.rank == "Student")
					return
				if(src.Mnin >=5000&&src.Village == "Leaf")
					src << "<B><font color = blue>You've learned Karyuudan!!"
					src.verbs += new /mob/katon/verb/Karyuudan()
					src.L28 = 1
			else ..()
		KG()
			if(!src.L29)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Grass")
					src << "<B><font color = blue>You've learned Katon Goukakyuu!!"
					src.verbs += new /mob/katon/verb/KatonGoukakyuu()
					src.L29 = 1
				if(src.Mnin >=1000&&src.Village == "Leaf")
					src << "<B><font color = blue>You've learned Katon Goukakyuu!!"
					src.verbs += new /mob/katon/verb/KatonGoukakyuu()
					src.L29 = 1
			else ..()
		KW()
			if(!src.L30)
				if(src.rank == "Student")
					return
				if(src.KawaN >= 100)
					src << "<B><font color = blue>You've learned Shushin No Jutsu!!"
					src.verbs += new /mob/jutsu/verb/ShushinNoJutsu()
					src.L30 = 1
			else ..()
		MM()
			if(!src.L31)
				if(src.rank == "Student")
					return
				if(src.hengeN >= 100)
					src << "<B><font color = blue>You've learned Mei Mei No Jutsu!!"
					src.verbs += new /mob/jutsu/verb/MieMie()
					src.L31 = 1
			else ..()
		DY()
			if(!src.L32)
				if(src.rank == "Student")
					return
				if(src.Mgen >=2500&&src.Village == "Rock")
					src << "<B><font color = blue>You've learned acquired Iwa Nadare!!"
					src.verbs += new /mob/RockAOE/verb/RockAOE()
					src.L32 = 1
			else ..()
		DU()
			if(!src.L33)
				if(src.rank == "Student")
					return
				if(src.Mnin >=5000&&src.Village == "Rock")
					src << "<B><font color = blue>You've learned acquired Doton Doryuuheki!!"
					src.verbs += new /mob/doton/verb/DotonDoryuuheki()
					src.L33 = 1
			else ..()
		DD()
			if(!src.L34)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Rock")
					src << "<B><font color = blue>You've learned acquired Doroudorno!!"
					src.verbs += new /mob/doton/verb/Doroudorno()
					src.L34 = 1
			else ..()
		DS()
			if(!src.L35)
				if(src.rank == "Student")
					return
				if(src.Mgen >=2500&&src.Village == "Rock")
					src << "<B><font color = blue>You've learned acquired Doton Ganchuro!!"
					src.verbs += new /mob/Rock/verb/Rock()
					src.L35 = 1
			else ..()
		DK()
			if(!src.L36)
				if(src.rank == "Student")
					return
				if(src.Mnin >=5000&&src.Village == "Rock")
					src << "<B><font color = blue>You've learned acquired Doton Kyuu!!"
					src.verbs += new /mob/doton/verb/DotonKyuu()
					src.L36 = 1
			else ..()
		RUJ()
			if(!src.L37)
				if(src.rank == "Student")
					return
				if(src.Mgen >=2500&&src.Village == "Cloud")
					src << "<B><font color = blue>You've learned acquired Raikyuu No Jutsu!!"
					src.verbs += new /mob/rai/verb/Raikyuu()
					src.L37 = 1
			else ..()
		RJU()
			if(!src.L38)
				if(src.rank == "Student")
					return
				if(src.Mnin >=5000&&src.Village == "Cloud")
					src << "<B><font color = blue>You've learned acquired Rai No Jutsu!!"
					src.verbs += new /mob/rai/verb/RaiArmor()
					src.L38 = 1
			else ..()
		UJR()
			if(!src.L39)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Cloud")
					src << "<B><font color = blue>You've learned acquired Rairyuu No Tatsumaki!!"
					src.verbs += new /mob/rai/verb/RairyuuNoTatsumaki()
					src.L39 = 1
			else ..()
		JUR()
			if(!src.L40)
				if(src.rank == "Student")
					return
				if(src.Mgen >=5700&&src.Village == "Cloud")
					src << "<B><font color = blue>You've learned Ikazuchi No Kiba!!"
					src.verbs += new /mob/rai/verb/Ikazuchi_No_Kiba()
					src.L40 = 1
			else ..()
		JRU()
			if(!src.L42)
				if(src.rank == "Student")
					return
				if(src.Mnin >=5000&&src.Village == "Cloud")
					src << "<B><font color = blue>You've learned Cloud Summons!!"
					src.verbs += new /mob/flight/verb/Cloud()
					src.L42 = 1
			else ..()
		KDN()
			if(!src.L43)
				if(src.rank == "Student")
					return
				if(src.Mgen >=2500&&src.Village == "Sand")
					src << "<B><font color = blue>You've learned acquired Fuuton: Kirikiri Mai!!"
					src.verbs += new /mob/Temari/verb/QuickBeheading()
					src.L43 = 1
			else ..()
		DKN()
			if(!src.L44)
				if(src.rank == "Student")
					return
				if(src.Mnin >=5000&&src.Village == "Sand")
					src << "<B><font color = blue>You've learned acquired Flight!!"
					src.verbs += new /mob/flight/verb/Fly()
					src.L44 = 1
			else ..()
		NDK()
			if(!src.L45)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Sand")
					src << "<B><font color = blue>You've learned Ninpou Kamaitachi!!"
					src.verbs += new /mob/fuuton/verb/NinpouKamaitachi()
					src.L45 = 1
			else ..()
		NKD()
			if(!src.L46)
				if(src.rank == "Student")
					return
				if(src.Mgen >=5700&&src.Village == "Sand")
					src << "<B><font color = blue>You've learned acquired Fuuton: Renkuudan No Jutsu!!"
					src.verbs += new /mob/fuuton/verb/FuutonRenkuudan()
					src.L46 = 1
			else ..()
		DDD()
			if(!src.L47)
				if(src.rank == "Student")
					return
				if(src.Mnin >=5000&&src.Village == "Sand")
					src << "<B><font color = blue>You've learned acquired Fuuton: Daitoppa No Jutsu!!"
					src.verbs += new /mob/fuuton/verb/Fuuton_Daitoppa()
					src.L47 = 1
			else ..()
		ZKN()
			if(!src.L43)
				if(src.rank == "Student")
					return
				if(src.Mgen >=2500&&src.Village == "Sound")
					src << "<B><font color = blue>You've learned Zankuuha!!"
					src.verbs += new /mob/sound/verb/Zankuuha()
					src.L43 = 1
			else ..()
		NKZ()
			if(!src.L44)
				if(src.rank == "Student")
					return
				if(src.Mnin >=5000&&src.Village == "Sound")
					src << "<B><font color = blue>You've learned Sen'eijashu!!"
					src.verbs += new /mob/sound/verb/Seneijashu()
					src.L44 = 1
			else ..()
		KZN()
			if(!src.L45)
				if(src.rank == "Student")
					return
				if(src.Mnin >=1000&&src.Village == "Sound")
					src << "<B><font color = blue>You've learned Zan No Jutsu!!"
					src.verbs += new /mob/sound/verb/ZanArmor()
					src.L45 = 1
			else ..()
		KNZ()
			if(!src.L46)
				if(src.rank == "Student")
					return
				if(src.Mgen >=5700&&src.Village == "Sound")
					src << "<B><font color = blue>You've learned Zankyokukuuha!!"
					src.verbs += new /mob/sound/verb/Zankyokukuuha()
					src.L46 = 1
			else ..()
		ZZZ()
			if(!src.L47)
				if(src.rank == "Student")
					return
				if(src.Mnin >=5000&&src.Village == "Sound")
					src << "<B><font color = blue>You've learned Kyoumeisen!!"
					src.verbs += new /mob/sound/verb/Kyoumeisen()
					src.L47 = 1
			else ..()
		CHI()
			if(!src.L48)
				if(src.rank == "Student")
					return
				if(src.Mnin >=3000&&src.Village == "Cloud")
					src << "<B><font color = blue>You've learned Chidori!"
					src.verbs += new /mob/jutsu/verb/Chidori()
					src.L48 = 1
			else ..()
		RAN()
			if(!src.L49)
				if(src.rank=="Student")
					return
				if(src.Clan=="Uzumaki"||src.Clan=="Jiraiya"||src.Clan=="Namikaze")
					src<<"<b><font color=blue>You've learned Rasengan!"
					src.verbs += new /mob/jutsu/verb/Rasengan()
					src.L49 = 1
			else ..()
		AAA()
			if(!src.L50)
				if(src.rank == "Missing"&&src.Village == "Akatsuki"||src.rank == "Kage")
					src << "<B><font color = blue>You've learned Sealing Jutsu: Nine Phantom Dragons!"
					src.verbs += new /mob/Akatsuki/verb/Fuin()
					src.verbs -= new /mob/Akatsuki/verb/GiveD()
					src.L50 = 1
			else ..()
		BBB()
			if(!src.L51)
				if(src.rank == "Missing"&&src.Village == "Sound Organization")
					src << "<B><font color = blue>You've learned Juinjutsu: Cursed Mark!"
					src.verbs += new /mob/SOrg/verb/Cursed()
					src.L51 = 1
			else ..()
		CCC()
			if(!src.L52)
				if(src.rank == "Kage"&&src.Village == "Leaf")
					src << "<B><font color = blue>You've learned Reaper Death Seal!"
					src << "<B><font color = blue>You've learned Yin Seal Rebirth!!"
					src.verbs += new /mob/Hokage/verb/Rebirth()
					src.verbs += new /mob/Reaper/verb/Reaper()
					src.L52=1
			else ..()
		DDD1()
			if(!src.L53)
				if(src.rank == "Kage"&&src.Village == "Cloud")
					src << "<B><font color = blue>You've learned Liger Bomb!"
					src << "<B><font color = blue>You've learned Lariat!!"
					src.verbs += new /mob/Raikage/verb/Liger()
					src.verbs += new /mob/Lariant/verb/Lariant()
					src.L53=1
			else ..()
		EEE()
			if(!src.L54)
				if(src.rank == "Kage"&&src.Village == "Rock")
					src << "<B><font color = blue>You've learned Jinton Genkai Hakuri no jutsu!!"
					src << "<B><font color = blue>You've learned Doton Chokajuugan no jutsu!!"
					src.verbs += new /mob/RockW/verb/RockW()
					src.verbs += new /mob/RockW/verb/RockW1()
					src.L54=1
			else ..()
		FFF()
			if(!src.L55)
				if(src.rank == "Kage"&&src.Village == "Mist")
					src << "<B><font color = blue>You've learned Yoton Yukai no jutsu!!"
					src << "<B><font color = blue>You've learned Fuuton Komu no jutsu!!"
					src.verbs += new /mob/Mizukage/verb/Lava()
					src.verbs += new /mob/Mizukage/verb/Lava2()
					src.L55=1
			else ..()
		GGG()
			if(!src.L56)
				if(src.rank == "Kage"&&src.Village == "Sand")
					src << "<B><font color = blue>You've learned Iron Sand!!"
					src << "<B><font color = blue>You've learned Iron Sand Imprisonment!!"
					src.verbs += new /mob/KazeK/verb/Iron()
					src.verbs += new /mob/KazeK/verb/Sand_Tsu()
					src.L56=1
			else ..()
		HHH()
			if(!src.L57)
				if(src.rank == "Anbu")
					src << "<B><font color = blue>You've learned Genjutsu Kai!!"
					src.verbs += new /mob/GRelease/verb/GenjutsuK()
					src.L57=1
			else ..()
		LV1TAY()
			if(!src.L71)
				if(src.rank == "Student")
					return
				if(src.Mnin >=2000&&src.Clan == "Tayuya")
					src <<"<B><font color=blue>You've learned Mateki Mugenonsa Single!";src.verbs += new /mob/Tayuya/verb/MatekiMugenonsa()
					src.L71 = 1
			else ..()
		LV2TAY()
			if(!src.L72)
				if(src.rank == "Student"||src.rank == "Genin")
					return
				if(src.Mnin >=4500&&src.Clan == "Tayuya")
					src <<"<B><font color=blue>You've learned Mateki Mugenonsa Multiple!!";src.verbs += new /mob/Tayuya/verb/MatekiMugenonsaMultiple()
					src.L72 = 1
			else ..()
		LV3TAY()
			if(!src.L73)
				if(src.rank == "Student"||src.rank == "Genin")
					return
				if(src.Mnin >=6000&&src.Clan == "Tayuya")
					src <<"<B><font color=blue>You've learned Slow Movement!!";src.verbs += new /mob/Tayuya/verb/Slow_Movement()
					src.L73 = 1
			else ..()
		LV4TAY()
			if(!src.L74)
				if(src.rank == "Student"||src.rank == "Genin"||src.rank == "Chúnin")
					return
				if(src.Mnin >=9000&&src.Clan == "Tayuya")
					src <<"<B><font color=blue>You've learned Mateki Mugenonsa Multiple Lvl 2!!";src.verbs += new /mob/Tayuya/verb/MatekiMugenonsaMultipleLVL2()
					src.L74 = 1
			else ..()