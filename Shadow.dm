mob
	var
		tmp
			Shadow = 0
		verb
			ShadowAdd()
				var/image/Shadow = image(icon = src.icon,icon_state = src.icon_state,loc =src,pixel_y = -48)
				client.images += Shadow
				var/matrix/M = matrix()
				M.Scale(1 , -1)
				animate(Shadow , transform = M , color = rgb(0,0,0) , alpha = 150)
				Shadow = 1
			ShadowRemove()
				for(var/image/Shadow in client.images)
					if(Shadow.icon == src.icon && Shadow.icon_state == src.icon_state && Shadow.loc == src && Shadow.pixel_y == -world.icon_state)
					del(Shadow)
