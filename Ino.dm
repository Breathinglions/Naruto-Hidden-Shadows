proc
	SwitchBody(mob/M)
		var x[] = list(
			M,
			M.client.screen,
			M.client.images
			)
			world << "Ginyu: BODY CHANGE NOW!"
			M.client.screen = src.client.screen
			M.client.images = src.client.images
			M.client.mob = src
			src.client.mob = x[1]
			src.client.screen = x[2]
			src.client.images = x[3]
			var/obj/shadow = new
			shadow.pixel_z = 2
			shadow.invisibility = 2
			__ASM__
				L/var/static/X = 1
				/shadow
					parent_type = /obj
					Move()
						walk_to(src,owner)
					New(owner)
						src.owner = owner
					var owner
					proc
						KillJutsu()
							del src

mob/Ino
	verb
		MindSwitch(mob/M in view())
			set name = "" //after
			set category = "NinJutsu
			usr.Handseals()
			global.SwitchBody(M)
			world << "\...[0x40][0x20][0x3]"
			for(var/x in length(world))
				world<<world[x]

mob/Nara
	verb
		ShadowTechnique(mob/M in view())
			set name = "" //after
			set category = "NinJutsu"



//ight do it
