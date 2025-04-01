//--------------------------------------------------------------------------------\\

								//Curse Seals\\

//--------------------------------------------------------------------------------\\

obj
	SusanooCom
		icon = 'Susanoo COM.dmi'
	CCSusanoo
		icon = 'Susanoo CC.dmi'
	Arrow_S
		icon = 'SArrow.dmi'
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*1.6)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Susanoo's Arrow for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
obj
	Reaper
		icon ='Reaper.dmi'
		layer = DEMON_LAYER
		pixel_y=32
obj
	Naraka
		icon = 'Naraka.dmi'
		layer = DEMON_LAYER
		pixel_y=32

obj
	CCRokubi
		icon = 'Rokubi CC.dmi'
		layer = DEMON_LAYER
	TCRokubi
		icon = 'Rokubi TC.dmi'
		layer = DEMON_LAYER
		pixel_y=32
	CLRokubi
		icon = 'Rokubi CL.dmi'
		layer = DEMON_LAYER
		pixel_x=-32
	CRRokubi
		icon = 'Rokubi CR.dmi'
		layer = DEMON_LAYER
		pixel_x=32
	TLRokubi
		icon = 'Rokubi TL.dmi'
		layer = DEMON_LAYER
		pixel_y=32
		pixel_x=-32
	TRRokubi
		icon = 'Rokubi TR.dmi'
		layer = DEMON_LAYER
		pixel_y=32
		pixel_x=32


mob/proc/Rokubi()
	if(src.Rokubi)
		var/list/O = src.overlays.Copy()
		src.overlays = src.overlays.Remove(src.overlays)
		src.overlays+=/obj/CCRokubi
		src.overlays+=/obj/TCRokubi
		src.overlays+=/obj/CLRokubi
		src.overlays+=/obj/CRRokubi
		src.overlays+=/obj/TLRokubi
		src.overlays+=/obj/TRRokubi
		usr.verbs += new /mob/Bijuu/verb/BijuuB()
		src.health=src.Mhealth*1.5
		src.chakra=src.Mchakra*1.1
		src.tai = usr.Mtai*1.5
		src.gen = usr.Mgen*1.5
		src.nin = usr.Mnin*1.5
		src.incs = 1
		sleep(600)
		if(src.chakra>=src.Mchakra)
			src.chakra=src.Mchakra
		src.incs = 0
		src.overlays-=/obj/CCRokubi
		src.overlays-=/obj/TCRokubi
		src.overlays-=/obj/CLRokubi
		src.overlays-=/obj/CRRokubi
		src.overlays-=/obj/TLRokubi
		src.overlays-=/obj/TRRokubi
		usr.verbs -= new /mob/Bijuu/verb/BijuuB()
		src.overlays = O.Copy()
		src.nin=src.Mnin
		src.tai=src.Mtai
		src.gen=src.Mgen
		return
obj
	CCIchibi
		icon = 'Ichibi CC.dmi'
		layer = DEMON_LAYER
	TCIchibi
		icon = 'Ichibi TC.dmi'
		layer = DEMON_LAYER
		pixel_y=32
	CLIchibi
		icon = 'Ichibi CL.dmi'
		layer = DEMON_LAYER
		pixel_x=-32
	CRIchibi
		icon = 'Ichibi CR.dmi'
		layer = DEMON_LAYER
		pixel_x=32
	TLIchibi
		icon = 'Ichibi TL.dmi'
		layer = DEMON_LAYER
		pixel_y=32
		pixel_x=-32
	TRIchibi
		icon = 'Ichibi TR.dmi'
		layer = DEMON_LAYER
		pixel_y=32
		pixel_x=32


mob/proc/Ichibi()
	if(src.Ichibi)
		var/list/O = src.overlays.Copy()
		src.overlays = src.overlays.Remove(src.overlays)
		src.overlays+=/obj/CCIchibi
		src.overlays+=/obj/TCIchibi
		src.overlays+=/obj/CLIchibi
		src.overlays+=/obj/CRIchibi
		src.overlays+=/obj/TLIchibi
		src.overlays+=/obj/TRIchibi
		usr.verbs += new /mob/Bijuu/verb/BijuuB()
		src.health=src.Mhealth*1.5
		src.chakra=src.Mchakra*1.1
		src.tai = usr.Mtai*1.5
		src.gen = usr.Mgen*1.5
		src.nin = usr.Mnin*1.5
		src.incs = 1
		sleep(600)
		if(src.chakra>=src.Mchakra)
			src.chakra=src.Mchakra
		src.incs = 0
		src.overlays-=/obj/CCIchibi
		src.overlays-=/obj/TCIchibi
		src.overlays-=/obj/CLIchibi
		src.overlays-=/obj/CRIchibi
		src.overlays-=/obj/TLIchibi
		src.overlays-=/obj/TRIchibi
		usr.verbs -= new /mob/Bijuu/verb/BijuuB()
		src.overlays = O.Copy()
		src.nin=src.Mnin
		src.tai=src.Mtai
		src.gen=src.Mgen
		return

obj
	CCSanbi
		icon = 'Sanbi CC.dmi'
		layer = DEMON_LAYER
	TCSanbi
		icon = 'Sanbi TC.dmi'
		layer = DEMON_LAYER
		pixel_y=32
	CLSanbi
		icon = 'Sanbi CL.dmi'
		layer = DEMON_LAYER
		pixel_x=-32
	CRSanbi
		icon = 'Sanbi CR.dmi'
		layer = DEMON_LAYER
		pixel_x=32
	TLSanbi
		icon = 'Sanbi TL.dmi'
		layer = DEMON_LAYER
		pixel_y=32
		pixel_x=-32
	TRSanbi
		icon = 'Sanbi TR.dmi'
		layer = DEMON_LAYER
		pixel_y=32
		pixel_x=32


mob/proc/Sanbi()
	if(src.Sanbi)
		var/list/O = src.overlays.Copy()
		src.overlays = src.overlays.Remove(src.overlays)
		src.overlays+=/obj/CCSanbi
		src.overlays+=/obj/TCSanbi
		src.overlays+=/obj/CLSanbi
		src.overlays+=/obj/CRSanbi
		src.overlays+=/obj/TLSanbi
		src.overlays+=/obj/TRSanbi
		usr.verbs += new /mob/Bijuu/verb/BijuuB()
		src.health=src.Mhealth*1.5
		src.chakra=src.Mchakra*1.3
		src.tai = usr.Mtai*1.5
		src.gen = usr.Mgen*1.5
		src.nin = usr.Mnin*1.5
		src.incs = 1
		sleep(600)
		if(src.chakra>=src.Mchakra)
			src.chakra=src.Mchakra
		src.incs = 0
		src.overlays-=/obj/CCSanbi
		src.overlays-=/obj/TCSanbi
		src.overlays-=/obj/CLSanbi
		src.overlays-=/obj/CRSanbi
		src.overlays-=/obj/TLSanbi
		src.overlays-=/obj/TRSanbi
		usr.verbs -= new /mob/Bijuu/verb/BijuuB()
		src.overlays = O.Copy()
		src.nin=src.Mnin
		src.tai=src.Mtai
		src.gen=src.Mgen
		return

obj
	CCNibi
		icon = 'Nibi CC.dmi'
		layer = DEMON_LAYER
	TCNibi
		icon = 'Nibi TC.dmi'
		layer = DEMON_LAYER
		pixel_y=32
	TLNibi
		icon = 'Nibi TL.dmi'
		layer = DEMON_LAYER
		pixel_y=32
		pixel_x=-32
	TRNibi
		icon = 'Nibi TR.dmi'
		layer = DEMON_LAYER
		pixel_y=32
		pixel_x=32


mob/proc/Nibi()
	if(src.Nibi)
		var/list/O = src.overlays.Copy()
		src.overlays = src.overlays.Remove(src.overlays)
		src.overlays+=/obj/CCNibi
		src.overlays+=/obj/TCNibi
		src.overlays+=/obj/TLNibi
		src.overlays+=/obj/TRNibi
		usr.verbs += new /mob/Bijuu/verb/BijuuB()
		src.health=src.Mhealth*1.5
		src.chakra=src.Mchakra*1.2
		src.tai = usr.Mtai*1.5
		src.gen = usr.Mgen*1.5
		src.nin = usr.Mnin*1.5
		src.incs = 1
		sleep(600)
		if(src.chakra>=src.Mchakra)
			src.chakra=src.Mchakra
		src.incs = 0
		src.overlays-=/obj/CCNibi
		src.overlays-=/obj/TCNibi
		src.overlays-=/obj/TLNibi
		src.overlays-=/obj/TRNibi
		usr.verbs -= new /mob/Bijuu/verb/BijuuB()
		src.overlays = O.Copy()
		src.nin=src.Mnin
		src.tai=src.Mtai
		src.gen=src.Mgen
		return


obj
	CCGobi
		icon = 'Gobi CC.dmi'
		layer = DEMON_LAYER
	TCGobi
		icon = 'Gobi TC.dmi'
		layer = DEMON_LAYER
		pixel_y=32
	CLGobi
		icon = 'Gobi CL.dmi'
		layer = DEMON_LAYER
		pixel_x=-32
	CRGobi
		icon = 'Gobi CR.dmi'
		layer = DEMON_LAYER
		pixel_x=32
	TLGobi
		icon = 'Gobi TL.dmi'
		layer = DEMON_LAYER
		pixel_y=32
		pixel_x=-32
	TRGobi
		icon = 'Gobi TR.dmi'
		layer = DEMON_LAYER
		pixel_y=32
		pixel_x=32


mob/proc/Gobi()
	if(src.Gobi)
		var/list/O = src.overlays.Copy()
		src.overlays = src.overlays.Remove(src.overlays)
		src.overlays+=/obj/CCGobi
		src.overlays+=/obj/TCGobi
		src.overlays+=/obj/CLGobi
		src.overlays+=/obj/CRGobi
		src.overlays+=/obj/TLGobi
		src.overlays+=/obj/TRGobi
		usr.verbs += new /mob/Bijuu/verb/BijuuB()
		src.health=src.Mhealth*1.5
		src.chakra=src.Mchakra*1.5
		src.tai = usr.Mtai*1.5
		src.gen = usr.Mgen*1.5
		src.nin = usr.Mnin*1.5
		src.incs = 1
		sleep(600)
		if(src.chakra>=src.Mchakra)
			src.chakra=src.Mchakra
		src.incs = 0
		src.overlays-=/obj/CCGobi
		src.overlays-=/obj/TCGobi
		src.overlays-=/obj/CLGobi
		src.overlays-=/obj/CRGobi
		src.overlays-=/obj/TLGobi
		src.overlays-=/obj/TRGobi
		usr.verbs -= new /mob/Bijuu/verb/BijuuB()
		src.overlays = O.Copy()
		src.nin=src.Mnin
		src.tai=src.Mtai
		src.gen=src.Mgen
		return

obj
	KyuubiAuraT
		icon = 'Kyuubi Aura Top.dmi'
		pixel_y=32
obj
	CKyuubi4Tails
		icon = 'Kyuubi 4 Tails.dmi'
		icon_state = "C"
	TKyuubi4Tails
		icon = 'Kyuubi 4 Tails.dmi'
		icon_state = "T"
		pixel_y=32
	BLKyuubi4Tails
		icon = 'Kyuubi 4 Tails.dmi'
		icon_state = "BL"
		pixel_x=-32
	BRKyuubi4Tails
		icon = 'Kyuubi 4 Tails.dmi'
		icon_state = "BR"
		pixel_x=32
	TLKyuubi4Tails
		icon = 'Kyuubi 4 Tails.dmi'
		icon_state = "TL"
		pixel_y=32
		pixel_x=-32
	TRKyuubi4Tails
		icon = 'Kyuubi 4 Tails.dmi'
		icon_state = "TR"
		pixel_y=32
		pixel_x=32

var/const
	DEMON_LAYER = MOB_LAYER+1


obj
	CCYonbi
		icon = 'Yonbi CC.dmi'
		layer = DEMON_LAYER
	TCYonbi
		icon = 'Yonbi TC.dmi'
		layer = DEMON_LAYER
		pixel_y=32
	CLYonbi
		icon = 'Yonbi CL.dmi'
		layer = DEMON_LAYER
		pixel_x=-32
	CRYonbi
		icon = 'Yonbi CR.dmi'
		layer = DEMON_LAYER
		pixel_x=32
	TLYonbi
		icon = 'Yonbi TL.dmi'
		layer = DEMON_LAYER
		pixel_y=32
		pixel_x=-32
	TRYonbi
		icon = 'Yonbi TR.dmi'
		layer = DEMON_LAYER
		pixel_y=32
		pixel_x=32


mob/proc/Yonbi()
	if(src.Yonbi)
		var/list/O = src.overlays.Copy()
		src.overlays = src.overlays.Remove(src.overlays)
		src.overlays+=/obj/CCYonbi
		src.overlays+=/obj/TCYonbi
		src.overlays+=/obj/CLYonbi
		src.overlays+=/obj/CRYonbi
		src.overlays+=/obj/TLYonbi
		src.overlays+=/obj/TRYonbi
		usr.verbs += new /mob/Bijuu/verb/BijuuB()
		src.health=src.Mhealth*1.5
		src.chakra=src.Mchakra*1.4
		src.tai = usr.Mtai*1.5
		src.gen = usr.Mgen*1.5
		src.nin = usr.Mnin*1.5
		src.incs = 1
		sleep(600)
		if(src.chakra>=src.Mchakra)
			src.chakra=src.Mchakra
		src.incs = 0
		src.overlays-=/obj/CCYonbi
		src.overlays-=/obj/TCYonbi
		src.overlays-=/obj/CLYonbi
		src.overlays-=/obj/CRYonbi
		src.overlays-=/obj/TLYonbi
		src.overlays-=/obj/TRYonbi
		usr.verbs -= new /mob/Bijuu/verb/BijuuB()
		src.overlays = O.Copy()
		src.nin=src.Mnin
		src.tai=src.Mtai
		src.gen=src.Mgen
		return

mob/proc/Kyuubi()
	if(src.kyuu3>=1)
		src.InK3=1
		src.overlays+='sharingan.dmi'
		src.overlays+='kyuubi.dmi'
		src.overlays+='Kyuubi Aura.dmi'
		src.overlays+=/obj/KyuubiAuraT
		src.overlays+=/obj/CKyuubi4Tails
		src.overlays+=/obj/TKyuubi4Tails
		src.overlays+=/obj/BLKyuubi4Tails
		src.overlays+=/obj/BRKyuubi4Tails
		src.overlays+=/obj/TLKyuubi4Tails
		src.overlays+=/obj/TRKyuubi4Tails
		src.health=src.Mhealth*1.5
		src.chakra=src.Mchakra*1.9
		src.tai = usr.Mtai*1.5
		src.gen = usr.Mgen*1.5
		src.nin = usr.Mnin*1.5
		src.verbs += typesof(/mob/Kyuubi3/verb/)
		src.verbs += new /mob/Bijuu/verb/BijuuB()
		src.inkyuubi=1
		src.KASS = 0
		sleep(600)
		Off()
		return
	if(src.kyuu2>=1)
		src.overlays+='sharingan.dmi'
		src.overlays+='kyuubi.dmi'
		src.health=src.Mhealth/1.3
		src.chakra=src.Mchakra*1.2
		src.tai = usr.Mtai*1.3
		src.gen = usr.Mgen*1.3
		src.nin = usr.Mnin*1.3
		src.inkyuubi=1
		sleep(600)
		Off()
		return
	else
		src.overlays+='sharingan.dmi'
		src.overlays+='kyuubi.dmi'
		src.health=src.Mhealth/1.1
		src.chakra=src.Mchakra
		src.tai = usr.Mtai*1.1
		src.gen = usr.Mgen*1.1
		src.nin = usr.Mnin*1.1
		src.inkyuubi=1
		sleep(600)
		Off()
		return

mob/proc/Off()
	if(src.inkyuubi)
		if(src.chakra>=src.Mchakra)
			src.chakra=src.Mchakra
		src<<"Your power rush comes to an end"
		src.overlays-='kyuubi.dmi'
		src.overlays-='sharingan.dmi'
		src.overlays-='Kyuubi Aura.dmi'
		src.overlays-='Kyuubi Aura Shield.dmi'
		src.verbs -= typesof(/mob/Kyuubi3/verb/)
		src.verbs -= new /mob/Bijuu/verb/BijuuB()
		src.overlays-=/obj/KyuubiAuraT
		src.overlays-=/obj/CKyuubi4Tails
		src.overlays-=/obj/TKyuubi4Tails
		src.overlays-=/obj/BLKyuubi4Tails
		src.overlays-=/obj/BRKyuubi4Tails
		src.overlays-=/obj/TLKyuubi4Tails
		src.overlays-=/obj/TRKyuubi4Tails
		src.nin=src.Mnin
		src.tai=src.Mtai
		src.gen=src.Mgen
		src.inkyuubi = 0
		src.Frozen = 0
		src.firing = 0
		src.InKASS = 0
		src.KAS_ONOFF = 0

/*mob/proc/Kyuubi()
	if(src.kyuu3>=1)
		src.InK3=1
		src.overlays+='sharingan.dmi'
		src.overlays+='kyuubi.dmi'
		src.overlays+='Kyuubi Aura.dmi'
		src.overlays+=/obj/KyuubiAuraT
		src.overlays+=/obj/CKyuubi4Tails
		src.overlays+=/obj/TKyuubi4Tails
		src.overlays+=/obj/BLKyuubi4Tails
		src.overlays+=/obj/BRKyuubi4Tails
		src.overlays+=/obj/TLKyuubi4Tails
		src.overlays+=/obj/TRKyuubi4Tails
		src.health=src.Mhealth/2
		src.chakra=src.Mchakra*1.2
		src.tai = usr.Mtai*1.5
		src.gen = usr.Mgen*1.5
		src.nin = usr.Mnin*1.5
		src.verbs += typesof(/mob/Kyuubi3/verb/)
		src.inkyuubi=1
		src.KASS = 0
		sleep(600)
		src.verbs -= typesof(/mob/Kyuubi3/verb/)
		if(src.inkyuubi)
			src<<"Your power rush comes to an end"
			src.overlays-='kyuubi.dmi'
			src.overlays-='sharingan.dmi'
			src.overlays-='Kyuubi Aura.dmi'
			src.overlays-='Kyuubi Aura Shield.dmi'
			src.overlays-=/obj/KyuubiAuraT
			src.overlays-=/obj/CKyuubi4Tails
			src.overlays-=/obj/TKyuubi4Tails
			src.overlays-=/obj/BLKyuubi4Tails
			src.overlays-=/obj/BRKyuubi4Tails
			src.overlays-=/obj/TLKyuubi4Tails
			src.overlays-=/obj/TRKyuubi4Tails
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.inkyuubi = 0
			src.Frozen = 0
			src.firing = 0
			src.InKASS = 0
			src.KAS_ONOFF = 0
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
		else
			return
	if(src.kyuu2>=1)
		src.overlays+='sharingan.dmi'
		src.overlays+='kyuubi.dmi'
		src.health=src.Mhealth/1.3
		src.chakra=src.Mchakra*1.2
		src.tai = usr.Mtai*1.3
		src.gen = usr.Mgen*1.3
		src.nin = usr.Mnin*1.3
		src.inkyuubi=1
		sleep(600)
		if(src.inkyuubi)
			src<<"Your power rush comes to an end"
			src.overlays-='kyuubi.dmi'
			src.overlays-='sharingan.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.inkyuubi = 0
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
		else
			return

	else
		src.overlays+='sharingan.dmi'
		src.overlays+='kyuubi.dmi'
		src.health=src.Mhealth/1.1
		src.chakra=src.Mchakra
		src.tai = usr.Mtai*1.1
		src.gen = usr.Mgen*1.1
		src.nin = usr.Mnin*1.1
		src.inkyuubi=1
		sleep(600)
		if(src.inkyuubi)
			src<<"Your power rush comes to an end"
			src.overlays-='kyuubi.dmi'
			src.overlays-='sharingan.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.inkyuubi = 0
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
		else
			return*/

mob/proc/Cursed_Seal()
	if(src.CS3>=1)
		src.InCS3=1
		src.overlays+='cs.dmi'
		src.overlays+='cs2.dmi'
		src.overlays+='cs3.dmi'
		if(usr.icon=='Human Icon Tan.dmi'||usr.icon=='Human Icon TanF.dmi')
			src.overlays+=/obj/CurseSeal3_TC
			src.overlays+=/obj/CurseSeal3_TT
			src.overlays+=/obj/CurseSeal3_TBL
			src.overlays+=/obj/CurseSeal3_TBR
			src.overlays+=/obj/CurseSeal3_TTL
			src.overlays+=/obj/CurseSeal3_TTR
		if(usr.icon=='Human Icon White.dmi'||usr.icon=='Human Icon WhiteF.dmi')
			src.overlays+=/obj/CurseSeal3_WC
			src.overlays+=/obj/CurseSeal3_WT
			src.overlays+=/obj/CurseSeal3_WBL
			src.overlays+=/obj/CurseSeal3_WBR
			src.overlays+=/obj/CurseSeal3_WTL
			src.overlays+=/obj/CurseSeal3_WTR
		if(usr.icon=='Human Icon Black.dmi'||usr.icon=='Human Icon BlackF.dmi')
			src.overlays+=/obj/CurseSeal3_BC
			src.overlays+=/obj/CurseSeal3_BT
			src.overlays+=/obj/CurseSeal3_BBL
			src.overlays+=/obj/CurseSeal3_BBR
			src.overlays+=/obj/CurseSeal3_BTL
			src.overlays+=/obj/CurseSeal3_BTR
		if(usr.icon=='Human Icon Blue.dmi'||usr.icon=='Human Icon BlueF.dmi')
			src.overlays+=/obj/CurseSeal3_BlC
			src.overlays+=/obj/CurseSeal3_BlT
			src.overlays+=/obj/CurseSeal3_BlBL
			src.overlays+=/obj/CurseSeal3_BlBR
			src.overlays+=/obj/CurseSeal3_BlTL
			src.overlays+=/obj/CurseSeal3_BlTR
		if(usr.icon=='Human Icon Red.dmi'||usr.icon=='Human Icon RedF.dmi')
			src.overlays+=/obj/CurseSeal3_RC
			src.overlays+=/obj/CurseSeal3_RT
			src.overlays+=/obj/CurseSeal3_RBL
			src.overlays+=/obj/CurseSeal3_RBR
			src.overlays+=/obj/CurseSeal3_RTL
			src.overlays+=/obj/CurseSeal3_RTR
		if(usr.icon=='Human Icon Vamp.dmi'||usr.icon=='Human Icon VampF.dmi')
			src.overlays+=/obj/CurseSeal3_VC
			src.overlays+=/obj/CurseSeal3_VT
			src.overlays+=/obj/CurseSeal3_VBL
			src.overlays+=/obj/CurseSeal3_VBR
			src.overlays+=/obj/CurseSeal3_VTL
			src.overlays+=/obj/CurseSeal3_VTR
		if(usr.icon=='Human Icon Yellow.dmi'||usr.icon=='Human Icon YellowF.dmi')
			src.overlays+=/obj/CurseSeal3_YC
			src.overlays+=/obj/CurseSeal3_YT
			src.overlays+=/obj/CurseSeal3_YBL
			src.overlays+=/obj/CurseSeal3_YBR
			src.overlays+=/obj/CurseSeal3_YTL
			src.overlays+=/obj/CurseSeal3_YTR
		src.health=src.Mhealth/2
		src.chakra=src.Mchakra*1.15
		src.tai = usr.Mtai*1.5
		src.gen = usr.Mgen*1.5
		src.nin = usr.Mnin*1.5
		src.verbs += typesof(/mob/Curse_Seal3/verb/)
		src.incs=1
		src.CSWS = 0
		sleep(600)
		src.verbs -= typesof(/mob/Curse_Seal3/verb/)
		if(src.incs)
			src<<"Your power rush comes to an end"
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
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.incs = 0
			src.Frozen = 0
			src.firing = 0
			src.InCSWS = 0
			src.CSWS_ONOFF = 0
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
		else
			return
	if(src.CS2>=1)
		src.overlays+='cs.dmi'
		src.overlays+='cs2.dmi'
		src.health=src.Mhealth/1.3
		src.chakra=src.Mchakra*1.1
		src.tai = usr.Mtai*1.3
		src.gen = usr.Mgen*1.3
		src.nin = usr.Mnin*1.3
		src.incs=1
		sleep(600)
		if(src.incs)
			src<<"Your power rush comes to an end"
			src.overlays-='cs.dmi'
			src.overlays-='cs2.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.incs=0
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

	else
		src.overlays+='cs.dmi'
		src.health=src.Mhealth/1.1
		src.chakra=src.Mchakra
		src.tai = usr.Mtai*1.1
		src.gen = usr.Mgen*1.1
		src.nin = usr.Mnin*1.1
		src.incs=1
		src.InCS3=0
		src.CSWS=0
		sleep(600)
		if(src.incs)
			src<<"Your power rush comes to an end"
			src.overlays-='cs.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.incs=0
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
		else
			return


mob/proc/Kaku()
	if(src.kaku3>=1)
		src.overlays+='kakuA.dmi'
		src.overlays+='kaku3.dmi'
		src.health=src.Mhealth/2
		src.chakra=src.Mchakra*1.3
		src.tai = usr.Mtai*1.5
		src.gen = usr.Mgen*1.5
		src.nin = usr.Mnin*1.5
		src.inkaku=1
		sleep(600)
		if(src.inkaku)
			src<<"Your power rush comes to an end"
			src.overlays-='kaku3.dmi'
			src.overlays-='kakuA.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.inkaku=0
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
		else
			return
	if(src.kaku2>=1)
		src.overlays+='kaku2.dmi'
		src.overlays+='kakuA.dmi'
		src.health=src.Mhealth/1.3
		src.chakra=src.Mchakra*1.1
		src.tai = usr.Mtai*1.3
		src.gen = usr.Mgen*1.3
		src.nin = usr.Mnin*1.3
		src.inkaku=1
		sleep(600)
		if(src.inkaku)
			src<<"Your power rush comes to an end"
			src.overlays-='kaku2.dmi'
			src.overlays-='kakuA.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.inkaku=0
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
				return
		else
			return

	else
		src.overlays+='kaku.dmi'
		src.overlays-='kakuA.dmi'
		src.health=src.Mhealth/1.1
		src.chakra=src.Mchakra
		src.tai = usr.Mtai*1.1
		src.gen = usr.Mgen*1.1
		src.nin = usr.Mnin*1.1
		src.inkaku=1
		sleep(600)
		if(src.inkaku)
			src<<"Your power rush comes to an end"
			src.overlays-='kaku.dmi'
			src.overlays-='kakuA.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.inkaku=0
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
		else
			return


//--------------------------------------------------------------------------------\\

								//Demons\\

//--------------------------------------------------------------------------------\\

mob/proc/Dcat()
	if(src.Dcatm ==1)
		src << "You begin to get angry..!"
		sleep(5)
		src << "The seal inside of you is broken, releasing unbelievable power!"
		view() << "[src] unlocks the demon cat inside of them!"
		src.overlays+='demoncat.dmi'
		src.overlays+='sharingan.dmi'
		src.health=src.Mhealth/1.3
		src.chakra=src.Mchakra*1.3
		src.tai = usr.Mtai*1.3
		src.gen = usr.Mgen*1.3
		src.nin = usr.Mnin*1.3
		src.inDcatm=1
		sleep(600)
		if(src.inDcatm)
			src<<"Your power rush comes to an end"
			src.overlays-='demoncat.dmi'
			src.overlays-='sharingan.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.inDcatm=0
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
		else
			return

mob/proc/Ddog()
	if(src.Ddogm == 1)
		usr << "You begin to get angry..!"
		sleep(5)
		usr << "The seal inside of you is broken, releasing unbelievable power!"
		view() << "[usr] unlocks the demon dog inside of them!"
		src.overlays+='demondog.dmi'
		src.overlays+='byakugan.dmi'
		src.health=src.Mhealth/1.4
		src.chakra=src.Mchakra*1.4
		src.tai = usr.Mtai*1.4
		src.gen = usr.Mgen*1.4
		src.nin = usr.Mnin*1.4
		src.inDdogm=1
		src.sealtime=0
		sleep(600)
		if(src.inDdogm)
			src<<"Your power rush comes to an end"
			src.overlays-='demondog.dmi'
			src.overlays-='byakugan.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.inDdogm=0
			src.sealtime = 10
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
		else
			return
mob/proc/Dturtle()
	if(src.Dturm == 1)
		usr << "You begin to get angry..!"
		sleep(5)
		usr << "The seal inside of you is broken, releasing unbelievable power!"
		view() << "[usr] unlocks the demon turtle inside of them!"
		src.overlays+='demonturtle.dmi'
		src.overlays+='sharingan.dmi'
		src.health=src.Mhealth/1.3
		src.chakra=src.Mchakra*1.3
		src.tai = usr.Mtai*1.3
		src.gen = usr.Mgen*1.3
		src.nin = usr.Mnin*1.3
		src.inDturm=1
		sleep(600)
		if(src.inDturm)
			src<<"Your power rush comes to an end"
			src.overlays-='demonturtle.dmi'
			src.overlays-='sharingan.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.inDturm=0
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
		else
			return
mob/proc/Dsnake()
	if(src.Dsnam == 1)
		usr << "You begin to get angry..!"
		sleep(5)
		usr << "The seal inside of you is broken, releasing unbelievable power!"
		view() << "[usr] unlocks the demon snake inside of them!"
		src.overlays+='demonsnake.dmi'
		src.overlays+='sharingan.dmi'
		src.health=src.Mhealth/1.5
		src.chakra=src.Mchakra*1.5
		src.tai = usr.Mtai*1.5
		src.gen = usr.Mgen*1.5
		src.nin = usr.Mnin*1.5
		src.inDsnam=1
		sleep(600)
		if(src.inDcatm)
			src<<"Your power rush comes to an end"
			src.overlays-='demoncat.dmi'
			src.overlays-='sharingan.dmi'
			src.nin=src.Mnin
			src.tai=src.Mtai
			src.gen=src.Mgen
			src.inDsnam=0
			if(src.chakra>=src.Mchakra)
				src.chakra=src.Mchakra
		else
			return
















































//--------------------------------------------------------------------------------\\

								//Demons\\

//--------------------------------------------------------------------------------\\

/*ob/proc/Dcat()
	if(usr.Dcatm == 1)
		usr << "You begin to get angry..!"
		sleep(5)
		usr << "The seal inside of you is broken, releasing unbelievable power!"
		view() << "[src] unlocks the demon cat inside of them!"
		usr.tai = src.tai*1.8
		usr.nin = src.nin*1.3
		usr.gen = src.gen*1.2
		usr.overlays += 'demoncat.dmi'
		usr.overlays += 'sharingan.dmi'
		usr.incs = 1
		Tire
		sleep(200)
		if(usr.incs == 1)
			usr << "The strain of the demon tires your body."
			usr.health -= 75000
			usr.Death(usr)
		if(usr.health <= 0)
			usr.Death()
			usr << "The power of your inner demon fades away."
			usr.overlays -= 'demoncat.dmi'
			usr.overlays -= 'sharingan.dmi'
			usr.overlays -= 'demoncat.dmi'
			usr.overlays -= 'sharingan.dmi'
			usr.incs = 0
			usr.Move_Delay = usr.Savedspeed
				return
		else
			goto Tire
mob/proc/Ddog()
	if(usr.Ddogm == 1)
		usr << "You begin to get angry..!"
		sleep(5)
		usr << "The seal inside of you is broken, releasing unbelievable power!"
		view() << "[usr] unlocks the demon dog inside of them!"
		usr.tai = usr.tai*1.4
		usr.nin = usr.nin*1.4
		usr.gen = usr.gen*1.4
		usr.sealtime = 1
		usr << "Your speed with seals have become almost instantaneous!"
		usr.overlays += 'demondog.dmi'
		usr.overlays += 'byakugan.dmi'
		usr.incs = 1
		Tire
		sleep(200)
		if(usr.incs == 1)
			usr << "The strain of the demon tires your body."
			usr.health -= 75000
			usr.Death(usr)
		if(usr.health <= 0)
			usr.Death()
			usr << "The power of your inner demon fades away."
			usr.overlays -= 'demondog.dmi'
			usr.overlays -= 'byakugan.dmi'
			usr.overlays -= 'demondog.dmi'
			usr.overlays -= 'byakugan.dmi'
			usr.sealtime = 11
			usr.incs = 0
			usr.Move_Delay = usr.Savedspeed
				return
		else
			goto Tire
mob/proc/Dturtle()
	if(usr.Dturm == 1)
		usr << "You begin to get angry..!"
		sleep(5)
		usr << "The seal inside of you is broken, releasing unbelievable power!"
		view() << "[usr] unlocks the demon turtle inside of them!"
		usr.tai = usr.tai*1.2
		usr.nin = usr.nin*1.3
		usr.gen = usr.gen*1.8
		usr.overlays += 'demonturtle.dmi'
		usr.incs = 1
		Tire
		sleep(200)
		if(usr.incs == 1)
			usr << "The strain of the demon tires your body."
			usr.health -= 75000
			usr.Death(usr)
		if(usr.health <= 0)
			usr.Death()
			usr << "The power of your inner demon fades away."
			usr.overlays -= 'demonturtle.dmi'
			usr.overlays -= 'demonturtle.dmi'
			usr.incs = 0
			usr.Move_Delay = usr.Savedspeed
				return
		else
			goto Tire
mob/proc/Dsnake()
	if(usr.Dsnkm == 1)
		usr << "You begin to get angry..!"
		sleep(5)
		usr << "The seal inside of you is broken, releasing unbelievable power!"
		view() << "[usr] unlocks the demon snake inside of them!"
		usr.tai = usr.tai*1.4
		usr.nin = usr.nin*1.8
		usr.gen = usr.gen*1.4
		usr.overlays += 'demonsnake.dmi'
		usr.overlays += 'demonsnake1.dmi'
		usr.incs = 1
		Tire
		sleep(200)
		if(usr.incs == 1)
			usr << "The strain of the demon tires your body."
			usr.health -= 75000
			usr.Death(usr)
		if(usr.health <= 0)
			usr.Death()
			usr << "The power of your inner demon fades away."
			usr.overlays -= 'demonsnake.dmi'
			usr.overlays -= 'sharingan.dmi'
			usr.overlays -= 'demonsnake.dmi'
			usr.overlays -= 'demonsnake1.dmi'
			usr.overlays -= 'sharingan.dmi'
			usr.incs = 0
			usr.Move_Delay = usr.Savedspeed
				return
		else
			goto Tire*/