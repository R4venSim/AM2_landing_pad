declare_plugin("AM2_Landing_Pad",

{
		installed 	 = true, -- if false that will be place holder
		dirName	  	 = current_mod_path,
		displayName  = ("AM2 Landing Pad"),
		developerName = ("R4ven"),
		fileMenuName = ("AM2_landing_pad"),
		version		 = "1.0",
		state		 = "installed",
		info		 = ("AM2 landing pad for Harrier and other vehicles"),
	
	})


----------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes") --EDM Shape
mount_vfs_texture_path 	(current_mod_path.."/Textures") -- Textures
-------------------------------------------------------------------------------------

dofile(current_mod_path..'/AM2_landing_pad.lua') --spawnable variant
dofile(current_mod_path..'/AM2_landing_pad_static.lua') --static variant

plugin_done()