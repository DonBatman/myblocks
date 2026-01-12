local use_colors = core.settings:get_bool("myblocks.colors", true)
local use_stairs = core.settings:get_bool("myblocks.stairs", true)

local overlays = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"}
for _, a in pairs(overlays) do

	core.register_node("myblocks:block_"..a,{
		description = "Block "..a,
		drawtype = "normal",
		tiles = {"myblocks_1.png^myblocks_overlay_"..a..".png",
				},
		paramtype2 = "facedir",
		groups = {cracky = 2},
	})

if core.get_modpath("lucky_block") then
	lucky_block:add_blocks({
		{"dro", {"myblocks:block_"..a}, 10},
	})
end

end

core.register_craft({
	output = "myblocks:block_1",
	recipe = {
		{"myblocks:blank_block", "flowers:chrysanthemum_green"},
	}
})
core.register_craft({
	output = "myblocks:block_2",
	recipe = {
		{"myblocks:blank_block", "flowers:dandelion_white"},
	}
})
core.register_craft({
	output = "myblocks:block_3",
	recipe = {
		{"myblocks:blank_block", "flowers:dandelion_yellow"},
	}
})
core.register_craft({
	output = "myblocks:block_4",
	recipe = {
		{"myblocks:blank_block", "flowers:geranium"},
	}
})
core.register_craft({
	output = "myblocks:block_5",
	recipe = {
		{"myblocks:blank_block", "flowers:mushroom_brown"},
	}
})
core.register_craft({
	output = "myblocks:block_6",
	recipe = {
		{"myblocks:blank_block", "flowers:mushroom_red"},
	}
})
core.register_craft({
	output = "myblocks:block_7",
	recipe = {
		{"myblocks:blank_block", "flowers:rose"},
	}
})
core.register_craft({
	output = "myblocks:block_8",
	recipe = {
		{"myblocks:blank_block", "flowers:tulip"},
	}
})
core.register_craft({
	output = "myblocks:block_9",
	recipe = {
		{"myblocks:blank_block", "flowers:tulip_black"},
	}
})
core.register_craft({
	output = "myblocks:block_10",
	recipe = {
		{"myblocks:blank_block", "flowers:viola"},
	}
})
core.register_craft({
	output = "myblocks:block_11",
	recipe = {
		{"myblocks:blank_block", "flowers:waterlily"},
	}
})
core.register_craft({
	output = "myblocks:block_12",
	recipe = {
		{"myblocks:blank_block", "default:apple"},
	}
})
core.register_craft({
	output = "myblocks:block_13",
	recipe = {
		{"myblocks:blank_block", "default:cactus"},
	}
})
core.register_craft({
	output = "myblocks:block_14",
	recipe = {
		{"myblocks:blank_block", "default:junglegrass"},
	}
})
core.register_craft({
	output = "myblocks:block_15",
	recipe = {
		{"myblocks:blank_block", "farming:cotton"},
	}
})
core.register_craft({
	output = "myblocks:block_16",
	recipe = {
		{"myblocks:blank_block", "farming:wheat"},
	}
})

if use_colors then
dofile(minetest.get_modpath("myblocks").."/colors.lua")
end
if use_stairs then
dofile(minetest.get_modpath("myblocks").."/stairs.lua")
end

core.register_node("myblocks:blank_block",{
	description = "Blank Block",
	drawtype = "normal",
	tiles = {"myblocks_1.png",
			},
	paramtype2 = "facedir",
	groups = {cracky = 2},
})

core.register_craft({
	output = "myblocks:blank_block 9",
	recipe = {
		{"default:sandstone", "default:sandstone", "default:sandstone"},
		{"default:sandstone", "default:sandstone", "default:sandstone"},
		{"default:sandstone", "default:sandstone", "default:sandstone"},
	}
})
