local function add_structure(f)
	if(f) then
		f.shape_table_data = 
		{
			{
				file  	    = f.ShapeName,
				life		= f.Life,
				username    = f.Name,
				desrt       = f.ShapeNameDestr or "self",
			    classname 	= "lHeliport",
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


		f.mapclasskey = "P0091000022";
		f.attribute = {wsType_Static, wsType_Standing} -- if 'attribute' == nil then insertion will be aborted

		add_surface_unit(f)
		GT = nil;
	else
		error("Can't add structure")
	end;
end



add_structure({
    Name 		 =  "AM2_landing_pad",
    DisplayName  = _("AM2 Landing pad"),
    ShapeName	 =   "AM2_landing_pad",
    Life		 =  1500,
    Rate		 =  100,
    category     =  'Heliport',
    numParking   =  1,
    })


