mob/var/list/V

mob
	proc
		AutoSave()
			if(src.cansave)
				src.SaveK()
				spawn(3000)
					src.AutoSave()
mob
	proc
		SaveK()
			if(src.cansave)
				var/savefile/F = new("players/[src.key].sav")
				src.V = src.verbs
				src.xco = src.x
				src.yco = src.y
				src.zco = src.z
/*				F["Oicon"] << src.Oicon
				F["Ohair"] << src.Ohair
				F["hair"] << src.hair*/
				Write(F)

mob
	verb
		Savenow()
			set name ="Save"
			if(usr.cansave)
				var/savefile/F = new("players/[usr.key].sav")
/*				var/list/tmpOverlays = overlays.Copy()
				var/list/tmpUnderlays = underlays.Copy()
				overlays.Cut()
				underlays.Cut()*/
				usr.V = usr.verbs
				usr.xco = usr.x
				usr.yco = usr.y
				usr.zco = usr.z
/*				F["Oicon"] << src.Oicon
				F["Ohair"] << src.Ohair
				F["hair"] << src.hair*/
				Write(F)
/*				overlays += tmpOverlays;
				underlays += tmpUnderlays;*/
				usr << "<font color=Blue><b>Your game has been saved!"
mob
	proc
		LoadPlayer()
			if(fexists("players/[src.key].sav"))
				var/savefile/F = new("players/[src.key].sav")
				Read(F)
/*				F["Oicon"] >> src.Oicon
				F["Ohair"] >> src.Ohair
				F["hair"] >> src.hair*/
				for(var/stuff in src.V)
					src.verbs += stuff
				src.loc = locate(xco,yco,zco)
				src.OOC = 1
				src.client.view = 11
				src.cansave=1
				src.Frozen = 0
				src.AutoSave()
				src.LoginCode()