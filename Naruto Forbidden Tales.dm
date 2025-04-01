//sleep(600) = 1min
//slepp(100) = 10sec
//ERROR - Lost Icon
//12/3/11
//1/2/12
//3/4/12
//6/7/12
//#REF 400-59A
client
	command_text = "OOC "

var/list
	KeyBans= list()
	IPBans= list()

world
	view=10
	map_format = TILED_ICON_MAP
	New()
		..()
		var/savefile/S=new("Bans.sav")
		S["IP"] >> IPBans
		S["Key"] >> KeyBans

		if(isnull(IPBans))IPBans=new/list
		if(isnull(KeyBans))KeyBans=new/list
	Del()
		..()
		if(length(IPBans||length(KeyBans)))
			var/savefile/S=new("Bans.sav")
			S["IP"] << IPBans
			S["Key"] << KeyBans

	//	src.medals("Login")
mob/Login()
//	winset(src, "default", "is-maximized=true")
//	winset(src, null,"default.map.icon-size=32")
	if(KeyBans.Find(src.key))
		src<< "<font color = red><big>You're banned from [world.name].</font>"
		spawn() del(src)
		return
	if(IPBans.Find(src.client.address))
		src<<"<font color = red><big>You're Ipbanned from [world.name].</font>"
		spawn() del(src)
		return
	src.loc = locate(510,757,2)
	src<<"<font size=1><font color = yellow><b><u>Welcome to Shinobi: The Untold Story."
	src<<"<font size=1><font color = white><b><u>Go to the Hub,Help Form or our website at http://shinobiuntoldstory.enjin.com/home."
	src<<"<font size=3><font color = yellow><b><u> We will be moving hubs. Manny is back along with some changes and constant updates. Please have fun and join our forum to give suggestions about updates."
	if(src.client.IsByondMember()){src<<{"<font color=red><font size=2>Welcome [ckey]! Support [world.name] By Adding It To Your Favorites! <a href="http://members.byond.com/?command=add_favorite_game&game_id=55246&account_query=[src.ckey]">Favorites</a>!"}}
	if(!src.client.IsByondMember())
		world<<"<B>World: <font color=red>[src.key] joined the Server!</B>"
	else
		world<<"<B>World: <font color=red>*Byond Member* [src.key] has joined the Server!</B>"
	if(src.key == "PickleZ-24")
		src<<"<font color = red><big>You're PERM Banned from [world.name].</font>"
		del(src)
		return
	if(src.key == "")
		src<<"<font color = red><big>You're PERM Banned from [world.name].</font>"
		del(src)
		return
	if(src.key == "")
		src<<"<font color = green><big>You're PERM Banned from [world.name].</font>"
		del(src)
		return
	if(src.key == "Narutouzumaki188")
		src.verbs += typesof(/mob/Owner/verb)
		src.verbs += typesof(/mob/CoOwner/verb)
		src.verbs += typesof(/mob/Admin/verb)
		src.verbs += typesof(/mob/GM/verb)
		src.verbs += typesof(/mob/KageRanks/verb)
		src.verbs += typesof(/mob/Tourny/verb)
		src.verbs += /mob/Protection_Sphere/verb/Protection_Sphere
		src.verbs += /mob/Blazing_Hell/verb/Blazing_Hell
		src.verbs += /mob/FlashStep/verb/FlashStep
		src.verbs += /mob/Death/verb/DeathEye
		src.constantx = 1
		src.GM=1
		src.Rank2="Developer"
		world<<"<font color = green><big>The Owner [src.key] has joined the server!</font>"
	if(src.key == "")
		src.verbs += typesof(/mob/Owner/verb)
		src.verbs += typesof(/mob/CoOwner/verb)
		src.verbs += typesof(/mob/Admin/verb)
		src.verbs += typesof(/mob/GM/verb)
		src.verbs += typesof(/mob/KageRanks/verb)
		src.verbs += typesof(/mob/Tourny/verb)
		src.verbs += /mob/Protection_Sphere/verb/Protection_Sphere
		src.verbs += /mob/Blazing_Hell/verb/Blazing_Hell
		src.verbs += /mob/FlashStep/verb/FlashStep
		src.verbs += /mob/Death/verb/DeathEye
		src.constantx = 1
		src.GM=1
		src.Rank2="Head Admin"
		world<<"<font color = cyan><big>Head Admin [src.key] has joined the server!</font>"
		return
	if(src.key == "")
		src.verbs += typesof(/mob/Owner/verb)
		src.verbs += typesof(/mob/CoOwner/verb)
		src.verbs += typesof(/mob/Admin/verb)
		src.verbs += typesof(/mob/GM/verb)
		src.verbs += typesof(/mob/KageRanks/verb)
		src.verbs += typesof(/mob/Tourny/verb)
		src.GM=1
		src.Rank2="Owner"
		world<<"<font color = cyan><big>Owner [src.key] has joined the server!</font>"
		return
	if(src.key == "")
		src.verbs += typesof(/mob/Owner/verb)
		src.verbs += typesof(/mob/CoOwner/verb)
		src.verbs += typesof(/mob/Admin/verb)
		src.verbs += typesof(/mob/GM/verb)
		src.verbs += typesof(/mob/KageRanks/verb)
		src.verbs += typesof(/mob/Tourny/verb)
		src.GM=1
		src.Rank2="Co Owner"
		world<<"<font color = cyan><big>Co Owner [src.key] has joined the server!</font>"
		return
	if(src.key == "")
		src.verbs += typesof(/mob/CoOwner/verb)
		src.verbs += typesof(/mob/Admin/verb)
		src.verbs += typesof(/mob/GM/verb)
		src.verbs += typesof(/mob/Tourny/verb)
		src.GM=1
		src.Rank2="Administrator"
		world<<"<font color = cyan><big>Administrator [src.key] has joined the server!</font>"
		return
	if(src.key == "")
		src.verbs += typesof(/mob/CoOwner/verb)
		src.verbs += typesof(/mob/Admin/verb)
		src.verbs += typesof(/mob/GM/verb)
		src.verbs += typesof(/mob/Tourny/verb)
		src.GM=1
		src.Rank2="Administrator"
		world<<"<font color = cyan><big>Administrator [src.key] has joined the server!</font>"
		return
	if(src.key == "")
		src.verbs += typesof(/mob/CoOwner/verb)
		src.verbs += typesof(/mob/Admin/verb)
		src.verbs += typesof(/mob/GM/verb)
		src.verbs += typesof(/mob/Tourny/verb)
		src.GM=1
		src.Rank2="Administrator"
		world<<"<font color = cyan><big>Administrator [src.key] has joined the server!</font>"
		return
	if(src.key == "")
		src.verbs += typesof(/mob/KageRanks/verb)
		src.verbs += typesof(/mob/GM/verb)
		src.verbs += typesof(/mob/Tourny/verb)
		src.verbs += /mob/Admin/verb/Delete
		src.verbs += /mob/Admin/verb/Watch
		src.GM=1
		src.Rank2="GM"
		world<<"<font color = cyan><big>GM [src.key] has joined the server!</font>"
		return
	if(src.key == "")
		src.verbs += typesof(/mob/CoOwner/verb)
		src.verbs += typesof(/mob/Admin/verb)
		src.verbs += typesof(/mob/GM/verb)
		src.verbs += typesof(/mob/Tourny/verb)
		src.GM=1
		src.Rank2="GM"
		world<<"<font color = cyan><big>GM [src.key] has joined the server!</font>"
		return
	if(src.key == "")
		src.verbs += typesof(/mob/CoOwner/verb)
		src.verbs += typesof(/mob/Admin/verb)
		src.verbs += typesof(/mob/GM/verb)
		src.verbs += typesof(/mob/Tourny/verb)
		src.GM=1
		src.Rank2="GM"
		world<<"<font color = cyan><big>GM [src.key] has joined the server!</font>"
		return
	if(src.key == "")
		src.verbs += typesof(/mob/CoOwner/verb)
		src.verbs += typesof(/mob/Admin/verb)
		src.verbs += typesof(/mob/GM/verb)
		src.verbs += typesof(/mob/Tourny/verb)
		src.GM=1
		src.Rank2="GM"
		world<<"<font color = cyan><big>GM [src.key] has joined the server!</font>"
		return
	if(src.key == "")
		src.verbs += typesof(/mob/CoOwner/verb)
		src.verbs += typesof(/mob/Admin/verb)
		src.verbs += typesof(/mob/GM/verb)
		src.verbs += typesof(/mob/Tourny/verb)
		src.GM=1
		src.Rank2="GM"
		world<<"<font color = cyan><big>GM [src.key] has joined the server!</font>"
		return
	if(src.key == "")
		src.verbs += typesof(/mob/CoOwner/verb)
		src.verbs += typesof(/mob/Admin/verb)
		src.verbs += typesof(/mob/GM/verb)
		src.verbs += typesof(/mob/Tourny/verb)
		src.GM=1
		src.Rank2="GM"
		world<<"<font color = cyan><big>GM [src.key] has joined the server!</font>"
		return
mob
	proc
		LoginCode()
			src.MousePointer()
			players += src
			if(src.hasdog)
				for(var/mob/pet/P in src.contents)
					if(P)
						P.owner=src
						if(P.owner==src)
							P.owned=1
							P.name=src.dogname
							P.tai=src.tai
							P.Mhealth=src.Mhealth
							P.health=P.Mhealth
							P.named=1
				for(var/mob/wolf/P in src.contents)
					if(P)
						P.owner=src
						if(P.owner==src)
							P.owned=1
							P.name=src.dogname
							P.tai=src.tai
							P.Mhealth=src.Mhealth
							P.health=P.Mhealth
							P.named=1
			for(var/obj/shibari/K in world)//UnN
				if(K.owner==src)
					del(K)
			for(var/obj/shibaritrail/T in world)//UnN
				if(T.owner==src)
					del(T)
			for(var/obj/earthscroll/F in src.contents)
				del(F)
			for(var/obj/heavenscroll/F in src.contents)
				del(F)
			if(src.taiexp>=101)
				src.Tai()
				src.taiexp=0
			if(src.taiexp>=100)
				src.taiexp=0
			if(src.ninexp>=100)
				src.ninexp=0
			if(src.genexp>=100)
				src.genexp=0
			if(src.Shukkaku)
				src.CS=0
				src.bit=0
				src.Kyuubi=0
			if(src.Kyuubi)
				src.CS=0
				src.bit=0
/*			if(src.Dcatm)
				src.Dcatm=0
			if(src.Ddogm)
				src.Ddogm=0
			if(src.Dsnkm)
				src.Dsnkm=0
			if(src.Dturm)
				src.Dturm=0*/
			if(src.jailtime)
				src.jailtime()
			src.Skills()
			src.makeJounin()
			src.makeChuunin()
			src.makeHunter()
			src.tai = src.Mtai
			src.nin = src.Mnin
			src.gen = src.Mgen
			src.shurikenskill=src.Mshurikenskill
			src.kunaiskill=src.Mkunaiskill
			src.trapskill=src.Mtrapskill
			src.deaths+=1
			src.ritual=0
			src.izanagi=0
			src.Itachi=0
			src.Sasori=0
			src.Deidara=0
			src.Hidan=0
			src.Kakuzu=0
			src.kagechallenge=0
			src.kagechallenged=0
			src.incs=0
			src.doton = 0
			src.bakuretsuuse=0
			src.screwed=0
			src.freezeused = 0
			src.points =0
			src.finals=0
			src.inmission=0
			src.deathforest=0
			src.inkyuubi=0
			src.inthewar=0
			src.LGS = 0
			src.inkaku=0
			src.earthscroll=0
			src.heavenscroll=0
			src.Rainarmor=0
			src.captured=0
			src.caught=0
			src.Froze=0
			src.Frozen=0
			src.BChange = 0
			src.freezeused = 0
			src.fail = 0
			src.UShinra = 0
			src.aura=0
			src.Warmor=0
			src.incs=0
			src.counter=0
			src.KASS=0
			src.CSWS=0
			src.buoyu=0
			src.tagset=0
			src.Flight=0
			src.density = 1
			src.stop = 0
			src.resting = 0
			src.doing = 0
			src.Frozen = 0
			src.Moveing = 0
			src.firing = 0
			src.doing = 0
			src.Mountain=0
			src.onwater=0
			src.tagset=0
			src.focusing =0
			src.Kshibari = 0
			src.kubi = 0
			src.firing = 0
			src.inspike = 0
			src.Kaiten = 0
			src.Smode = 0
			src.ingat = 0
			src.gate1 = 0
			src.gate2 = 0
			src.gate3 = 0
			src.gate4 = 0
			src.gate5 = 0
			src.gate6 = 0
			src.gate7 = 0
			src.gate8 = 0
			src.Marmor = 0
			src.Larmor = 0
			src.Iarmor = 0
			src.Barmor = 0
			src.Farmor = 0
			src.Zarmor = 0
			src.SHarmor = 0
			src.sphere = 0
			src.Sarmor = 0
			src.inbaika = 0
			src.intank = 0
			src.jin=0
			src.inkage=0
			src:sight &= ~BLIND

			if(src.Mchakra>=src.Chakracap)
				src.Mchakra=src.Chakracap

			if(src.Mhealth>=src.Stamcap)
				src.Mhealth=src.Stamcap

			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra

			if(src.health>=src.Mhealth)
				src.health=src.Mhealth
			src.overlays-='Mushi.dmi'
			src.overlays-='Boom.dmi'
			src.overlays-='SandF.dmi'
			src.overlays-='KyuubiA.dmi'
			src.overlays-='HidanSkel.dmi'
			src.overlays-='JashinCircle.dmi'
			src.overlays-='Susanoo CC.dmi'
			src.overlays-='counter.dmi'
			src.overlays-='SaiJutsu Bird.dmi'
			src.overlays-='YamatoJutsu Prison.dmi'
			src.overlays-='Wprison.dmi'
			src.overlays-='kyuubi.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='kyuu.dmi'
			src.overlays-='kaku.dmi'
			src.overlays-='Rainarmor.dmi'
			src.overlays-='cloud.dmi'
			src.overlays-='flight.dmi'
			src.overlays-='WaterStrom.dmi'
			src.overlays-='rockball.dmi'
			src.overlays-='elec.dmi'
			src.overlays-='Flight.dmi'
			src.overlays-='wings.dmi'
			src.overlays-='Human Icon Tan.dmi'
			src.overlays-='Human Icon White.dmi'
			src.overlays-='Human Icon Black.dmi'
			src.overlays-='Human Icon Blue.dmi'
			src.overlays-='Human Icon Red.dmi'
			src.overlays-='Human Icon Yellow.dmi'
			src.overlays-='Human Icon Vamp.dmi'
			src.overlays-='omote.dmi'
			src.overlays-='ura.dmi'
			src.overlays-='demoncat.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='demondog.dmi'
			src.overlays-='byakugan.dmi'
			src.overlays-='demonturtle.dmi'
			src.overlays-='demonsnake.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='demonsnake1.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='kyuubi.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays -= 'HashiSage.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs3.dmi'
			src.overlays-='cs3.dmi'
			src.overlays-='cs3.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs2.dmi'
			src.overlays-='cs3.dmi'
			src.overlays-='cs3.dmi'
			src.overlays-='cs3.dmi'
			src.overlays-='BaseT Wing Shield.dmi'
			src.overlays-='Base white Wing Shield.dmi'
			src.overlays-='BaseBlack Wing Shield.dmi'
			src.overlays-='BaseBlue Wing Shield.dmi'
			src.overlays-='BaseRed Wing Shield.dmi'
			src.overlays-='BaseVamp Wing Shield.dmi'
			src.overlays-='BaseYellow Wing Shield.dmi'
			src.overlays-='Kyuubi Aura Shield.dmi'
			src.overlays-='firstgate.dmi'
			src.overlays-='secondgate.dmi'
			src.overlays-='thirdgate.dmi'
			src.overlays-='fourthgate.dmi'
			src.overlays-='fifthgate.dmi'
			src.overlays-='sixthgate.dmi'
			src.overlays-='seventhgate.dmi'
			src.overlays-='eighthgate.dmi'
			src.overlays-='Bun.dmi'
			src.overlays-='meattank.dmi'
			src.overlays-='hakkeshou.dmi'
			src.overlays-='gatsuuga.dmi'
			src.overlays-='Marmor.dmi'
			src.overlays-='mist.dmi'
			src.overlays-='Larmor.dmi'
			src.overlays-='Iarmor.dmi'
			src.overlays-='Sarmor.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='Bun.dmi'
			src.overlays-='Chidori.dmi'
			src.overlays-='Rasengan.dmi'
			src.overlays-='electricity.dmi'
			src.overlays-='byakugan.dmi'
			src.overlays-='MTS.dmi'
			src.overlays-='Zarmor.dmi'
			src.overlays-='Farmor.dmi'
			src.overlays-='BeeArmor.dmi'
			src.overlays -= /obj/Sphere
			src.overlays-=/obj/ProtectionSphere
			src.overlays-=/obj/CurseSeal3_TC
			src.overlays-=/obj/CurseSeal3_TT
			src.overlays-=/obj/CurseSeal3_TBL
			src.overlays-=/obj/CurseSeal3_TBR
			src.overlays-=/obj/CurseSeal3_TTL
			src.overlays-=/obj/CurseSeal3_TTR
			src.overlays-=/obj/CurseSeal3_WC
			src.overlays-=/obj/CurseSeal3_WT
			src.overlays-=/obj/CurseSeal3_WBL
			src.overlays-=/obj/CurseSeal3_WBR
			src.overlays-=/obj/CurseSeal3_WTL
			src.overlays-=/obj/CurseSeal3_WTR
			src.overlays-=/obj/CurseSeal3_BC
			src.overlays-=/obj/CurseSeal3_BT
			src.overlays-=/obj/CurseSeal3_BBL
			src.overlays-=/obj/CurseSeal3_BBR
			src.overlays-=/obj/CurseSeal3_BTL
			src.overlays-=/obj/CurseSeal3_BTR
			src.overlays-=/obj/CurseSeal3_BlC
			src.overlays-=/obj/CurseSeal3_BlT
			src.overlays-=/obj/CurseSeal3_BlBL
			src.overlays-=/obj/CurseSeal3_BlBR
			src.overlays-=/obj/CurseSeal3_BlTL
			src.overlays-=/obj/CurseSeal3_BlTR
			src.overlays-=/obj/CurseSeal3_RC
			src.overlays-=/obj/CurseSeal3_RT
			src.overlays-=/obj/CurseSeal3_RBL
			src.overlays-=/obj/CurseSeal3_RBR
			src.overlays-=/obj/CurseSeal3_RTL
			src.overlays-=/obj/CurseSeal3_RTR
			src.overlays-=/obj/CurseSeal3_VC
			src.overlays-=/obj/CurseSeal3_VT
			src.overlays-=/obj/CurseSeal3_VBL
			src.overlays-=/obj/CurseSeal3_VBR
			src.overlays-=/obj/CurseSeal3_VTL
			src.overlays-=/obj/CurseSeal3_VTR
			src.overlays-=/obj/CurseSeal3_YC
			src.overlays-=/obj/CurseSeal3_YT
			src.overlays-=/obj/CurseSeal3_YBL
			src.overlays-=/obj/CurseSeal3_YBR
			src.overlays-=/obj/CurseSeal3_YTL
			src.overlays-=/obj/CurseSeal3_YTR
			src.verbs -= new/mob/Tournament/verb/Enter_Tournament()
			src.verbs -= new/mob/Tournament/verb/Leave_Tournament()
			src.verbs -= /mob/Senju/verb/Tori
			src.verbs-=new /mob/tag/verb/Explode
			src.verbs-=new /mob/tag/verb/Explode
			src.verbs-=new /mob/tag/verb/Explode
			src.verbs-=new /mob/tag/verb/Explode
			src.verbs-=new /mob/tag/verb/Explode
			src.icon = src.Oicon
			src.icon_state = ""
			src.FixKunai()
			//src.FixKunai1()
			src.SaveK()
			text2file("<font face = Tahoma size = 2 color=black>([ReportDate(world.realtime)]) Name: [src] |-| Key: [key] |-| GM: [GM] |-| Ip: [src.client.address]<br>","Logins.html")

mob/Logout()
	//	src.medals("Logout")
	world<<"<font size=1><font color=yellow><B>Info:<font color = white>[src] has left the game"
	players -= src
	src.Stone = 0
	if(src.tourny)
		pleft-=1
		TTPlayers -= src
	for(var/mob/npc/Bunshin/B in world)
		if(B.original==null)
			del(B)
		if(B.original==src)
			del(B)
	for(var/mob/npc/KBunshin/K in world)
		if(K.original==src)
			del(K)
	for(var/mob/Klog/L in world)
		if(L.name==null)
			del(L)
		if(L.name==src.name)
			del(L)
	for(var/mob/Big_Puppet/P in world)
		if(P.original == src)
			del(P)
	for(var/mob/Gamabunta/P in world)
		if(P.original == src)
			del(P)
	for(var/mob/Big_Snake/P in world)
		if(P.original == src)
			del(P)
	for(var/mob/Big_Slug/P in world)
		if(P.original == src)
			del(P)
	for(var/mob/Bee/P in world)
		if(P.original == src)
			del(P)
	for(var/obj/J in world)
		if(J.Gowner==src)
			del(J)
	for(var/mob/pet/P in world)
		if(P.owner==src)
			del(P)
	for(var/mob/wolf/W in world)
		if(W.owner==src)
			del(W)
	del(src)
//	src.verbs -= typesof(/mob/Owner/verb)
//	src.verbs -= typesof(/mob/CoOwner/verb)
//	src.verbs -= typesof(/mob/Admin/verb)
//	src.verbs -= typesof(/mob/GM/verb)
//	src.verbs -= typesof(/mob/KageRanks/verb)
//	src.verbs -= typesof(/mob/Tourny/verb)
	/*if(src.Mchakra>=src.Chakracap)
		src.Mchakra=src.Chakracap
	if(src.Mhealth>=src.Stamcap )
		src.Mhealth=src.Stamcap
	if(src.ttexp>=100)
		src.ttexp=0
	if(src.nnexp>=100)
		src.nnexp=0
	if(src.ggexp>=100)
		src.ggexp=0
	if(src.chakra>=src.Mchakra)
		src.chakra=src.Mchakra
	if(src.health>=src.Mhealth)
		src.health=src.Mhealth
	src.tai = src.Mtai
	src.nin = src.Mnin
	src.gen = src.Mgen
	src.shurikenskill=src.Mshurikenskill
	src.kunaiskill=src.Mkunaiskill
	src.trapskill=src.Mtrapskill
	src.captured=0
	src.caught=0
	src.Froze=0
	src.Frozen=0
	src.LGS = 0
	src.aura=0
	src.Warmor=0
	src.inkaku=0
	src.Rainarmor=0
	src.earthscroll=0
	src.heavenscroll=0
	src.counter=0
	src.buoyu=0
	src.tagset=0
	src.Flight=0
	src.density = 1
	src.stop = 0
	src.resting = 0
	src.doing = 0
	src.Frozen = 0
	src.Moveing = 0
	src.firing = 0
	src.doing = 0
	src.BChange = 0
	src.Mountain=0
	src.onwater=0
	src.tagset=0
	src.focusing =0
	src.Kshibari = 0
	src.kubi = 0
	src.firing = 0
	src.inspike = 0
	src.Kaiten = 0
	src.ingat = 0
	src.Marmor = 0
	src.Larmor = 0
	src.Iarmor = 0
	src.Barmor = 0
	src.Farmor = 0
	src.Zarmor = 0
	src.SHarmor = 0
	src.sphere = 0
	src.Sarmor = 0
	src.inbaika = 0
	src.intank = 0
	src.gate1 = 0
	src.gate2 = 0
	src.gate3 = 0
	src.gate4 = 0
	src.gate5 = 0
	src.gate6 = 0
	src.gate7 = 0
	src.gate8 = 0
	src.doton = 0
	src.screwed=0
	src.fail = 0
	src.UShinra = 0
	src.points =0
	src.finals=0
	src.inmission=0
	src.deathforest=0
	src.inkyuubi=0
	src.puppetinuse = 0
	src.incs=0
	src.KASS=0
	src.CSWS=0
	src.inthewar=0
	src:sight &= ~BLIND
	src.verbs -= new /mob/tag/verb/Explode
	src.verbs -= new /mob/tag/verb/Explode
	src.verbs -= new /mob/tag/verb/Explode
	src.verbs -= new /mob/tag/verb/Explode
	src.verbs -= new /mob/tag/verb/Explode
	src.overlays -= 'kaku.dmi'
	src.overlays -= 'Rainarmor.dmi'
	src.overlays -= 'cloud.dmi'
	src.overlays -= 'flight.dmi'
	src.overlays -= 'WaterStrom.dmi'
	src.overlays -= 'rockball.dmi'
	src.overlays -= 'SaiJutsu Bird.dmi'
	src.overlays -= 'YamatoJutsu Prison.dmi'
	src.overlays -= 'Wprison.dmi'
	src.overlays -= 'counter.dmi'
	src.overlays -= 'Flight.dmi'
	src.overlays -= 'wings.dmi'
	src.overlays -= 'Bun.dmi'
	src.overlays -= 'meattank.dmi'
	src.overlays -= 'hakkeshou.dmi'
	src.overlays -= 'gatsuuga.dmi'
	src.overlays -= 'firstgate.dmi'
	src.overlays -= 'secondgate.dmi'
	src.overlays -= 'thirdgate.dmi'
	src.overlays -= 'fourthgate.dmi'
	src.overlays -= 'fifthgate.dmi'
	src.overlays -= 'sixthgate.dmi'
	src.overlays -= 'seventhgate.dmi'
	src.overlays -= 'eighthgate.dmi'
	src.overlays -= 'Marmor.dmi'
	src.overlays -= 'mist.dmi'
	src.overlays -= 'Larmor.dmi'
	src.overlays -= 'Iarmor.dmi'
	src.overlays -= 'BeeArmor.dmi'
	src.overlays -= 'Farmor.dmi'
	src.overlays -= 'Zarmor.dmi'
	src.overlays -= 'sharingan.dmi'
	src.overlays -= 'Bun.dmi'
	src.overlays -= 'Chidori.dmi'
	src.overlays -= 'Rasengan.dmi'
	src.overlays -= 'electricity.dmi'
	src.overlays -= 'byakugan.dmi'
	src.overlays -= 'Sarmor.dmi'
	src.overlays -= 'MTS.dmi'
	src.overlays -= 'Human Icon TanS.dmi'
	src.overlays -= 'Human Icon WhiteS.dmi'
	src.overlays -= 'Human Icon BlackS.dmi'
	src.overlays -= 'Human Icon BlueS.dmi'
	src.overlays -= 'Human Icon RedS.dmi'
	src.overlays -= 'Human Icon YellowS.dmi'
	src.overlays -= 'Human Icon VampS.dmi'
	src.overlays -= 'omote.dmi'
	src.overlays -= 'ura.dmi'
	src.overlays -= 'karasu.dmi'
	src.overlays -= 'demoncat.dmi'
	src.overlays -= 'sharingan.dmi'
	src.overlays -= 'demondog.dmi'
	src.overlays -= 'byakugan.dmi'
	src.overlays -= 'demonturtle.dmi'
	src.overlays -= 'demonsnake.dmi'
	src.overlays -= 'sharingan.dmi'
	src.overlays -= 'demonsnake1.dmi'
	src.overlays -= 'sharingan.dmi'
	src.overlays -= 'elec.dmi'
	src.overlays -= 'cs.dmi'
	src.overlays -= 'cs.dmi'
	src.overlays -= 'cs.dmi'
	src.overlays -= 'cs2.dmi'
	src.overlays -= 'cs2.dmi'
	src.overlays -= 'cs2.dmi'
	src.overlays -= 'cs3.dmi'
	src.overlays -= 'cs3.dmi'
	src.overlays -= 'cs3.dmi'
	src.overlays -= 'kyuubi.dmi'
	src.overlays -= 'sharingan.dmi'
	src.overlays -= 'BaseT Wing Shield.dmi'
	src.overlays -= 'Base white Wing Shield.dmi'
	src.overlays -= 'BaseBlack Wing Shield.dmi'
	src.overlays -= 'BaseBlue Wing Shield.dmi'
	src.overlays -= 'BaseRed Wing Shield.dmi'
	src.overlays -= 'BaseVamp Wing Shield.dmi'
	src.overlays -= 'BaseYellow Wing Shield.dmi'
	src.overlays -= 'Kyuubi Aura Shield.dmi'
	src.overlays-= 'HashiSage.dmi'
	src.overlays-=/obj/ProtectionSphere
	src.overlays-=/obj/Sphere
	src.overlays-=/obj/CurseSeal3_TC
	src.overlays-=/obj/CurseSeal3_TT
	src.overlays-=/obj/CurseSeal3_TBL
	src.overlays-=/obj/CurseSeal3_TBR
	src.overlays-=/obj/CurseSeal3_TTL
	src.overlays-=/obj/CurseSeal3_TTR
	src.overlays-=/obj/CurseSeal3_WC
	src.overlays-=/obj/CurseSeal3_WT
	src.overlays-=/obj/CurseSeal3_WBL
	src.overlays-=/obj/CurseSeal3_WBR
	src.overlays-=/obj/CurseSeal3_WTL
	src.overlays-=/obj/CurseSeal3_WTR
	src.overlays-=/obj/CurseSeal3_BC
	src.overlays-=/obj/CurseSeal3_BT
	src.overlays-=/obj/CurseSeal3_BBL
	src.overlays-=/obj/CurseSeal3_BBR
	src.overlays-=/obj/CurseSeal3_BTL
	src.overlays-=/obj/CurseSeal3_BTR
	src.overlays-=/obj/CurseSeal3_BlC
	src.overlays-=/obj/CurseSeal3_BlT
	src.overlays-=/obj/CurseSeal3_BlBL
	src.overlays-=/obj/CurseSeal3_BlBR
	src.overlays-=/obj/CurseSeal3_BlTL
	src.overlays-=/obj/CurseSeal3_BlTR
	src.overlays-=/obj/CurseSeal3_RC
	src.overlays-=/obj/CurseSeal3_RT
	src.overlays-=/obj/CurseSeal3_RBL
	src.overlays-=/obj/CurseSeal3_RBR
	src.overlays-=/obj/CurseSeal3_RTL
	src.overlays-=/obj/CurseSeal3_RTR
	src.overlays-=/obj/CurseSeal3_VC
	src.overlays-=/obj/CurseSeal3_VT
	src.overlays-=/obj/CurseSeal3_VBL
	src.overlays-=/obj/CurseSeal3_VBR
	src.overlays-=/obj/CurseSeal3_VTL
	src.overlays-=/obj/CurseSeal3_VTR
	src.overlays-=/obj/CurseSeal3_YC
	src.overlays-=/obj/CurseSeal3_YT
	src.overlays-=/obj/CurseSeal3_YBL
	src.overlays-=/obj/CurseSeal3_YBR
	src.overlays-=/obj/CurseSeal3_YT
	src.overlays-=/obj/CurseSeal3_YTR
	src.icon = src.Oicon
	src.icon_state = ""*/


/*
client
 mouse_pointer_icon = /obj/arrowcursor


obj/arrowcursor
 icon = 'cursor.dmi'

 name = ""
 layer = FLY_LAYER
 mouse_over_pointer = MOUSE_ACTIVE_POINTER
*/