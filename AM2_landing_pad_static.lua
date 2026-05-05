local function add_structure(f)
	if(f) then
		f.shape_table_data = 
		{
			{
				file  	    = f.ShapeName,
				life		= f.Life,
				username    = f.Name,
				desrt       = f.ShapeNameDestr or "self",
			    classname 	= "lLandVehicle",
				positioning = "ONLYHEIGTH",	--{"BYNORMAL", "ONLYHEIGTH", "BY_XZ", "ADD_HEIGTH"}
			}
		}
		if f.ShapeNameDestr then
			f.shape_table_data[#f.shape_table_data + 1] = 
			{
				name  = f.ShapeName,
				file  = f.ShapeNameDestr,
			}
		end


		f.mapclasskey = "P0091000076";
		f.attribute = {wsType_Static, wsType_Standing} 

		add_surface_unit(f)
		GT = nil;
	else
		error("Can't add structure")
	end;
end

-- Static Pad --
add_structure({
    Name 		 =  "AM2_landing_pad_static",
    DisplayName  = _("AM2 Parking pad"),
    ShapeName	 =   "AM2_landing_pad_Static",
    Life		 =  1500,
    Rate		 =  100,
    category     =  'Fortification',
    })
