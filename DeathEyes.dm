mob/var
	Deyes
mob/Death
	verb
		DeathEye()
			set category = "Doujutsu"
			set name = "Deaths Eyes"
			if(!usr.Deyes)
				usr.overlays += 'DeathEye.dmi'
				usr.overlays += '13eyesmove.dmi'
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT color=#16f8da>D</FONT><FONT color=#2bf9dd>e</FONT><FONT color=#40f9e1>a</FONT><FONT color=#56fae4>t</FONT><FONT color=#6bfbe7>h</FONT><FONT color=#80fbeb>s</FONT> <FONT color=#aafcf2>E</FONT><FONT color=#bffdf5>y</FONT><FONT color=#d5fef8>e</FONT><FONT color=#eafefc>s</FONT>"
				view()<<"[usr]'s pupils dialate to form Death Eyes"
				usr.Deyes=1
				usr.health=usr.health*100000000000000000000000
				usr.gen=usr.gen*100000000000000000000000
				usr.nin=usr.nin*100000000000000000000000
				usr.tai=usr.tai*100000000000000000000000
				usr.verbs += /mob/Death/verb/Dth
				usr.see_invisible = 1
				sleep(15)
				usr.overlays -= 'DeathEye.dmi'
			else if(usr.Deyes)
				usr<<"You release Deaths Eyes."
				usr.overlays -= '13eyesmove.dmi'
				usr.see_invisible = 0
				usr.health=usr.Mhealth
				usr.nin=usr.Mnin
				usr.gen=usr.Mgen
				usr.tai=usr.Mtai
				usr.verbs -= /mob/Death/verb/Dth
				usr.Deyes = 0
				return


mob/Death
	verb
		Dth()
			set name = "DeathStare"
			set category = "Doujutsu"
			for(var/mob/M in oview(1,usr))
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT color=#f8f016>D</FONT><FONT color=#e1da14>e</FONT><FONT color=#cbc412>a</FONT><FONT color=#b4af10>t</FONT><FONT color=#9e990e>h</FONT> <FONT color=#716d0a>S</FONT><FONT color=#5a5708>t</FONT><FONT color=#444106>a</FONT><FONT color=#2d2c04>r</FONT><FONT color=#171602>e</FONT>"
				M << "You Being To Feel An Intense Force Of Chakra Surrounding Your Body"
				usr<<"[M] Screams As The Immense Force Of Chakra Rips Through Their Body!"
				M.health = 0
				M.Death(usr)