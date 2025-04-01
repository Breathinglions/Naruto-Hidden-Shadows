mob/Haku
	verb
		CKI()
			set category = "NinJutsu"
			set name = "Hissatsu Hyoso"
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
			if(usr.chakra <= 9999)
				usr<<"You dont have enough chakra!"
				return
			else // If the firing var isn't 1...
				usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
				view()<<"[usr]: Hissatsu Hyoso!"
				var/obj/Ice1/F = new /obj/Ice1/
				var/obj/Ice1/G = new /obj/Ice1/
				var/obj/Ice1/H = new /obj/Ice1/
				var/obj/Ice1/I = new /obj/Ice1/
				var/obj/Ice1/J = new /obj/Ice1/
				var/obj/Ice1/L = new /obj/Ice1/
				var/obj/Ice1/A = new /obj/Ice1/
				var/obj/Ice1/B = new /obj/Ice1/
				var/obj/Ice1/M2 = new /obj/Ice1/
				var/obj/Ice1/N = new /obj/Ice1/
				var/obj/Ice1/O = new /obj/Ice1/
				var/obj/Ice1/P = new /obj/Ice1/
				var/obj/Ice1/D = new /obj/Ice1/
				var/obj/Ice1/E = new /obj/Ice1/
				var/obj/Ice1/C = new /obj/Ice1/
				var/obj/Ice1/K = new /obj/Ice1/
				var/obj/Ice1/Q = new /obj/Ice1/
				var/obj/Ice1/AJ = new /obj/Ice1/
				var/obj/Ice1/AK = new /obj/Ice1/
				var/obj/Ice1/AL = new /obj/Ice1/
				var/obj/Ice1/AM = new /obj/Ice1/
				var/obj/Ice1/AN = new /obj/Ice1/
				var/obj/Ice1/AO = new /obj/Ice1/
				var/obj/Ice1/AP = new /obj/Ice1/
				var/obj/Ice1/AQ = new /obj/Ice1/
				usr.chakra -= 10000
				A.owner=usr
				B.owner=usr
				C.owner=usr
				D.owner=usr
				E.owner=usr
				F.owner=usr
				G.owner=usr
				H.owner=usr
				I.owner=usr
				J.owner=usr
				K.owner=usr
				L.owner=usr
				M2.owner=usr
				N.owner=usr
				O.owner=usr
				P.owner=usr
				Q.owner=usr
				AJ.owner=usr
				AK.owner=usr
				AL.owner=usr
				AM.owner=usr
				AN.owner=usr
				AO.owner=usr
				AP.owner=usr
				AQ.owner=usr
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
				M2.nin=usr.nin
				N.nin=usr.nin
				O.nin=usr.nin
				P.nin=usr.nin
				Q.nin=usr.nin
				AJ.nin=usr.nin
				AK.nin=usr.nin
				AL.nin=usr.nin
				AM.nin=usr.nin
				AN.nin=usr.nin
				AO.nin=usr.nin
				AP.nin=usr.nin
				AQ.nin=usr.nin
				K.loc = locate(usr.x,usr.y,usr.z)
				K.Ice1=1
				A.loc = locate(usr.x+1,usr.y,usr.z)
				A.Ice1=1
				C.loc = locate(usr.x-1,usr.y,usr.z)
				C.Ice1=1
				B.loc = locate(usr.x,usr.y+1,usr.z)
				B.Ice1=1
				D.loc = locate(usr.x,usr.y-1,usr.z)
				D.Ice1=1
				E.loc = locate(usr.x+1,usr.y+1,usr.z)
				E.Ice1=1
				F.loc = locate(usr.x-1,usr.y-1,usr.z)
				F.Ice1=1
				G.loc = locate(usr.x-1,usr.y+1,usr.z)
				G.Arera=1
				H.loc = locate(usr.x+1,usr.y-1,usr.z)
				H.Arera=1
				I.loc = locate(usr.x+2,usr.y,usr.z)
				I.Ice1=1
				J.loc = locate(usr.x-2,usr.y,usr.z)
				J.Ice1=1
				L.loc = locate(usr.x,usr.y+2,usr.z)
				L.Ice1=1
				M2.loc = locate(usr.x,usr.y-2,usr.z)
				M2.Ice1=1
				N.loc = locate(usr.x+2,usr.y+2,usr.z)
				N.Ice1=1
				O.loc = locate(usr.x-2,usr.y-2,usr.z)
				O.Ice1=1
				P.loc = locate(usr.x-2,usr.y+2,usr.z)
				P.Ice1=1
				Q.loc = locate(usr.x+2,usr.y-2,usr.z)
				Q.Ice1=1
				AJ.loc = locate(usr.x-1,usr.y-2,usr.z)
				AJ.Ice1=1
				AK.loc = locate(usr.x+1,usr.y+2,usr.z)
				AK.Ice1=1
				AL.loc = locate(usr.x+1,usr.y-2,usr.z)
				AL.Ice1=1
				AM.loc = locate(usr.x-1,usr.y+2,usr.z)
				AM.Ice1=1
				AN.loc = locate(usr.x+2,usr.y+1,usr.z)
				AN.Ice1=1
				AO.loc = locate(usr.x-2,usr.y-1,usr.z)
				AO.Ice1=1
				AP.loc = locate(usr.x-2,usr.y+1,usr.z)
				AP.Ice1=1
				AQ.loc = locate(usr.x+2,usr.y-1,usr.z)
				AQ.Ice1=1
				flick("rise",A)
				flick("rise",B)
				flick("rise",C)
				flick("rise",D)
				flick("rise",E)
				flick("rise",F)
				flick("rise",G)
				flick("rise",H)
				flick("rise",I)
				flick("rise",J)
				flick("rise",K)
				flick("rise",L)
				flick("rise",M2)
				flick("rise",N)
				flick("rise",O)
				flick("rise",P)
				flick("rise",Q)
				flick("rise",AJ)
				flick("rise",AK)
				flick("rise",AL)
				flick("rise",AM)
				flick("rise",AN)
				flick("rise",AO)
				flick("rise",AP)
				flick("rise",AQ)
				for(var/mob/M in oview(3,usr))
					var/damage=round(usr.nin*1.8)
					view()<<"[M] has taken [damage] damage from [usr]'s Hissatsu Hyoso"
					M.health-=damage
					if(M.health<=0)
						M.Death(usr)
				sleep(100)
				del(K)
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
				del(L)
				del(M2)
				del(N)
				del(O)
				del(P)
				del(Q)
				del(AJ)
				del(AK)
				del(AL)
				del(AM)
				del(AN)
				del(AO)
				del(AP)
				del(AQ)
				sleep(100)
				usr.firing=0



obj//ERROR
	babunarm3
		density=1
		icon='IceDragon.dmi'
		icon_state="body"
		New()
			..()
			spawn()
				src.delete()
		proc/delete()
			spawn(10)
				del(src)
obj//ERROR
	icefist
		density=1
		icon='IceDragon.dmi'
		icon_state="head"
		Move()
			..()
			var/obj/babunarm3/T = new /obj/babunarm3
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
					view(M) << "[M] was hit by Hyouton Hyouran No Jutsu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Haku
	verb
		Ice_D()
			set category = "NinJutsu"
			set name = "Hyoton Hyoryudan no jutsu"
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else
				usr.firing=1
				view()<<"<font color=blue><b><font face=verdana>[usr]: Hyoton Hyoryudan No Jutsu!!"
				usr.chakra -= 500
				var/obj/icefist/B = new /obj/icefist
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

mob/Haku
	verb
		MakyouHyoushou()
			set category = "NinJutsu"
			set name = "Makyou Hyoushou"
			usr.Handseals()
			if(usr.firing)
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
			if(!usr:PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra<=9999)
				return
			if(!usr.handseals)
				return
			if(usr.jailtime)
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			if(!usr.hyoushou)
				usr<<"To throw needles use Sensatsu, When you are using Hyoushou, Sensatsu Suishou changes to fit your need"
				usr.hyoushou=1
				usr.Chakragain()
				usr.chakra-=5000
				usr.hyoushou=1
				var/obj/DemonMirror/A = new /obj/DemonMirror
				var/obj/DemonMirror/B = new /obj/DemonMirror
				var/obj/DemonMirror/C = new /obj/DemonMirror
				var/obj/DemonMirror/D = new /obj/DemonMirror
				var/obj/DemonMirror/E = new /obj/DemonMirror
				var/obj/DemonMirror/F = new /obj/DemonMirror
				var/obj/DemonMirror/G = new /obj/DemonMirror
				var/obj/DemonMirror/H = new /obj/DemonMirror
				var/obj/DenseThing/A1 = new /obj/DenseThing
				var/obj/DenseThing/B2 = new /obj/DenseThing
				var/obj/DenseThing/C3 = new /obj/DenseThing
				var/obj/DenseThing/D4 = new /obj/DenseThing
				var/obj/DenseThing/E5 = new /obj/DenseThing
				var/obj/DenseThing/F6 = new /obj/DenseThing
				var/obj/DenseThing/G7 = new /obj/DenseThing
				var/obj/DenseThing/H8 = new /obj/DenseThing
				var/obj/DenseThing/I9 = new /obj/DenseThing
				var/obj/DenseThing/J10 = new /obj/DenseThing
				var/obj/DenseThing/K11 = new /obj/DenseThing
				var/obj/DenseThing/L12 = new /obj/DenseThing
				var/obj/DenseThing/M13 = new /obj/DenseThing
				var/obj/DenseThing/N14 = new /obj/DenseThing
				var/obj/DenseThing/O15 = new /obj/DenseThing
				var/obj/DenseThing/P16 = new /obj/DenseThing
				var/obj/DenseThing/Q17 = new /obj/DenseThing
				var/obj/DenseThing/R18 = new /obj/DenseThing
				var/obj/DenseThing/S19 = new /obj/DenseThing
				var/obj/DenseThing/T20 = new /obj/DenseThing
				var/obj/DenseThing/U21 = new /obj/DenseThing
				var/obj/DenseThing/V22 = new /obj/DenseThing
				var/obj/DenseThing/W23 = new /obj/DenseThing
				var/obj/DenseThing/X24 = new /obj/DenseThing
				A1.owner=usr
				B2.owner=usr
				C3.owner=usr
				D4.owner=usr
				E5.owner=usr
				F6.owner=usr
				G7.owner=usr
				H8.owner=usr
				I9.owner=usr
				J10.owner=usr
				K11.owner=usr
				L12.owner=usr
				M13.owner=usr
				N14.owner=usr
				O15.owner=usr
				P16.owner=usr
				Q17.owner=usr
				R18.owner=usr
				S19.owner=usr
				T20.owner=usr
				U21.owner=usr
				V22.owner=usr
				W23.owner=usr
				X24.owner=usr
				A1.loc = locate(usr.x-3,usr.y+4,usr.z)//Tops
				B2.loc = locate(usr.x-2,usr.y+4,usr.z)//Tops
				C3.loc = locate(usr.x-1,usr.y+4,usr.z)//Tops
				D4.loc = locate(usr.x+1,usr.y+4,usr.z)//Tops
				E5.loc = locate(usr.x+2,usr.y+4,usr.z)//Tops
				F6.loc = locate(usr.x+3,usr.y+4,usr.z)//Tops
				G7.loc = locate(usr.x-3,usr.y-4,usr.z)//Bottoms
				H8.loc = locate(usr.x-2,usr.y-4,usr.z)//Bottoms
				I9.loc = locate(usr.x-1,usr.y-4,usr.z)//Bottoms
				J10.loc = locate(usr.x+1,usr.y-4,usr.z)//Bottoms
				K11.loc = locate(usr.x+2,usr.y-4,usr.z)//Bottoms
				L12.loc = locate(usr.x+3,usr.y-4,usr.z)//Bottoms
				M13.loc = locate(usr.x-4,usr.y+1,usr.z)//Lefts
				N14.loc = locate(usr.x-4,usr.y+2,usr.z)//Lefts
				O15.loc = locate(usr.x-4,usr.y+3,usr.z)//Lefts
				P16.loc = locate(usr.x-4,usr.y-1,usr.z)//Lefts
				Q17.loc = locate(usr.x-4,usr.y-2,usr.z)//Lefts
				R18.loc = locate(usr.x-4,usr.y-3,usr.z)//Lefts
				S19.loc = locate(usr.x+4,usr.y+1,usr.z)//Rights
				T20.loc = locate(usr.x+4,usr.y+2,usr.z)//Rights
				U21.loc = locate(usr.x+4,usr.y+3,usr.z)//Rights
				V22.loc = locate(usr.x+4,usr.y-1,usr.z)//Rights
				W23.loc = locate(usr.x+4,usr.y-2,usr.z)//Rights
				X24.loc = locate(usr.x+4,usr.y-3,usr.z)//Rights
				A.loc = locate(usr.x-4,usr.y,usr.z)
				A.owner=usr
				B.loc = locate(usr.x,usr.y-4,usr.z)
				B.owner=usr
				C.loc = locate(usr.x-4,usr.y-4,usr.z)
				C.owner=usr
				D.loc = locate(usr.x+4,usr.y,usr.z)
				D.owner=usr
				E.loc = locate(usr.x+4,usr.y+4,usr.z)
				E.owner=usr
				F.loc = locate(usr.x,usr.y+4,usr.z)
				F.owner=usr
				G.loc = locate(usr.x+4,usr.y-4,usr.z)
				G.owner=usr
				H.loc = locate(usr.x-4,usr.y+4,usr.z)
				H.owner=usr
				Gotcha
					if(usr.chakra>=5)
						if(usr.hyoushou)
							if(A)
								usr.loc = A.loc
								usr.chakra-=100
							sleep(13)
							if(B)
								usr.loc = B.loc
								usr.chakra-=100
							sleep(13)
							if(C)
								usr.loc = C.loc
								usr.chakra-=100
							sleep(13)
							if(D)
								usr.loc = D.loc
								usr.chakra-=100
							sleep(13)
							if(E)
								usr.loc = E.loc
								usr.chakra-=100
							sleep(13)
							if(F)
								usr.loc = F.loc
								usr.chakra-=100
							sleep(13)
							if(G)
								usr.loc = G.loc
								usr.chakra-=100
							sleep(13)
							if(H)
								usr.loc = H.loc
								usr.chakra-=100
					switch(input("Do you wish to cancel out of Mirrors?") in list("Yes","No"))
						if("Yes")
							del(A)
							del(B)
							del(C)
							del(D)
							del(E)
							del(F)
							del(G)
							del(H)
							del(A1)
							del(B2)
							del(C3)
							del(D4)
							del(E5)
							del(F6)
							del(G7)
							del(H8)
							del(I9)
							del(J10)
							del(K11)
							del(L12)
							del(M13)
							del(N14)
							del(O15)
							del(P16)
							del(Q17)
							del(R18)
							del(S19)
							del(T20)
							del(U21)
							del(V22)
							del(W23)
							del(X24)
							sleep(60)
							usr.hyoushou=0
							usr.hyoushou=0
						if("No")
							goto Gotcha

mob/Haku
	verb
		SensatsuSuishou() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Sensatsu Suishou"
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 15)
				usr<<"You dont have enough chakra!"
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
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else // If the firing var isn't 1...
				if(!usr.hyoushou)
					usr.chakra -= 10
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.SensatsuN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#c0c0c0>S</FONT><FONT COLOR=#c4c8c8>e</FONT><FONT COLOR=#c8d0d0>n</FONT><FONT COLOR=#ccd8d8>s</FONT><FONT COLOR=#d1e0e0>a</FONT><FONT COLOR=#d5e8e8>t</FONT><FONT COLOR=#d9f0f0>s</FONT><FONT COLOR=#ddf8f8>u</FONT><FONT COLOR=#e0ffff> </FONT><FONT COLOR=#dbfbfd>S</FONT><FONT COLOR=#d4f6fa>u</FONT><FONT COLOR=#cef1f6>i</FONT><FONT COLOR=#c7ecf3>s</FONT><FONT COLOR=#c1e7f0>h</FONT><FONT COLOR=#bae2ed>o</FONT><FONT COLOR=#b4dde9>u</FONT><FONT COLOR=#add8e6>!</FONT>"
					var/obj/Sensatsu/S1 = new /obj/Sensatsu
					var/obj/Sensatsu/S2 = new /obj/Sensatsu
					var/obj/Sensatsu/S3 = new /obj/Sensatsu
					var/obj/Sensatsu/S4 = new /obj/Sensatsu
					var/obj/Sensatsu/S5 = new /obj/Sensatsu
					var/obj/Sensatsu/S6 = new /obj/Sensatsu
					var/obj/Sensatsu/S7 = new /obj/Sensatsu
					var/obj/Sensatsu/S8 = new /obj/Sensatsu
					usr.Chakragain()
					S1.loc = usr.loc
					S1.nin=usr.nin
					S1.dir = NORTH
					S1.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S1.Gowner=usr
					walk(S1,NORTH)
					S2.loc = usr.loc
					S2.nin=usr.nin
					S2.dir = SOUTH
					S2.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S2.Gowner=usr
					walk(S2,SOUTH)
					S3.loc = usr.loc
					S3.nin=usr.nin
					S3.dir = WEST
					S3.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S3.Gowner=usr
					walk(S3,WEST)
					S4.loc = usr.loc
					S4.nin=usr.nin
					S4.dir = EAST
					S4.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S4.Gowner=usr
					walk(S4,EAST)
					S5.loc = usr.loc
					S5.nin=usr.nin
					S5.dir = NORTH
					S5.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S5.Gowner=usr
					walk(S5,NORTH)
					S6.loc = usr.loc
					S6.nin=usr.nin
					S6.dir = SOUTH
					S6.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S6.Gowner=usr
					walk(S6,SOUTH)
					S7.loc = usr.loc
					S7.nin=usr.nin
					S7.dir = WEST
					S7.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S7.Gowner=usr
					walk(S7,WEST)
					S8.loc = usr.loc
					S8.nin=usr.nin
					S8.dir = EAST
					S8.name="[usr]"
					usr.Savedspeed = usr.Move_Delay
					usr.Move_Delay = usr.Speed2
					S8.Gowner=usr
					walk(S8,EAST)
					sleep(10)
					usr.firing = 0
					sleep(45)
					del(S1)
					del(S2)
					del(S3)
					del(S4)
					del(S5)
					del(S6)
					del(S7)
					del(S8)
					return
				else
					for(var/mob/M in oview(6,usr))
						if(M.hyoushou)
							usr.chakra -= 20
							usr.SensatsuN += 1
							usr.firing = 1
							var/obj/Sensatsu/S1 = new /obj/Sensatsu
							var/obj/Sensatsu/S2 = new /obj/Sensatsu
							var/obj/Sensatsu/S3 = new /obj/Sensatsu
							var/obj/Sensatsu/S4 = new /obj/Sensatsu
							S1.loc = usr.loc
							S1.nin=usr.nin
							S1.name="[usr]"
							S1.Gowner=usr
							walk_towards(S1,M)
							sleep(5)
							S2.loc = usr.loc
							S2.nin=usr.nin
							S2.name="[usr]"
							S2.Gowner=usr
							walk_towards(S2,M)
							sleep(5)
							S3.loc = usr.loc
							S3.nin=usr.nin
							S3.name="[usr]"
							S3.Gowner=usr
							walk_towards(S3,M)
							sleep(5)
							S4.loc = usr.loc
							S4.nin=usr.nin
							S4.name="[usr]"
							S4.Gowner=usr
							walk_towards(S4,M)
							sleep(10)
							usr.firing = 0
							sleep(40)
							del(S1)
							del(S2)
							del(S3)
							del(S4)
							return

mob/Haku
	verb
		Needle_Jutsu(mob/M in oview(usr)) // Verb used for firing the beam
			set category = "TaiJutsu"
			set name = "Kage Needle No Jutsu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten) // If the mob's firing var is one...
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.nin/5
				Death(usr)
				return
			if(!usr.handseals)
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
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 20)
				usr<<"You dont have enough chakra!"
				return
			if(src.ritual)
				usr<<"Now, let us savor the utmost suffering together!."
				src<<"Dude, that was weak!"
				usr.health -= src.Mnin
				Death(usr)
				return
			else // If the firing var isn't 1...
				if(usr.Fuuton3N >= 40)
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.move = 0 // Disables the mob's movement
					usr.Fuuton3N += 1
					usr.chakra -= 20
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=grey> Says: Needle No Jutsu!"
					var/obj/Needle/D = new /obj/Needle
					var/obj/Needle/S = new /obj/Needle
					var/obj/Needle/K = new /obj/Needle
					usr.target=M
					K.loc = usr.loc
					K.nin=usr.nin
					K.name="[usr]"
					usr.Chakragain()
					K.Move_Delay=2
					K.Gowner=usr
					walk_towards(K,M)
					sleep(5)
					D.loc = usr.loc
					D.nin=usr.nin
					D.Move_Delay=2
					D.name="[usr]"
					D.Gowner=usr
					walk_towards(D,M)
					sleep(5)
					S.loc = usr.loc
					S.nin=usr.nin
					S.Move_Delay=2
					S.name="[usr]"
					S.Gowner=usr
					walk_towards(S,M)
					sleep(1)
					usr.move = 1
					sleep(10)
					usr.firing = 0
					sleep(21)
					del(D)
					del(S)
					del(K)
					if (target == null)
						del(D)
						del(S)
						del(K)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.ninexp += rand(1,10)
							usr.Nin()
							usr.Skills()
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							return
					else
						usr.random = rand(1,20)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								if(usr.ChakraC>=100)
									usr.ChakraC=100
									return
								else
									usr.ChakraC+=ccgain
									usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.move = 0 // Disables the mob's movement
						usr.chakra -= 20
						usr.Fuuton3N += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=grey> Says: Needle No Jutsu!"
						var/obj/Needle/D = new /obj/Needle
						var/obj/Needle/S = new /obj/Needle
						var/obj/Needle/K = new /obj/Needle
						usr.target=M
						K.loc = usr.loc
						K.nin=usr.nin
						K.name="[usr]"
						K.Move_Delay=2
						K.Gowner=usr
						walk_towards(K,M)
						sleep(5)
						D.loc = usr.loc
						usr.Chakragain()
						D.nin=usr.nin
						D.Move_Delay=2
						D.name="[usr]"
						D.Gowner=usr
						walk_towards(D,M)
						sleep(5)
						S.loc = usr.loc
						S.nin=usr.nin
						S.Move_Delay=2
						S.name="[usr]"
						S.Gowner=usr
						walk_towards(S,M)
						sleep(1)
						usr.move = 1
						sleep(10)
						usr.firing = 0
						sleep(21)
						del(D)
						del(S)
						del(K)
						if (target == null)
							del(D)
							del(S)
							del(K)
						if(usr.Mnin <= usr.cap)
							usr.random = rand(1,6)
							if(random == 5||random==1)
								usr.ninexp += rand(1,10)
								usr.Nin()
								usr.Skills()
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(usr.ChakraC>=100)
										usr.ChakraC=100
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
							else
								return
						else
							usr.random = rand(1,20)
							if(random == 5||random==1)
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									if(usr.ChakraC>=100)
										usr.ChakraC=100
										return
									else
										usr.ChakraC+=ccgain
										usr<<"[usr] you gained [ccgain] Chakra control..."
							else
								return
					usr<<"You failed to use Needle No Jutsu"
