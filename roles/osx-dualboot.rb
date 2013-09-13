name "osx-dualboot"
description "Installs BootChamp and rEFInd for dual boot machines"

		# Include base role.
run_list "role[osx-classlab]",
		# These are dual-boot specific applications that make things easier for users.
		 "recipe[kainjow_bootchamp::mac]",
	 	 "recipe[rodsbooks_refind::mac]"
