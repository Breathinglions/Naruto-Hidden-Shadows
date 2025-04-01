obj
	hyuugaeyes
		icon='byakuganthing.dmi'
mob/Hyuuga
	verb
		HakkeshouKaiten() // Verb used for firing the beam
			set category = "TaiJutsu"
			set name = "Hakkeshou Kaiten"
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
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#0000ff>K</FONT><FONT COLOR=#3a48f7>a</FONT><FONT COLOR=#7491ef>i</FONT><FONT COLOR=#add8e6>t</FONT><FONT COLOR=#83c3cd>e</FONT><FONT COLOR=#57adb4>n</FONT><FONT COLOR=#2c969a>!</FONT><FONT COLOR=#008080>!</FONT>"
				usr.Frozen = 1
				usr.firing = 1
				usr.overlays += 'hakkeshou.dmi'
				usr.Kaiten =1
				OMG
				if(usr.Kaiten)
					usr.chakra -=100
					if(usr.chakra <= 99)
						usr.firing = 0
						usr.overlays -= 'hakkeshou.dmi'
						usr.Kaiten = 1
					else
						sleep(15)
						goto OMG
			else if(usr.Kaiten&&usr.Frozen)
				usr.Frozen = 0
				usr.firing = 0
				usr.overlays -= 'hakkeshou.dmi'
				usr.Kaiten =0
				usr<<"You release Hakkeshou Kaiten."
mob/Hyuuga
	verb
		Byakugan()
			set category = "Doujutsu"
			set name = "Byakugan"
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(!usr.bya&&usr.bya1) // If the mob's firing var is one...
				var/obj/hyuugaeyes/B = new /obj/hyuugaeyes
				usr.dir=SOUTH
				B.loc = usr.loc
				usr.overlays += 'byakugan.dmi'
				flick("1",B)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f5f5f5>B</FONT><FONT COLOR=#e4eff2>y</FONT><FONT COLOR=#d2e7ee>a</FONT><FONT COLOR=#bfe0ea>k</FONT><FONT COLOR=#add8e6>u</FONT><FONT COLOR=#b1d4df>g</FONT><FONT COLOR=#b5cfd7>a</FONT><FONT COLOR=#b9cad0>n</FONT><FONT COLOR=#bdc5c8>!</FONT><FONT COLOR=#c0c0c0>!</FONT>"
				view()<<"[usr]'s eyes grow brighter"
				usr.tai = usr.tai*1.3
				usr.bya=1
				usr.byaU += 1
				usr.verbs += /mob/Hyuuga/verb/HakkeRokujuuYonshou
				usr.verbs += /mob/Hyuuga/verb/ByakuganSearch
				sleep(13)
				del(B)
				if(usr.Mnin>=50000&&usr.Mtai>=50000)
					usr.bya1=0
					usr.bya2=1
				return
			if(!usr.bya&&usr.bya2) // If the firing var isn't 1...
				var/obj/hyuugaeyes/B = new /obj/hyuugaeyes
				usr.dir=SOUTH
				B.loc = usr.loc
				usr.overlays += 'byakugan.dmi'
				flick("1",B)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f5f5f5>B</FONT><FONT COLOR=#e4eff2>y</FONT><FONT COLOR=#d2e7ee>a</FONT><FONT COLOR=#bfe0ea>k</FONT><FONT COLOR=#add8e6>u</FONT><FONT COLOR=#b1d4df>g</FONT><FONT COLOR=#b5cfd7>a</FONT><FONT COLOR=#b9cad0>n</FONT><FONT COLOR=#bdc5c8>!</FONT><FONT COLOR=#c0c0c0>!</FONT>"
				view()<<"[usr]'s eyes grow brighter with more intensity"
				usr.bya=1
				usr.byaU += 1
				usr.tai = usr.tai*1.15
				usr.verbs += /mob/Hyuuga/verb/HakkeRokujuuYonshou
				usr.verbs += /mob/Hyuuga/verb/ByakuganSearch
				usr.verbs += /mob/Hyuuga/verb/HakkeHyakuNijuhaSho
				sleep(13)
				del(B)
				return
			else
				if(usr.bya)
					usr<<"You release Byakugan."
					usr.overlays -= 'byakugan.dmi'
					usr.verbs -= /mob/Hyuuga/verb/HakkeRokujuuYonshou
					usr.verbs -= /mob/Hyuuga/verb/ByakuganSearch
					usr.verbs -= /mob/Hyuuga/verb/HakkeHyakuNijuhaSho
					usr.tai = usr.Mtai
					usr.bya = 0
					usr.icon_state=""
					return

		ByakuganSearch()
			set category = "Doujutsu"
			set name = "Search"
			for(var/mob/M in world)
				if(usr.Froze)
					usr<<"Your Frozen"
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				if(M.client&&M.z==usr.z)
					usr<<"{\icon[M][M.name],Rank - [M.rank], health - [M.health],Chakra - [M.chakra]"
					usr<<"Tai - [M.tai],Nin - [M.nin],Gen - [M.gen]"
					usr<<"Location; [M.x],[M.y]"


mob/Hyuuga
	verb
		HakkeRokujuuYonshou()
			set name ="Hakke Rokujuu Yonshou"
			set category = "TaiJutsu"
			if(usr.firing) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			if(usr.bya)
				usr.hakkeRU += 1
				usr.firing = 1
				usr.health -= 190
				usr.underlays+='hyuugacircle.dmi'
				var/damage1 = round(usr.tai + rand(1,5))
				var/damage = round(usr.tai + rand(1,5))
				var/damage2 = round(usr.tai + rand(1,6))
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.Lee)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<font color=silver><center><b><font face=verdana>[usr] says: <FONT COLOR=#00bfff>H</FONT><FONT COLOR=#07b7fd>a</FONT><FONT COLOR=#0daffa>k</FONT><FONT COLOR=#14a6f7>k</FONT><FONT COLOR=#1a9df4>e</FONT><FONT COLOR=#2195f1> </FONT><FONT COLOR=#288ced>R</FONT><FONT COLOR=#2e83ea>o</FONT><FONT COLOR=#357ae7>k</FONT><FONT COLOR=#3b72e4>u</FONT><FONT COLOR=#4169e1>j</FONT><FONT COLOR=#4d71df>u</FONT><FONT COLOR=#5879dc>u</FONT><FONT COLOR=#6481d9> </FONT><FONT COLOR=#7089d6>Y</FONT><FONT COLOR=#7b91d3>o</FONT><FONT COLOR=#8799cf>n</FONT><FONT COLOR=#92a1cc>s</FONT><FONT COLOR=#9ea9c9>h</FONT><FONT COLOR=#aab1c6>o</FONT><FONT COLOR=#b5b9c3>u</FONT><FONT COLOR=#c0c0c0>!</FONT>"
					view()<<"<center><B><font size=2><font color=blue>[usr]:2 strikes!"
					view()<<"<center><B><font size=2><font color=blue>[usr] hit [M] for [damage] damage!"
					M.health -= damage
					M.chakra = M.chakra/1.02
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.Lee)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><center><font size=2><font color=blue>[usr]:4 strikes!"
					M.health -= damage1
					M.chakra = M.chakra/1.04
					view()<<"<B><center><font size=2><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.Lee)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]:8 strikes!"
					M.health -= damage2
					M.chakra = M.chakra/1.08
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.Lee)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]:16 strikes!"
					M.health -= damage2
					M.chakra = M.chakra/1.16
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.Lee)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]:32 strikes!"
					M.health -= damage2
					M.chakra = M.chakra/1.32
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.Lee)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]:64 strikes!"
					M.health -= damage2
					M.chakra = M.chakra/2
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
					usr.firing = 0
					usr.icon_state = ""
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.firing = 0
			else
				usr<<"You failed to use Hakke Rokujuu Yonshou"

mob/Hyuuga
	verb
		HakkeHyakuNijuhaSho()
			set name ="Hakke Hyaku Nijuha Sho"
			set category = "TaiJutsu"
			if(usr.firing) // If the mob's firing var is one...
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			if(usr.bya)
				usr.hakkeRU += 1
				usr.firing = 1
				usr.health -= 190
				usr.underlays+='hyuugacircle.dmi'
				var/damage = round(usr.tai*0.5)
				var/damage1 = round(usr.tai*0.6)
				var/damage2 = round(usr.tai*0.7)
				var/damage3 = round(usr.tai*1.8)
				var/damage4 = round(usr.tai*1.9)
				var/damage5 = round(usr.tai*1.0)
				var/damage6 = round(usr.tai*1.1)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(!M.PK)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.Lee)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<font color=silver><center><b><font face=verdana>[usr] says: <FONT COLOR=#b0e0e6>H</FONT><FONT COLOR=#a7d6e6>a</FONT><FONT COLOR=#9dcbe6>k</FONT><FONT COLOR=#92c0e5>k</FONT><FONT COLOR=#88b5e5>e</FONT><FONT COLOR=#7eaae4> </FONT><FONT COLOR=#74a0e4>H</FONT><FONT COLOR=#6a95e3>y</FONT><FONT COLOR=#608ae3>a</FONT><FONT COLOR=#557fe2>k</FONT><FONT COLOR=#4b74e2>u</FONT><FONT COLOR=#4169e1> </FONT><FONT COLOR=#4d71df>N</FONT><FONT COLOR=#5879dc>i</FONT><FONT COLOR=#6481d9>j</FONT><FONT COLOR=#7089d6>u</FONT><FONT COLOR=#7b91d3>h</FONT><FONT COLOR=#8799cf>a</FONT><FONT COLOR=#92a1cc> </FONT><FONT COLOR=#9ea9c9>S</FONT><FONT COLOR=#aab1c6>h</FONT><FONT COLOR=#b5b9c3>o</FONT><FONT COLOR=#c0c0c0>!</FONT> "
					view()<<"<center><B><font size=2><font color=blue>[usr]: 2 strikes!"
					M.health -= damage
					M.chakra = damage
					view()<<"<center><B><font size=2><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(!M.PK)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.Lee)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><center><font size=2><font color=blue>[usr]: 4 strikes!"
					M.health -= damage1
					M.chakra = damage1
					view()<<"<B><center><font size=2><font color=blue>[usr] hit [M] for [damage1] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(!M.PK)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.Lee)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]: 8 strikes!"
					M.health -= damage2
					M.chakra = damage
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage2] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(!M.PK)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.Lee)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]: 16 strikes!"
					M.health -= damage3
					M.chakra = damage
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage3] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(!M.PK)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.Lee)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]: 32 strikes!"
					M.health -= damage4
					M.chakra = damage
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage4] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(!M.PK)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.Lee)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]: 64 strikes!"
					M.health -= damage5
					M.chakra = damage
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage5] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(!M.PK)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.Lee)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]: 128 strikes!"
					M.health -= damage6
					M.chakra=0
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage6] damage!"
					M.Death(usr)
					usr.firing = 0
					usr.icon_state = ""
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.firing = 0

			else
				usr<<"You failed to use Hakke Hyaku Nijuha Sho"

mob/Hyuuga
	verb
		HakkeKuusho(mob/M in oview(3))
			set name = "Hakke Kuushou"
			set category = "TaiJutsu"
			if(usr.firing) // If the mob's firing var is one...
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(!M.PK)
				usr<<"NON PK ZONE!"
				return
			if(M.drunk&&M.Lee)
				view()<<"[M] dodges [usr]'s attack"
				return
			if (M.ingat == 1||M.intank == 1||usr.Kaiten == 1)				.
				return
			if(usr.chakra <= 10)
				usr<<"Not enough chakra!"
			if (M.inspike)
				usr<<"Your attack bounces off of [usr]!"
			if (M.sphere)
				usr<<"Your attack bounces off of the sand!"
			if (M.Kaiten)
				var/damage = round(usr.tai)
				usr <<"<B><font size=2><font color=blue>You attack [M] but their kaiten reflects the damage back at you."
				M <<"<B><font size=2><font color=blue>You reflect [usr]'s attack causing them to hurt themself."
				usr.health -= damage
				usr.Death(M)
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else
				if(usr.hakkeK >= 25)
					usr.hakkeK += 1
					usr.firing=1
					usr.chakra -= 10
					var/damage = round(usr.tai*1.2)
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>H</FONT><FONT COLOR=#83bce7>a</FONT><FONT COLOR=#7ea8e2>k</FONT><FONT COLOR=#7995dd>k</FONT><FONT COLOR=#7481d7>e</FONT><FONT COLOR=#6f6ed2> </FONT><FONT COLOR=#6a5acd>K</FONT><FONT COLOR=#7469d0>u</FONT><FONT COLOR=#7e79d2>u</FONT><FONT COLOR=#8888d5>s</FONT><FONT COLOR=#9397d7>h</FONT><FONT COLOR=#9da6da>o</FONT><FONT COLOR=#a7b6dc>u</FONT><FONT COLOR=#b0c4de>!</FONT>"
					M.health -= damage
					M.Death(usr)
					step(M,usr.dir)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.hakkeK += 1
						usr.chakra -= 10
						usr.firing=1
						var/damage = round(usr.tai*1.3)
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>H</FONT><FONT COLOR=#83bce7>a</FONT><FONT COLOR=#7ea8e2>k</FONT><FONT COLOR=#7995dd>k</FONT><FONT COLOR=#7481d7>e</FONT><FONT COLOR=#6f6ed2> </FONT><FONT COLOR=#6a5acd>K</FONT><FONT COLOR=#7469d0>u</FONT><FONT COLOR=#7e79d2>u</FONT><FONT COLOR=#8888d5>s</FONT><FONT COLOR=#9397d7>h</FONT><FONT COLOR=#9da6da>o</FONT><FONT COLOR=#a7b6dc>u</FONT><FONT COLOR=#b0c4de>!</FONT>"
						M.health -= damage
						M.Death(usr)
						step(M,usr.dir)
				sleep(17)
				usr.firing=0
mob/Hyuuga
	verb
		Gentle_Step(mob/M in get_step(src,src.dir))
			set category = "TaiJutsu"
			set name = "Gentle Step Twin Lion Fists"
			if(usr.firing)
				usr<<"Not now"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else
				usr<<"You disrupt [M]'s chakra flow in their body slowing their movement!"
				var/damage = round(usr.tai*1.5)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Gentle Step: Twin Lion Fists!"
				view()<<"[M] has been hit by Gentle Step: Twin Lion Fists for [damage] Damage"
				M.health -= damage
				M.chakra -= damage
				if(M.health<=0)
					M.Death(usr)
				M.Move_Delay=8
				step(M,usr.dir)
				sleep(25)
				M.Move_Delay = usr.Savedspeed
				M<<"Your Chakra recovers from the Gentle Step: Twin Lion Fists!"
				usr<<"[M]'s Chakra Flow returns to normal"