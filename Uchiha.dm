mob/Uchiha
	verb
		Izanagi()
			set category = "Doujutsu"
			set name = "Izanagi"
			if(usr.firing)
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.chakra<=750000)
				usr<<"Not enough chakra!!"
				return
			if(usr.blind)
				usr<<"You can no longer use the power of your Sharingan. You need to find a way to get a new pair of Sharingan Eyes."
				return
			if(usr.Uchiha&&usr.EMS)
				usr.chakra-=750000
				view()<<"<font color = red><B> Izanagi!!"
				usr.izanagi=1
				sleep(300)
				usr.izanagi=0
				view()<<"<font color =red><B>[usr]'s Izanagi is no longer active..."
			else
				usr.chakra-=750000
				view()<<"<font color = red><B>Izanagi!!"
				usr.izanagi=1
				sleep(300)
				usr.izanagi=0
				view()<<"<font color = red><B>[usr]'s Izanagi is no longer active..."
				usr.blind=1

mob/Uchiha
	verb
		LionsBarrage(mob/M in get_step(src,NORTH))
			set category = "TaiJutsu"
			set name = "Lions Barrage"
			if (M.inspike)
				return
			if(usr.firing)
				return
			if (M.sphere)
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
			if(M.PK==0)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
				return
			if(usr.PK==0)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [usr]"
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
			if(M.drunk&&M.Lee)
				view()<<"[M] dodges [usr]'s attack"
				return
			if (M.Kaiten)
				usr <<"You attack [M] but their kaiten reflects the damage back at you."
				M <<"You reflect [usr]'s attack causing them to hurt themself."
				usr.health -= 10
				if(src.health<=0)
					usr.Death(M)
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			if (M.ingat == 1)
				usr << "Your attack bounces off of [M] because they are in gatsuuga..."
				return
			else
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Lion's Barrage!!!</FONT>"
				var/damage=usr.tai*1.5
				usr.firing=1
				if(M)
					step(M,NORTH)
					sleep(2)
					step(M,NORTH)
					sleep(2)
					step(M,NORTH)
					sleep(2)
					step(M,NORTH)
					sleep(2)
					step(M,NORTH)
					sleep(2)
					usr.loc=locate(M.x,M.y+1,M.z)
					view()<<"[M] takes [damage] damage from Lions Barrage!"
					step(M,SOUTH)
					sleep(2)
					step(M,SOUTH)
					sleep(2)
					step(M,SOUTH)
					sleep(2)
					step(M,SOUTH)
					sleep(2)
					step(M,SOUTH)
					sleep(2)
					M.health -= damage
					M.Death(usr)
				sleep(14)
				usr.firing=0
mob/Uchiha
	verb
		Time_S1()
			set category = "NinJutsu"
			set name = "Teleportation Jikukan Ido"
			usr.Handseals()
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
			if(usr.chakra <= 500000)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			else
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Space-Time Escape!!"
				usr.chakra -= 350000
				usr.firing=1
				view()<<"You teleport using the power of your sharingan!"
				usr.loc=locate(65,96,96)
				sleep(14)
				usr.firing=0


obj
	senbon
		icon = 'senbon.dmi'//dont have a base icon so cant make weights icon!lol
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				var/mob/O = src.Gowner
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.nin*1.3)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [O]'s Senbon for [damage] damage!!"
					M.Death(O)
					del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

mob/Uchiha
	verb
		ChidoriSenbon() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Chidori Senbon"
			usr.Handseals()
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
			if(usr.chakra <= 40)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				usr.DoryuuN += 1
				usr.firing=1
				usr.chakra -= 39
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR='#7fffd4'>C</FONT><FONT COLOR='#6bd5db'>h</FONT><FONT COLOR='#55abe3'>i</FONT><FONT COLOR='#4080ea'>d</FONT><FONT COLOR='#2b55f1'>o</FONT><FONT COLOR='#152bf9'>r</FONT><FONT COLOR='#0000ff'>i</FONT><FONT COLOR='#0000ef'> </FONT><FONT COLOR='#0000df'>S</FONT><FONT COLOR='#0000ce'>e</FONT><FONT COLOR='#0000bd'>n</FONT><FONT COLOR='#0000ac'>b</FONT><FONT COLOR='#00009c'>o</FONT><FONT COLOR='#00008b'>n</FONT>"
				usr.Chakragain()
				if(usr.dir == NORTH)
					var/obj/senbon/A = new /obj/senbon/
					var/obj/senbon/B = new /obj/senbon/
					var/obj/senbon/C = new /obj/senbon/
					var/obj/senbon/D = new /obj/senbon/
					var/obj/senbon/E = new /obj/senbon/
					var/obj/senbon/F = new /obj/senbon/
					var/obj/senbon/G = new /obj/senbon/
					var/obj/senbon/H = new /obj/senbon/
					var/obj/senbon/I = new /obj/senbon/
					A.loc = locate(usr.x, usr.y+1, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x-1, usr.y+1, usr.z)
					D.loc = locate(usr.x-2, usr.y+1, usr.z)
					E.loc = locate(usr.x+2, usr.y+1, usr.z)
					F.loc = locate(usr.x+3, usr.y+1, usr.z)
					G.loc = locate(usr.x-3, usr.y+1, usr.z)
					H.loc = locate(usr.x-4, usr.y+1, usr.z)
					I.loc = locate(usr.x+4, usr.y+1, usr.z)
					A.nin=usr.nin*0.9
					B.nin=usr.nin*0.9
					C.nin=usr.nin*0.9
					D.nin=usr.nin*0.9
					E.nin=usr.nin*0.9
					F.nin=usr.nin*0.9
					G.nin=usr.nin*0.9
					H.nin=usr.nin*0.9
					I.nin=usr.nin*0.9
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					F.Gowner=usr
					G.Gowner=usr
					H.Gowner=usr
					I.Gowner=usr
					A.dir = NORTH
					B.dir = NORTH
					C.dir = NORTH
					D.dir = NORTH
					E.dir = NORTH
					F.dir = NORTH
					G.dir = NORTH
					H.dir = NORTH
					I.dir = NORTH
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					walk(F,usr.dir)
					walk(G,usr.dir)
					walk(H,usr.dir)
					walk(I,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					del(F)
					del(G)
					del(H)
					del(I)
					sleep(110)
				if(usr.dir == EAST)
					var/obj/senbon/A = new /obj/senbon/
					var/obj/senbon/B = new /obj/senbon/
					var/obj/senbon/C = new /obj/senbon/
					var/obj/senbon/D = new /obj/senbon/
					var/obj/senbon/E = new /obj/senbon/
					var/obj/senbon/F = new /obj/senbon/
					var/obj/senbon/G = new /obj/senbon/
					var/obj/senbon/H = new /obj/senbon/
					var/obj/senbon/I = new /obj/senbon/
					A.loc = locate(usr.x+1, usr.y, usr.z)
					C.loc = locate(usr.x+1, usr.y+1, usr.z)
					B.loc = locate(usr.x+1, usr.y-1, usr.z)
					D.loc = locate(usr.x+1, usr.y-2, usr.z)
					E.loc = locate(usr.x+1, usr.y+2, usr.z)
					F.loc = locate(usr.x+1, usr.y+3, usr.z)
					G.loc = locate(usr.x+1, usr.y-3, usr.z)
					H.loc = locate(usr.x+1, usr.y-4, usr.z)
					I.loc = locate(usr.x+1, usr.y+4, usr.z)
					A.nin=usr.nin*0.9
					B.nin=usr.nin*0.9
					C.nin=usr.nin*0.9
					D.nin=usr.nin*0.9
					E.nin=usr.nin*0.9
					F.nin=usr.nin*0.9
					G.nin=usr.nin*0.9
					H.nin=usr.nin*0.9
					I.nin=usr.nin*0.9
					A.Gowner=usr
					B.Gowner=usr
					C.Gowner=usr
					D.Gowner=usr
					E.Gowner=usr
					F.Gowner=usr
					G.Gowner=usr
					H.Gowner=usr
					I.Gowner=usr
					A.dir = EAST
					B.dir = EAST
					C.dir = EAST
					D.dir = EAST
					E.dir = EAST
					F.dir = EAST
					G.dir = EAST
					H.dir = EAST
					I.dir = EAST
					walk(A,usr.dir)
					walk(B,usr.dir)
					walk(C,usr.dir)
					walk(D,usr.dir)
					walk(E,usr.dir)
					walk(F,usr.dir)
					walk(G,usr.dir)
					walk(H,usr.dir)
					walk(I,usr.dir)
					sleep(400)
					del(A)
					del(B)
					del(C)
					del(D)
					del(E)
					del(F)
					del(G)
					del(H)
					del(I)
					sleep(110)
					return
				sleep(15)
				firing=0
				return


mob/Uchiha
	verb
		Sharinganfreeze(mob/M in oview(1)) // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Sharingan Freeze"
			if(usr.firing)
				return
			if(M.PK==0)
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M)
				if(M.Froze)
					usr << "Their already Froze.."
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
			if(usr.blind)
				usr<<"Your Sharingan is now useless. You need to get new eyes."
				return
			else // If the firing var isn't 1...
				M<<"Your Frozen by [usr]'s Sharingan."
				usr<<"You Froze [M] with your Sharingan"
				var/Sleeptime = round(usr.gen/10)
				if(Sleeptime <= 1)
					M.Frozen = 1
					M.Froze = 1
					sleep(50)
					if(M)
						M.Frozen=0
						M<<"You break out of [usr]'s Sharingan freeze."
						usr<<"[M] is free from your Sharingan!"
						M.Froze = 0
					sleep(8)
				else
					M.Frozen=1
					M.Froze = 1
					sleep(50)
					if(M)
						M.Frozen=0
						M<<"You break out of [usr]'s Sharingan freeze."
						usr<<"[M] is free from your Sharingan!"
						M.Froze = 0
					sleep(8)
				sleep(50)
				if(M)
					M.Froze=0
mob/var
	EMSon = 0
	MSon = 0
mob/Uchiha
	verb
		MSharingan()
			set category = "Doujutsu"
			set name = "Mangekyou Sharingan"
			if(!usr.shari&&!usr.ST&&!usr.EMS)
				if(usr.Obito)
					usr.overlays += /obj/ObitoMangekyouR
					usr.overlays += /obj/ObitoMangekyouL
					usr.overlays += 'sharingan.dmi'
				if(usr.Madara)
					usr.overlays += /obj/MadaraMangekyouR
					usr.overlays += /obj/MadaraMangekyouL
					usr.overlays += 'sharingan.dmi'
				if(usr.Itachi)
					usr.overlays += /obj/ItachiMangekyouR
					usr.overlays += /obj/ItachiMangekyouL
					usr.verbs += /mob/Uchiha/verb/Amateratsu
					usr.verbs += /mob/Uchiha/verb/Tsukuyomi
					usr.verbs += /mob/Uchiha/verb/Susanoo_S
					usr.overlays += 'sharingan.dmi'
				if(usr.Uchiha)//Sasuke
					usr.overlays += /obj/SasukeMangekyouR
					usr.overlays += /obj/SasukeMangekyouL
					usr.overlays += 'sharingan.dmi'
					usr.verbs += /mob/Uchiha/verb/Amateratsu
					usr.verbs += /mob/Uchiha/verb/Susanoo_S
					usr.verbs += /mob/Uchiha/verb/Izanagi
				usr.icon_state="mangekyou"
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#696969>M</FONT><FONT COLOR=#766065>a</FONT><FONT COLOR=#835760>n</FONT><FONT COLOR=#904d5b>g</FONT><FONT COLOR=#9d4456>e</FONT><FONT COLOR=#a93a50>k</FONT><FONT COLOR=#b6314b>y</FONT><FONT COLOR=#c32746>o</FONT><FONT COLOR=#d01e41>u</FONT><FONT COLOR=#dc143c> </FONT><FONT COLOR=#d41337>S</FONT><FONT COLOR=#ca1131>h</FONT><FONT COLOR=#c10f2b>a</FONT><FONT COLOR=#b80d25>r</FONT><FONT COLOR=#af0b1f>i</FONT><FONT COLOR=#a50818>n</FONT><FONT COLOR=#9c0612>g</FONT><FONT COLOR=#93040c>a</FONT><FONT COLOR=#890206>n</FONT><FONT COLOR=#800000>!</FONT>"
				view()<<"[usr]'s pupils dialate to form the Legendary Mangekyou Sharingan"
				usr.shari=1
				usr.gen=usr.gen*1.3
				usr.nin=usr.nin*1.3
				usr.tai=usr.tai*1.3
				MSon=1
				usr.ST=1
				usr.verbs += /mob/Uchiha/verb/Sharinganilluminate
				usr.verbs += /mob/Uchiha/verb/Sharinganfreeze
				usr.verbs += /mob/Uchiha/verb/Counter
				usr.see_invisible = 1
				sleep(20)
				usr.overlays -= /obj/ItachiMangekyouR
				usr.overlays -= /obj/ItachiMangekyouL
				usr.overlays -= /obj/MadaraMangekyouR
				usr.overlays -= /obj/MadaraMangekyouL
				usr.overlays -= /obj/ObitoMangekyouR
				usr.overlays -= /obj/ObitoMangekyouL
				usr.overlays -= /obj/SasukeMangekyouR
				usr.overlays -= /obj/SasukeMangekyouL
				return
			else
				if(usr.shari)
					usr<<"You release your Mangekyo Sharingan."
					usr.overlays -= 'sharingan.dmi'
					usr.see_invisible = 0
					usr.nin=usr.Mnin
					usr.gen=usr.Mgen
					usr.tai=usr.Mtai
					usr.MSon=0
					usr.verbs -= /mob/Uchiha/verb/Sharinganilluminate
					usr.verbs -= /mob/Uchiha/verb/Sharinganfreeze
					usr.verbs -= /mob/Uchiha/verb/Counter
					usr.verbs -= /mob/Uchiha/verb/Amateratsu
					usr.verbs -= /mob/Uchiha/verb/Tsukuyomi
					usr.verbs -= /mob/Hatake/verb/Susanoo
					usr.verbs -= /mob/Uchiha/verb/Susanoo_S
					usr.verbs -= /mob/Uchiha/verb/Izanagi
					usr.shari = 0
					sleep(5)
					usr.ST=0
					return
			/*if(!usr.shari&&!usr.ST&&usr.goingmange&&usr.EMS)
				if(usr.Uchiha)
					usr.overlays+='sharinganthing2.dmi'
					usr.overlays += 'sharingan.dmi'
					usr.icon_state="man"
					usr.verbs += /mob/Uchiha/verb/Amateratsu
					usr.verbs += /mob/Uchiha/verb/Tsukuyomi
					usr.verbs += /mob/Uchiha/verb/Susanoo_S
					usr.verbs += /mob/Uchiha/verb/Izanagi
				usr.icon_state="man"
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#696969>M</FONT><FONT COLOR=#766065>a</FONT><FONT COLOR=#835760>n</FONT><FONT COLOR=#904d5b>g</FONT><FONT COLOR=#9d4456>e</FONT><FONT COLOR=#a93a50>k</FONT><FONT COLOR=#b6314b>y</FONT><FONT COLOR=#c32746>o</FONT><FONT COLOR=#d01e41>u</FONT><FONT COLOR=#dc143c> </FONT><FONT COLOR=#d41337>S</FONT><FONT COLOR=#ca1131>h</FONT><FONT COLOR=#c10f2b>a</FONT><FONT COLOR=#b80d25>r</FONT><FONT COLOR=#af0b1f>i</FONT><FONT COLOR=#a50818>n</FONT><FONT COLOR=#9c0612>g</FONT><FONT COLOR=#93040c>a</FONT><FONT COLOR=#890206>n</FONT><FONT COLOR=#800000>!</FONT>"
				view()<<"[usr]'s pupils dialate to form the Legendary Eternal Mangekyou Sharingan"
				usr.shari=1
				usr.gen=usr.gen*1.45
				usr.nin=usr.nin*1.45
				usr.tai=usr.tai*1.45
				usr.ST=1
				usr.verbs += /mob/Uchiha/verb/Sharinganilluminate
				usr.verbs += /mob/Uchiha/verb/Sharinganfreeze
				usr.verbs += /mob/Uchiha/verb/Counter
				usr.see_invisible = 1
				sleep(10)
				usr.overlays-='sharinganthing2.dmi'
				usr.overlays-='sharinganthing2.dmi'
				usr.overlays-='hatakecounter.dmi'
				usr.overlays-='hatakecounter.dmi'
				return*/


		Sharingan() // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Sharingan"
			if(usr.blind)
				usr<<"You overused your Sharingan...You can no longer use the power of your Sharingan Eyes."
				return
			if(usr.EMSon)
				return
			if(usr.MSon)
				return
			if(!usr.shari&&usr.sharingan1&&!usr.ST) // If the mob's firing var is one...
				if(usr.Hatake)
					usr.overlays += 'hatakesharingan.dmi'
					usr.overlays += /obj/Sharingan1L
				else
					usr.overlays += 'sharingan.dmi'
					usr.overlays += /obj/Sharingan1R
					usr.overlays += /obj/Sharingan1L
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#8b0000>S</FONT><FONT COLOR=#a0050f>h</FONT><FONT COLOR=#b40b1f>a</FONT><FONT COLOR=#c9102e>r</FONT><FONT COLOR=#dc143c>i</FONT><FONT COLOR=#ca1131>n</FONT><FONT COLOR=#b80d25>g</FONT><FONT COLOR=#a50818>a</FONT><FONT COLOR=#93040c>n</FONT><FONT COLOR=#800000>!</FONT>"
				view()<<"[usr]'s pupils dialate to form Stage 1 Sharingan"
				usr.shari=1
				usr.ST=1
				usr.Suses += 1
				usr.verbs += /mob/Uchiha/verb/Sharinganilluminate
				usr.see_invisible = 1
				sleep(20)
				usr.overlays -= /obj/Sharingan1L
				usr.overlays -= /obj/Sharingan1R
				usr.overlays -= /obj/Sharingan1L
				if(usr.Mnin>=500&&usr.Suses>=50)
					usr.sharingan2=1
					usr.sharingan1=0
				return
			if(!usr.shari&&usr.sharingan2&&!usr.ST) // If the firing var isn't 1...
				if(usr.Hatake)
					usr.overlays += 'hatakesharingan.dmi'
					usr.overlays += /obj/Sharingan2L
				else
					usr.overlays += 'sharingan.dmi'
					usr.overlays += /obj/Sharingan2R
					usr.overlays += /obj/Sharingan2L
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#8b0000>S</FONT><FONT COLOR=#a0050f>h</FONT><FONT COLOR=#b40b1f>a</FONT><FONT COLOR=#c9102e>r</FONT><FONT COLOR=#dc143c>i</FONT><FONT COLOR=#ca1131>n</FONT><FONT COLOR=#b80d25>g</FONT><FONT COLOR=#a50818>a</FONT><FONT COLOR=#93040c>n</FONT><FONT COLOR=#800000>!</FONT>"
				view()<<"[usr]'s pupils dialate to form Stage 2 Sharingan"
				usr.shari=1
				usr.ST=1
				usr.Suses += 1
				usr.verbs += /mob/Uchiha/verb/Sharinganilluminate
				usr.verbs += /mob/Uchiha/verb/Sharinganfreeze
				usr.see_invisible = 1
				sleep(20)
				usr.overlays -= /obj/Sharingan2L
				usr.overlays -= /obj/Sharingan2R
				usr.overlays -= /obj/Sharingan2L
				if(usr.Mnin>=700&&usr.Mgen>=400&&usr.Suses>=70)
					usr.sharingan3=1
					usr.sharingan2=0
				return
			if(!usr.shari&&usr.sharingan3&&!usr.ST&&!usr.goingmange&&!usr.EMS) // If the firing var isn't 1...
				if(usr.Hatake)
					usr.overlays += 'hatakesharingan.dmi'
					usr.overlays += /obj/Sharingan3L
				else
					usr.overlays += 'sharingan.dmi'
					usr.overlays += /obj/Sharingan3R
					usr.overlays += /obj/Sharingan3L
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#8b0000>S</FONT><FONT COLOR=#a0050f>h</FONT><FONT COLOR=#b40b1f>a</FONT><FONT COLOR=#c9102e>r</FONT><FONT COLOR=#dc143c>i</FONT><FONT COLOR=#ca1131>n</FONT><FONT COLOR=#b80d25>g</FONT><FONT COLOR=#a50818>a</FONT><FONT COLOR=#93040c>n</FONT><FONT COLOR=#800000>!</FONT>"
				view()<<"[usr]'s pupils dialate to form Stage 3 Sharingan"
				usr.Suses += 1
				usr.shari=1
				usr.ST=1
				usr.nin=usr.nin*1.2
				usr.tai=usr.tai*1.2
				usr.gen=usr.gen*1.2
				usr.verbs += /mob/Uchiha/verb/Sharinganilluminate
				usr.verbs += /mob/Uchiha/verb/Sharinganfreeze
				usr.verbs += /mob/Uchiha/verb/Counter
				usr.see_invisible = 1
				sleep(20)
				usr.overlays -= /obj/Sharingan3L
				usr.overlays -= /obj/Sharingan3R
				usr.overlays -= /obj/Sharingan3L
				return
			else if(usr.shari)
				usr<<"You release your Sharingan."
				usr.overlays -= 'sharingan.dmi'
				usr.overlays -= 'hatakesharingan.dmi'
				usr.see_invisible = 0
				usr.nin=usr.Mnin
				usr.gen=usr.Mgen
				usr.tai=usr.Mtai
				usr.goingmange=0
				usr.verbs -= /mob/Uchiha/verb/Sharinganilluminate
				usr.verbs -= /mob/Uchiha/verb/Sharinganfreeze
				usr.verbs -= /mob/Uchiha/verb/Counter
				usr.verbs -= /mob/Uchiha/verb/Amateratsu
				usr.verbs -= /mob/Uchiha/verb/Tsukuyomi
				usr.verbs -= /mob/Hatake/verb/Susanoo
				usr.verbs -= /mob/Uchiha/verb/Susanoo_S
				usr.verbs -= /mob/Uchiha/verb/Izanagi
				usr.shari = 0
				sleep(5)
				usr.ST=0
				return

mob/Uchiha
	verb
		Counter() // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Counter"
			if(usr.firing)
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.chakra<=35000)
				usr<<"Not enough chakra"
				return
			if(usr.blind)
				usr<<"You can no longer use your Sharingan. You must find a way to get new Sharingan Eyes."
				return
			if(usr.counter==0||usr.Uchiha)
				usr.counter=1
				view()<<"<font color=silver><b><font face=verdana>[usr]: Counter!!"
				usr.overlays += 'counter.dmi'
				sleep(30)
				usr.counter=0
				usr.overlays -= 'counter.dmi'
				return
			if(usr.counter==0||usr.Hatake)
				usr.counter=1
				usr.firing=1
				usr.chakra-=35000
				view()<<"<font color=silver><b><font face=verdana>[usr]: Counter!!"
				usr.overlays += 'Hcounter.dmi'
				sleep(30)
				usr.counter=0
				usr.firing=0
				usr.overlays -= 'Hcounter.dmi'
				return
			else
				usr<<"Counter is already active."

mob/Uchiha
	verb
		Sharinganilluminate() // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Illuminate"
			if(usr.illuminating)
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			usr.illuminating=1
			for(var/mob/npc/Bunshin/B in world)
				if(usr.Mnin <= 25&&usr.Mgen <= 15&&usr.Mtai <= 20)
					usr << "Sorry not strong enough......"
					return
				else
					var/image/I = image('Bun.dmi',B,"googa")
					src << I
					usr.illu = 1
			for(var/mob/npc/KBunshin/K in world)
				if(usr.Mnin <= 100&&usr.Mgen <= 111&&usr.Mtai <= 100)
					usr << "no......"
					return
				else
					var/image/I = image('Bun.dmi',K,"googa")
					src << I
					usr.illu = 1
			for(var/mob/M in oview(10))
				M.invisibility = 0
				M.overlays += 'Bun.dmi'
				sleep(30)
				M.overlays -= 'Bun.dmi'
				if(M.kawa)
					M.overlays += 'Bun.dmi'
					sleep(30)
					M.overlays -= 'Bun.dmi'
			sleep(30)
			usr.illuminating=0

mob/Uchiha
	verb
		Kirind(mob/M in oview(10))
			set category = "Doujutsu"
			set name = "Kirin"
			usr.Handseals()
			if(usr.firing)
				return
			if(usr.weaponthrow)
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
			if(usr.PK==0)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [usr]"
				return
			var/obj/Kirin/L = new()
			usr.weaponthrow=1
			L.loc=usr.loc
			L.nin=usr.nin
			L.dir = usr.dir
			L.Move_Delay=1.5
			L.Gowner=usr
			walk_towards(L,M)
			sleep(30)
			del(L)
			src.loc=locate(usr.x,usr.y,usr.z)
			sleep(3)
			usr.weaponthrow=0

mob/Uchiha
	verb
		InstantBreathSlash() // Verb used for firing the beam
			set category = "TaiJutsu"
			set name = "Instant Breath Slash"
			usr.Handseals()
			if(usr.firing)
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(usr.PK==0)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [usr]"
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
			else // If the firing var isn't 1...
				if(!usr.hyoushou)
					usr.chakra -= 10
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.SensatsuN += 1
					view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Instant Breath Slash!</FONT>"
					var/obj/IBSkunai/S1 = new /obj/IBSkunai/
					var/obj/IBSkunai/S2 = new /obj/IBSkunai/
					var/obj/IBSkunai/S3 = new /obj/IBSkunai/
					var/obj/IBSkunai/S4 = new /obj/IBSkunai/
					usr.Chakragain()
					if(S1)
						S1.loc = usr.loc
						S1.nin = usr.nin
						S1.dir = NORTH
						S1.name = "[usr]"
						S1.Gowner = usr
						walk(S1,NORTH)
					if(S2)
						S2.loc = usr.loc
						S2.nin = usr.nin
						S2.dir = SOUTH
						S2.name = "[usr]"
						S2.Gowner = usr
						walk(S2,SOUTH)
					if(S3)
						S3.loc = usr.loc
						S3.nin = usr.nin
						S3.dir = WEST
						S3.name = "[usr]"
						S3.Gowner = usr
						walk(S3,WEST)
					if(S4)
						S4.loc = usr.loc
						S4.nin = usr.nin
						S4.dir = EAST
						S4.name = "[usr]"
						S4.Gowner = usr
						walk(S4,EAST)
					sleep(10)
					usr.firing = 0
					sleep(45)
					del(S1)
					del(S2)
					del(S3)
					del(S4)
					return


		WindmillTripleAttack() // Verb used for firing the beam
			set category = "TaiJutsu"
			set name = "Windmill Triple Attack"
			if(usr.firing)
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(!usr.PK)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [usr]"
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
			else // If the firing var isn't 1...
				if(!usr.hyoushou)
					usr.chakra -= 4500
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.SensatsuN += 1
					view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=green> Says: Windmill Triple Attack!</FONT>"
					var/obj/Windmill/S1 = new /obj/Windmill
					var/obj/Windmill/S2 = new /obj/Windmill
					var/obj/Windmill/S3 = new /obj/Windmill
					var/obj/Windmill/S4 = new /obj/Windmill
					usr.Chakragain()
					if(S1)
						S1.loc = usr.loc
						S1.nin = usr.nin/2
						S1.dir = NORTH
						S1.name = "[usr]"
						S1.Gowner = usr
						walk(S1,NORTH)
					if(S2)
						S2.loc = usr.loc
						S2.nin = usr.nin/2
						S2.dir = SOUTH
						S2.name = "[usr]"
						S2.Gowner = usr
						walk(S2,SOUTH)
					if(S3)
						S3.loc = usr.loc
						S3.nin = usr.nin/2
						S3.dir = WEST
						S3.name = "[usr]"
						S3.Gowner = usr
						walk(S3,WEST)
					if(S4)
						S4.loc = usr.loc
						S4.nin = usr.nin/2
						S4.dir = EAST
						S4.name = "[usr]"
						S4.Gowner = usr
						walk(S4,EAST)
					sleep(25)
					usr.firing = 0
					sleep(10)
					del(S1)
					del(S2)
					del(S3)
					del(S4)
					return

mob/var/tmp/ama=0
mob/Uchiha
	verb
		Amateratsu() // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Amaterasu"
			usr.Handseals()
			if(usr.firing) // If the mob's firing var is one...
				usr << "You must wait before using this."
				return
			if(usr.chakra <= 10000&&usr.health >= 25199)
				usr<<"You dont have enough power!"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(!usr.handseals)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.kir)
				usr<<"Not Now"
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
			if(usr.blind)
				usr<<"You can no longer use your Sharingan. You must find a way to get New Sharingan Eyes."
				return
			else // If the firing var isn't 1...
				if(usr.ama) return
				else
					usr<<"You can now use Amaterasu"
					usr.ama=1
					sleep(50)
					usr.ama=0

mob/Uchiha
	verb
		Tsukuyomi(mob/M in oview(1)) // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Tsukuyomi"
			if(usr.blind)
				usr<<"You can no longer use your Sharingan. You must find a way to get new Sharingan Eyes."
				return
			if(usr.firing||!usr.PK||!M.PK||usr.Frozen||M.Frozen||usr.caught||usr.resting||usr.freezeused||usr.meditating||usr.Kaiten)return
			else
				usr.freezeused = 1
				M<<"Your frozen by [usr]'s Tsukuyomi."
				usr<<"You froze [M] with your Tsukuyomi"
				M.Frozen=1
				usr.firing=1
				sleep(10)
				usr.freezeused = 0
				if(M)
					M.move=1
					M<<"You break out of [usr]'s Tsukuyomi."
					usr<<"[M] is free from your Tsukuyomi!"
					M.Frozen=0
					sleep(30)
					usr.firing=0
					var/damage = round(usr.gen*1.35)
					M.health -= damage
					view(usr)<<"[M] has recieved [damage] damage from Tsukuyomi"
					M.firing=0
					if(M.health <=0)
						M.Death(usr)

/*mob/Uchiha
	verb
		MangekyouPrep()
			set category="Doujutsu"
			set name = "Use Mangekyou"
			if(usr.firing)
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
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			usr.goingmange=1
			if(usr.Suses>=300)
				usr.Suses=300
			usr<<"Now use Sharingan"
			sleep(100)
			usr.goingmange=0*/


mob/Uchiha
	verb
		Susanoo_S()
			set category = "Doujutsu"
			set name = "Susanoo"
			if(usr.Henge)
				usr<<"Not While Your In Henge"
				return
			if(usr.chakra <= 35000)
				usr<<"You dont have enough chakra!"
				return
			if(usr.Kaiten&&!usr.sphere)
				usr<<"Not Now"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.blind)
				usr<<"You can no longer use your Sharingan. You must find a way to get them."
				return
			if(!usr.firing&&!insas)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=blue> Says: Susanoo!! "
				usr.firing=1
				sleep(30)
				usr.insas = 1
				usr.counter = 1
				usr.overlays += 'Susanoo CC.dmi'
				OMG
				if(usr.firing)
					usr.chakra -=25300
					usr.health -=25500
					if(usr.chakra <= 40099)
						usr.overlays -= 'Susanoo CC.dmi'
						usr.insas=0
						usr.counter = 0
						usr.firing=0
					else
						sleep(15)
						goto OMG
			else
				usr.counter=0
				usr.firing = 0
				usr.insas = 0
				usr.overlays -= 'Susanoo CC.dmi'
				usr<<"<B><font color = blue>Your Susanoo Disperses"

mob/Susanoo_U
	verb
		A()
			set category = "Doujutsu"
			set name = "Susanoo Arrow"
			usr.Handseals()
			if(!usr.handseals||usr.sphere||usr.Kaiten||src.Kaiten)return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
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
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(!src.PK)
				usr<<"NON PK ZONE!"
				return
			if(src.captured)
				usr<<"He is already caught!"
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else// If the firing var isn't 1...
				usr.chakra -= 13500
				view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=blue> Says: Susanoo's Arrow!</font>"
				var/obj/Arrow_S/S1 = new /obj/Arrow_S/
				usr.firing=1
				S1.loc = usr.loc
				S1.nin = usr.nin
				S1.dir = usr.dir
				S1.name = "[usr]"
				S1.Gowner = usr
				walk(S1,usr.dir)
				sleep(15)
				usr.firing=0
				sleep(45)
				del(S1)

mob/var/tmp/kir=0
mob/Uchiha
	verb
		Kirin() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Kirin"
			usr.Handseals()
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
			if(usr.chakra <= 4000)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			else // If the firing var isn't 1...
				usr.DoryuuN += 1
				usr.firing=1
				usr.Frozen=1
				usr.chakra -= 35500
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=blue> Says: Begone with the Thunder Clap...KIRIN!!"
				usr.Chakragain()
				var/obj/KirinFull/A = new /obj/KirinFull/
				var/obj/KirinFull/B = new /obj/KirinFull/
				var/obj/KirinFull/C = new /obj/KirinFull/
				var/obj/KirinFull/D = new /obj/KirinFull/
				var/obj/KirinFull/E = new /obj/KirinFull/
				var/obj/KirinFull/F = new /obj/KirinFull/
				var/obj/KirinFull/G = new /obj/KirinFull/
				var/obj/KirinFull/H = new /obj/KirinFull/
				var/obj/KirinFull/I = new /obj/KirinFull/
				var/obj/KirinFull/J = new /obj/KirinFull/
				var/obj/KirinFull/K = new /obj/KirinFull/
				var/obj/KirinFull/L = new /obj/KirinFull/
				var/obj/KirinFull/N = new /obj/KirinFull/
				A.loc = locate(usr.x, usr.y+2, usr.z)
				B.loc = locate(usr.x+2, usr.y+2, usr.z)
				C.loc = locate(usr.x-2, usr.y-4, usr.z)
				D.loc = locate(usr.x-3, usr.y+3, usr.z)
				E.loc = locate(usr.x+3, usr.y-6, usr.z)
				F.loc = locate(usr.x-4, usr.y+5, usr.z)
				G.loc = locate(usr.x+4, usr.y-5, usr.z)
				H.loc = locate(usr.x-5, usr.y+2, usr.z)
				I.loc = locate(usr.x+5, usr.y-3, usr.z)
				J.loc = locate(usr.x, usr.y-6, usr.z)
				K.loc = locate(usr.x, usr.y+6, usr.z)
				L.loc = locate(usr.x-6, usr.y, usr.z)
				N.loc = locate(usr.x+6, usr.y, usr.z)
				A.nin=usr.nin
				B.nin=usr.nin
				C.nin=usr.nin
				D.nin=usr.nin
				E.nin=usr.nin
				F.nin=usr.nin
				G.nin=usr.nin
				H.nin=usr.nin
				I.nin=usr.nin
				J.nin=usr.nin
				K.nin=usr.nin
				L.nin=usr.nin
				N.nin=usr.nin
				A.Gowner=usr
				B.Gowner=usr
				C.Gowner=usr
				D.Gowner=usr
				E.Gowner=usr
				F.Gowner=usr
				G.Gowner=usr
				H.Gowner=usr
				I.Gowner=usr
				J.Gowner=usr
				K.Gowner=usr
				L.Gowner=usr
				N.Gowner=usr
				sleep(60)
				usr.Frozen=0
				del(A)
				del(B)
				del(C)
				del(D)
				del(E)
				del(F)
				del(G)
				del(H)
				del(I)
				del(J)
				del(K)
				del(L)
				del(N)
				sleep(25)
				usr.firing=0
				return
obj//ERROR
	chidorib
		density=1
		icon='KirinFull.dmi'
		icon_state=""
		New()
			..()
			spawn()
				src.delete()
		proc/delete()
			spawn(15)
				del(src)
obj//ERROR
	chidoria
		density=1
		icon='KirinFull.dmi'
		icon_state=""
		Move()
			..()
			var/obj/chidorib/T = new /obj/chidorib
			if(src.dir == NORTH)
				T.loc = src.loc
				T.y = src.y-1
				T.dir = src.dir
			if(src.dir == SOUTH)
				T.loc = src.loc
				T.y = src.y+1
				T.dir = src.dir
			if(src.dir == WEST)
				T.loc = src.loc
				T.x = src.x+1
				T.dir = src.dir
			if(src.dir == EAST)
				T.loc = src.loc
				T.x = src.x-1
				T.dir = src.dir
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					del(src)
					return
				if(!M.PK)
					return
				var/damage = round(src.nin*1.5)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Chidori Eiso for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Uchiha
	verb
		Eiso()
			set category = "NinJutsu"
			set name = "Chidori Eiso"
			usr.Handseals()
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(!usr.handseals)
				return
			if(usr.intank)
				return
			if(usr.chakra <= 500)
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
			else
				usr.firing=1
				view()<<"<font color=silver><b><font face=verdana>[usr]: Chidori Eiso!!"
				usr.chakra -= 500
				var/obj/chidoria/B = new /obj/chidoria
				B.Gowner=usr
				B.nin = usr.nin
				B.loc = usr.loc
				B.Move_Delay=0
				usr.Chakragain()
				walk(B,usr.dir)
				sleep(10)
				usr.firing=0
				sleep(15)
				del(B)
