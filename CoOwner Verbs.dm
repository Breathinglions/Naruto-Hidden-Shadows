mob/CoOwner
	verb
		CheckPack()
			set name = "Check Inventory"
			set category = "Staff"
			var/mob/M = input("","Check Inventory")as null|anything in players
			if(!M) return
			var/varPackList = list()
			if(locate(/obj) in M:contents)
				for(var/obj/O in M:contents)
					varPackList += O
			else
				src << "[M:name] has an empty inventory"
				return
			var/varPackItem = input("Pick an item from [M:name]'s pack","Check Inventory") in varPackList + list("Cancel")
			if(varPackItem != "Cancel")
				if(alert("Would you like to delete [varPackItem:name] from [M:name]'s inventory?","[varPackItem:name]","Yes","No") == "Yes")
					del(varPackItem)
		GotoFOD()
			set name = "Goto FOD"
			set category = "Staff"
			set desc = "Go to Forest of Death"
			usr.loc = locate(51,44,30)

		Freeze()
			set name = "Freeze"
			set category = "Staff"
			var/mob/M = input("","Freeze") as null|anything in players
			if(!M) return
			M<<"You Have Been Frozen By [usr]"
			M.Frozen = 1
		Unfreeze()
			set name = "Unfreeze"
			set category = "Staff"
			var/mob/M = input("","UnFreeze") as null|anything in players
			if(!M) return
			M<<"You Have Been UnFrozen By [usr]"
			M.Frozen = 0
		DeathVerb()
			set name = "Death"
			set category = "Staff"
			var/mob/M = input("","Death")as null|anything in players
			if(M.constantx) return
			if(!M) return
			M.health = 0
			M.Death(usr)
		GiveTournemantP()
			set name = "Special Yen"
			set category = "Staff"
			var/mob/M = input("","Special Yen")as null|anything in players
			if(!M) return
			M.tourneyP += 1
			M<<"You were given 1 Special Yen by [usr]"
			usr<<"You have given Special Yen to [M]"
		Create()
			set name = "Create"
			set category = "Staff"
			var/varItem
			var/varType = input("What do you want to create?","Create") in list("Object","Mob","Turf","Cancel")
			if(varType == "Cancel")
				return
			if(varType == "Object")
				varItem = input("What do you want to make?","Create obj") in typesof(/obj) + list("Cancel")
			if(varType == "Mob")
				varItem = input("What do you want to make?","Create mob") in typesof(/mob) + list("Cancel")
			if(varType == "Turf")
				varItem = input("What do you want to make?","Create turf") in typesof(/turf) + list("Cancel")
			new varItem(locate(src.x,src.y,src.z))

		Edit(var/O as obj|mob|turf in view(src))
			set name = "Edit"
			set category = "Staff"
			var/variable = input("Which var?","Var") in O:vars + list("Cancel")
			if(variable == "Cancel")
				return
			var/default
			var/typeof = O:vars[variable]
			if(isnull(typeof))
				default = "Text"
			else if(isnum(typeof))
				default = "Num"
				dir = 1
			else if(istext(typeof))
				default = "Text"
			else if(isloc(typeof))
				default = "Reference"
			else if(isicon(typeof))
				typeof = "\icon[typeof]"
				default = "Icon"
			else if(istype(typeof,/atom) || istype(typeof,/datum))
				default = "Type"
			else if(istype(typeof,/list))
				default = "List"
			else if(istype(typeof,/client))
				default = "Cancel"
			else
				default = "File"
			var/class = input("What kind of variable?","Variable Type",default) in list("Text","Num","Type","Reference","Icon","File","Restore to default","List","Null","Cancel")
			switch(class)
				if("Cancel")
					return
				if("Restore to default")
					O:vars[variable] = initial(O:vars[variable])
					text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [O] was restored to default by [usr]<BR>","GMlog.html")
				if("Text")
					O:vars[variable] = input("Enter new text:","Text",O:vars[variable]) as text
					text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [O] had one of his [variable] edited with text by [usr]<BR>","GMlog.html")
				if("Num")
					O:vars[variable] = input("Enter new number:","Num",O:vars[variable]) as num
					text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [O] had one of his [variable] edited with numbers by [usr]<BR>","GMlog.html")
				if("Type")
					O:vars[variable] = input("Enter type:","Type",O:vars[variable]) in typesof(/obj,/mob,/area,/turf)
				if("Reference")
					O:vars[variable] = input("Select reference:","Reference",O:vars[variable]) as mob|obj|turf|area in world
				if("File")
					O:vars[variable] = input("Pick file:","File",O:vars[variable]) as file
				if("Icon")
					O:vars[variable] = input("Pick icon:","Icon",O:vars[variable]) as icon
				if("List")
					input("This is what's in [variable]") in O:vars[variable] + list("Close")
				if("Null")
					if(alert("Are you sure you want to clear this variable?","Null","Yes","No") == "Yes")
						O:vars[variable] = null