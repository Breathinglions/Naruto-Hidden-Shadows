mob/Owner
	verb
		CreatObject()
			set category = "Staff"
			var/obj/Custom/A = new()
			A.loc=usr
			usr<<"You Have Created A Custom Obj, Check Your Inventory"
			text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [usr] Created Custom Object<BR>","GMlog.html")

		GiveGMItems()
			set category = "Staff"
			var/mob/M = input("Who Would You Like To Give GM Suit To","GM Items")as null|anything in players
			if(!M.GM) return
			if(!M) return
			var/obj/GMCoat/B = new()
			var/obj/GMnecklace/S = new()
			var/obj/GameModHB/C = new()
			B.loc=M
			S.loc=M
			C.loc=M
			M<<"You Have Been Given The Staff Outfit"

		/*Stealicon(O in view()) // This needs to work on Overlays if people use them if we think they are good for the game.
			set category = "Staff"
			usr << ftp(O:icon)*/

		TakeVerb()
			set name = "Take Verb"
			set category = "Staff"
			var/mob/M = input("Who would you to take a verb from?","Take Verb") in players + list ("Cancel")
			var/varVerb = input("What verb would you like to take from [M:name]?","Take Verb") in M:verbs + list("Cancel")
			if(varVerb != "Cancel" && M:key != null)
				M:verbs -= varVerb
				text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [usr] Took [varVerb] from [M:name]<BR>","GMlog.html")
		MakeStaff()
			set category="Staff"
			set name="Make Staff"
			var/mob/M = input("Who would you like to give GM powers too.","Make Staff")as null|anything in players
			switch(input("What level of GM power would you like to give [M]?","Make Staff",text)in list("Jutsu","Admin","Co-Owner","GM","Cancel"))
				if("Admin")
					M.verbs += typesof(/mob/Admin/verb)
					M.verbs += typesof(/mob/GM/verb)
					M.GM+=1
					M.Rank2="Administrator"
					M.SaveK()
					usr<<"[M] is now a [M.Rank2]."
					M<<"[usr] has made you apart of the staff. Your current staff level is [M.Rank2]."
					return
				if("Co-Owner")
					M.verbs += typesof(/mob/CoOwner/verb)
					M.verbs += typesof(/mob/Admin/verb)
					M.verbs += typesof(/mob/GM/verb)
					M.GM+=1
					M.Rank2="Co-Owner"
					M.SaveK()
					usr<<"[M] is now a [M.Rank2]."
					M<<"[usr] has made you apart of the staff. Your current staff level is [M.Rank2]."
					return
				if("GM")
					M.verbs += typesof(/mob/GM/verb)
					M.GM+=1
					M.Rank2="GM"
					M.SaveK()
					usr<<"[M] is now a [M.Rank2]."
					M<<"[usr] has made you apart of the staff. Your current staff level is [M.Rank2]."
					return
				if("Jutsu")
					src.verbs += /mob/Protection_Sphere/verb/Protection_Sphere
					src.verbs += /mob/Blazing_Hell/verb/Blazing_Hell
					src.verbs += /mob/FlashStep/verb/FlashStep
					src.verbs += /mob/Death/verb/DeathEye
					M.GM+=1
					M.SaveK()
					usr<<"You have given [M] Hidden Jutsu!"
					M<<"[usr] has given you Hidden Jutsu!"
				if("Cancel")
					return
		RemoveStaff()
			set category="Staff"
			set name="Remove Staff"
			var/mob/M = input("Who would you like to give GM powers too.","Make Staff")as null|anything in players
			switch(input("What level of GM power would you like to give [M]?","Make Staff",text)in list("Remove Staff Verbs","Cancel"))
				if("Remove Staff Verbs")
					M.verbs -= typesof(/mob/CoOwner/verb)
					M.verbs -= typesof(/mob/Admin/verb)
					M.verbs -= typesof(/mob/GM/verb)
					M.GM-=1
					M.Rank2="Player"
					M.SaveK()
					usr<<"[M] is now a regular [M.Rank2]."
					M<<"[usr] has removed you from staff."
					return
				if("Cancel")
					return

	/*	giveDeathE()
			set name = "Give Death Eyes"
			set category = "Staff"
			var/mob/M = input("","Death Eyes")as null|anything in players
			if(!M) return
			M.verbs += new /mob/Death/verb/DeathEye()
			M<<"<b><font color = blue>You've Been Given Deaths Eyes from [usr]!"
			usr<<"<b><font color = blue>You gave [M] Deaths Eyes!"
			text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [usr] Gave [M] Death Eyes<BR>","GMlog.html")*/

		MaxStats()
			set category = "Staff"
			var/mob/M = input("","Max Stats") as null|anything in players
			if(!M) return
			M.kills+=250
			M.Mtai = M.cap
			M.Mnin = M.cap
			M.Mgen = M.cap
			M.Mshurikenskill = M.cap
			M.Mkunaiskill = M.cap
			M.Mtrapskill = M.cap
			M.Mhealth = M.Stamcap
			M.Mchakra = M.Chakracap
			M.Restore()

		WorldSav()
			set category = "Staff"
			set name = "Save All Players"
			world.SaveAll()
			usr<<"<font face = Tahoma size = 3 color=yellow>!!!All Players Have Been Saved!!!"
			text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [usr] Saved All Players<BR>","GMlog.html")
