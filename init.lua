local use_colors = core.settings:get_bool("myblocks.colors", true)
local use_stairs = core.settings:get_bool("myblocks.stairs", true)

local overlays = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"}
for _, a in pairs(overlays) do

	core.register_node("myblocks:block_"..a,{
		description = "Block "..a,
		drawtype = "normal",
		tiles = {"myblocks_1.png^myblocks_overlay_"..a..".png",
				},
		paramtype2 = "facedir",
		groups = {cracky = 2},
	})

end

if use_colors then
dofile(minetest.get_modpath("myblocks").."/colors.lua")
end
if use_stairs then
dofile(minetest.get_modpath("myblocks").."/stairs.lua")
end
