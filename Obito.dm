/*
Uchihakkkkkkkk
*/

mob/Obito
	verb
		Flame_Formation()
			set name = "Uchiha Kaenjin"
			set category = "NinJutsu"
			if(usr.Henge)
				usr<<"Not While Your In Henge"
				return
			if(usr.chakra < 100)
				usr<<"You dont have enough chakra!"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.InKASS)
				usr<<"Not while you are in your Kyuubi Aura Shield!"
				return
			if(!usr.Kaiten&&!usr.firing&&!usr.Frozen)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR='#8b0000'>U</FONT><FONT COLOR='#980c0c'>c</FONT><FONT COLOR='#a61717'>h</FONT><FONT COLOR='#b22222'>i</FONT><FONT COLOR='#a21717'>h</FONT><FONT COLOR='#910c0c'>a</FONT><FONT COLOR='#800000'> </FONT><FONT COLOR='#8d0909'>K</FONT><FONT COLOR='#9a1212'>a</FONT><FONT COLOR='#a61a1a'>e</FONT><FONT COLOR='#b22222'>n</FONT><FONT COLOR='#a61717'>j</FONT><FONT COLOR='#980c0c'>i</FONT><FONT COLOR='#8b0000'>n</FONT>"
				usr.Frozen = 1
				usr.firing = 1
				usr.overlays += 'hakkeshou.dmi'
				usr.Kaiten =1
				OMG
				if(usr.Kaiten)
					for(var/mob/M in oview(1))
						var/damage = usr.nin*1.15
						M.health -= damage
						M.Death(usr)
					usr.chakra -=100
					if(usr.chakra <= 99)
						usr.firing = 0
						usr.overlays -= 'hakkeshou.dmi'
						usr.Kaiten = 1
					else
						sleep(15)
						goto OMG
			else
				if(usr.Kaiten&&usr.Frozen)
					usr.Frozen = 0
					usr.firing = 0
					usr.overlays -= 'hakkeshou.dmi'
					usr.Kaiten =0
					usr<<"You release Hakkeshou Kaiten."