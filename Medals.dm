mob
	proc
		medals(medal)
			switch(medal)
				if("Login")//you can customize this so you can check for certain types of medals, such as "Combat", "Level", "Item Found"
					var/has_medal = world.GetMedal("Login Medal",src)
					if(has_medal) return//if they already have the medal, you don't want them to get it again, Find The Clans In Login.dm
					else
						world.SetMedal("Login Medal",src)//give them the medal
						src<<"<font color=yellow>Congratulations! You have acheived the 'Login Medal'!</font>"
						//customizable alert string ^
				if("Logout")//just displaying how you can diversify it again
					var/has_medal = world.GetMedal("Logout Medal",src)
					if(has_medal) return
					else
						world.SetMedal("Logout Medal",src)
						src<<"<font color=yellow>Congratulations! You have acheived the *Logout Medal*</font>!"

				if("Orochimaru")//if the user chooses the clan
					var/has_medal = world.GetMedal("Orochimaru Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Orochimaru Medal",usr)
						src<<"<font color=purple>Congratulations! You have achieved the *Orochimaru Medal*!</font>"

				if("Uzumaki")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Uzumaki Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Uzumaki Medal",usr)
						src<<"<font color=yellow>Congratulations! You have achieved the *Uzumaki Medal*!</font>"

				if("Tenten")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Tenten Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Tenten Medal",usr)
						src<<"Congratulations! You have achieved the *Tenten Medal*!"

				if("Lee")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Lee Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Lee Medal",usr)
						src<<"<font color=green>Congratulations! You have achieved the *Lee Medal*!</font>"

				if("Jashin")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Jashin Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Jashin Medal",usr)
						src<<"<font color=red>Congratulations! You have achieved the *Jashin Medal*!</font>"

				if("Fuuma")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Fuuma Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Fuuma Medal",usr)
						src<<"<font color=green>Congratulations! You have achieved the *Fuuma Medal*!</font>"

				if("Jiraiya")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Jiraiya Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Jiraiya Medal",usr)
						src<<"Congratulations! You have achieved the *Jiraiya Medal*!"

				if("Gaara")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Gaara Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Gaara Medal",usr)
						src<<"<font color=blue>Congratulations! You have achieved the *Gaara Medal*!</font>"

				if("Normal")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Normal Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Normal Medal",usr)
						src<<"<font color=red>Congratulations!</font><font color=green> You have achieved the *Medic Medal*!</font>"

				if("Sakura")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Sakura Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Sakura Medal",usr)
						src<<"<font color=green>Congratulations!</font><font color=red> You have achieved the *Sakura Medal*!</font>"

				if("Kamizuri")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Tenten Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Kamizuri Medal",usr)
						src<<"<font color=yellow>Congratulations! You have achieved the *Kamizuri Medal*!</font>"

				if("Uchiha")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Tenten Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Uchiha Medal",usr)
						src<<"<font color=red>Congratulations! You have achieved the *Uchiha Medal*!</font>"

				if("Kaguya")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Kaguya Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Kaguya Medal",usr)
						src<<"<font color=gray>Congratulations! You have achieved the *Kaguya Medal*!</font>"

				if("Nagato")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Nagato Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Nagato Medal",usr)
						src<<"<font color=red>Congratulations! You have achieved the *Nagato Medal*!</font>"

				if("Hyuuga")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Hyuuga Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Hyuuga Medal",usr)
						src<<"<font color=green>Congratulations! You have achieved the *Hyuuga Medal*!</font>"

				if("Akimichi")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Akimichi Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Akimichi Medal",usr)
						src<<"<font color=gray>Congratulations! You have achieved the *Akimichi Medal*!</font>"

				if("Aburame")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Aburame Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Aburame Medal",usr)
						src<<"<font color=gray>Congratulations! You have achieved the *Aburame Medal*!</font>"

				if("Deidara")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Deidara Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Deidara Medal",usr)
						src<<"<font color=yellow>Congratulations! You have achieved the *Deidara Medal*!</font>"

				if("Tayuya")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Tayuya Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Tayuya Medal",usr)
						src<<"<font color=purple>Congratulations! You have achieved the *Tayuya Medal*!</font>"

				if("Inuzuka")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Inuzuka Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Inuzuka Medal",usr)
						src<<"<font color=gray>Congratulations! You have achieved the *Inuzuka Medal*!</font>"

				if("Nara")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Nara Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Nara Medal",usr)
						src<<"<font color=gray>Congratulations! You have achieved the *Nara Medal*!</font>"

				if("Haku")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Haku Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Haku Medal",usr)
						src<<"<font color=blue>Congratulations! You have achieved the *Haku Medal*!</font>"

				if("Hatake")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Hatake Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Hatake Medal",usr)
						src<<"<font color=red>Congratulations! You have achieved the *Hatake Medal*!</font>"

				if("Kidomaru")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Kidomaru Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Kidomaru Medal",usr)
						src<<"<font color=yellow>Congratulations! You have achieved the *Kidomaru Medal*!</font>"

				if("Temari")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Temari Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Temari Medal",usr)
						src<<"<font color=purple>Congratulations! You have achieved the *Temari Medal*!</font>"

				if("Sai")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Sai Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Sai Medal",usr)
						src<<"<font color=gray>Congratulations! You have achieved the *Sai Medal*!</font>"

				if("Yamato")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Yamato Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Yamato Medal",usr)
						src<<"<font color=green>Congratulations! You have achieved the *Yamato Medal*!</font>"

				if("Chúnin")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Chúnin Medal",src)
					if(has_medal) return
					else
						world.SetMedal("Chúnin Medal",src)
						src<<"<font color=yellow>Congratulations! You have achieved the *Chúnin Medal*!</font>"

				if("Jounin")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Jounin Medal",src)
					if(has_medal) return
					else
						world.SetMedal("Jounin Medal",src)
						src<<"<font color=green>Congratulations! You have achieved the *Jounin Medal*!</font>"

				if("Hunter")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Hunter Medal",src)
					if(has_medal) return
					else
						world.SetMedal("Hunter Medal",src)
						src<<"<font color=gray>Congratulations! You have achieved the *Hunter Medal*!</font>"

				if("Genin")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Genin Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Genin Medal",usr)
						src<<"<font color=red>Congratulations! You have achieved the *Genin Medal*!</font>"

				if("Hokage")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Hokage Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Hokage Medal",usr)
						src<<"<font color=green>Congratulations! You have achieved the *Hokage Medal*!</font>"

				if("Kazekage")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Kazekage Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Kazekage Medal",usr)
						src<<"<font color=blue>Congratulations! You have achieved the *Kazekage Medal*!</font>"

				if("Raikage")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Raikage Medal",src)
					if(has_medal) return
					else
						world.SetMedal("Raikage Medal",src)
						src<<"<font color=yellow>Congratulations! You have achieved the *Raikage Medal*!</font>"

				if("Tsuchikage")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Tsuchikage Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Tsuchikage Medal",usr)
						src<<"<font color=gray>Congratulations! You have achieved the *Tsuchikage Medal*!</font>"

				if("Mizukage")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Mizukage Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Mizukage Medal",usr)
						src<<"<font color=blue>Congratulations! You have achieved the *Mizukage Medal*!</font>"

				if("Otokage")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Otokage Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Otokage Medal",usr)
						src<<"<font color=purple>Congratulations! You have achieved the *Otokage Medal*!</font>"

				if("Amekage")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Amekage Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Amekage Medal",usr)
						src<<"<font color=blue>Congratulations! You have achieved the *Amekage Medal*!</font>"

				if("WaterHero")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("WaterHero Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("WaterHero Medal",usr)
						src<<"<font color=blue>Congratulations! You have achieved the *Water Hero Medal*!</font>"

				if("GFL")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("GFL Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("GFL Medal",usr)
						src<<"<font color=green>Congratulations! You have achieved the *Grass Fuedal Lord Medal*!</font>"

				if("SFL")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("SFL Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("SFL Medal",usr)
						src<<"<font color=white>Congratulations! You have achieved the *Snow Fuedal Lord Medal*!</font>"

				if("Akatsuki Leader")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Akatsuki Leader Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Akatsuki Leader Medal",usr)
						src<<"<font color=red>Congratulations! You have achieved the *Akatsuki Leader Medal*!</font>"


				if("SO")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("SO Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("SO Medal",usr)
						src<<"<font color=purple>Congratulations! You have achieved the *SO Leader Medal*!</font>"

				if("SSM")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("SSM Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("SSM Medal",usr)
						src<<"<font color=green>Congratulations! You have achieved the *Seven Swordsmen Leader Medal*!</font>"

				if("Police")//This Can Be Used As Clans, Finding Items, Winning Tournaments, Ect. Just Change src or usr to whatever. Then Link It To The Hub Easy As pie
					var/has_medal = world.GetMedal("Police Medal",usr)
					if(has_medal) return
					else
						world.SetMedal("Police Medal",usr)
						src<<"<font color=red>Congratulations!</font><font color=blue> You have achieved the *Police Leader Medal*!</font>"






























