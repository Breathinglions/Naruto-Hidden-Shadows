var/list/players=list()

world/New()
	status = "<font face = Tahoma size = 2 color=red>Shinobi: The Untold Story<font face = Tahoma size = 2 color=black> Version: 3.1"
world
	New()
		..()
		spawn(6000) Geninexam()
		spawn(6000) AutoRepop()
		//spawn(18000) AFKcheck()
		//spawn(72000) AutoReboot()

world
	hub = "Garruea.NarutoForbiddenTales"
	name = "Shinobi: The Untold Story"
	hub_password = "wehadsex1"
	loop_checks=0

mob
	proc
		Restore()
			if(src.cansave)
				src.health = src.Mhealth
				src.chakra = src.Mchakra
				src.tai = src.Mtai
				src.nin = src.Mnin
				src.gen = src.Mgen
				src.shurikenskill = src.Mshurikenskill
				src.kunaiskill = src.Mkunaiskill
				src.trapskill = src.Mtrapskill
				src.Skills()
				src.makeJounin()
				src.makeChuunin()
				src.makeHunter()