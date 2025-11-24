	stairs.register_stair_and_slab("myblocks:blank_block",
			"myblocks:blank_block", 
			{cracky=2, not_in_creative_inventory = 0}, 
			{"myblocks_1.png"},
			" Stairs", 
			" Slab", 
			default.node_sound_wood_defaults(), 
			"myblocks_1.png",
			" Inner Stairs", 
			" Outer Stairs")
			
local overlays = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"}
for _, a in pairs(overlays) do

	stairs.register_stair_and_slab("myblocks:block_"..a,
			"myblocks:block_"..a, 
			{cracky=2, not_in_creative_inventory = 0}, 
			{"myblocks_1.png^myblocks_overlay_"..a..".png"},
			" Stairs", 
			" Slab", 
			default.node_sound_wood_defaults(), 
			"myblocks_1.png^myblocks_overlay_"..a..".png",
			" Inner Stairs", 
			" Outer Stairs")
end

local use_colors = core.settings:get_bool("myblocks.colors", true)
if use_colors then

local colors_table = {
		{"black",		"Black", 		"^[colorize:#000000:240"},
		{"blue",		"Blue", 		"^[colorize:#272dc8:200"},
		{"brown",		"Brown", 		"^[colorize:#190B07:160"},
		{"cyan",		"Cyan",			"^[colorize:#00ffff:120"},
		{"dark_green",	"Dark Green",	"^[colorize:#071907:200"},
		{"dark_grey",	"Dark Grey",	"^[colorize:#000000:200"},
		{"green",		"Green", 		"^[colorize:#00ff00:160"},
		{"grey",		"Grey", 		"^[colorize:#000000:160"},
		{"magenta",		"Magenta",		"^[colorize:#ff00ff:160"},
		{"orange",		"Orange",		"^[colorize:#ff7700:220"},
		{"pink",		"Pink",			"^[colorize:#FE2E9A:200"},
		{"red",			"Red",			"^[colorize:#B40404:200"},
		{"violet",		"Violet",		"^[colorize:#2F0B3A:220"},
		{"white",		"White",		"^[colorize:#ffffff:200"},
		{"yellow",		"Yellow",		"^[colorize:#ffff00:200"},
		}

if core.get_modpath("mydye") then
	colors_table = {
		{"black",		"Black", 		"^[colorize:#000000:240"},
		{"blue",		"Blue", 		"^[colorize:#272dc8:200"},
		{"brown",		"Brown", 		"^[colorize:#190B07:160"},
		{"cyan",		"Cyan",			"^[colorize:#00ffff:120"},
		{"dark_green",	"Dark Green",	"^[colorize:#071907:200"},
		{"dark_grey",	"Dark Grey",	"^[colorize:#000000:200"},
		{"green",		"Green", 		"^[colorize:#00ff00:160"},
		{"grey",		"Grey", 		"^[colorize:#000000:160"},
		{"magenta",		"Magenta",		"^[colorize:#ff00ff:160"},
		{"orange",		"Orange",		"^[colorize:#ff7700:220"},
		{"pink",		"Pink",			"^[colorize:#FE2E9A:200"},
		{"red",			"Red",			"^[colorize:#B40404:200"},
		{"violet",		"Violet",		"^[colorize:#2F0B3A:220"},
		{"white",		"White",		"^[colorize:#ffffff:200"},
		{"yellow",		"Yellow",		"^[colorize:#ffff00:200"},
		{"peachpuff",	"Peachpuff", 	"^[colorize:#FFDAB9:200"},
		{"navy",		"Navy", 		"^[colorize:#000080:200"},
		{"coral",		"Coral", 		"^[colorize:#FF7F50:200"},
		{"khaki",		"Khaki", 		"^[colorize:#F0E68C:200"},
		{"lime",		"Lime", 		"^[colorize:#00FF00:200"},
		{"light_pink",	"Light Pink", 	"^[colorize:#FFB6C1:200"},
		{"light_grey",	"Light Grey", 	"^[colorize:#D3D3D3:200"},
		{"purple",		"Purple", 		"^[colorize:#800080:200"},
		{"maroon",		"Maroon", 		"^[colorize:#800000:200"},
		{"aquamarine",	"Aqua Marine", 	"^[colorize:#7FFFD4:200"},
		{"chocolate",	"Chocolate", 	"^[colorize:#D2691E:200"},
		{"crimson",		"Crimson", 		"^[colorize:#DC143C:200"},
		{"olive",		"Olive", 		"^[colorize:#808000:200"},
		{"white_smoke",	"White Smoke", 	"^[colorize:#F5F5F5:200"},
		{"mistyrose",	"Misty Rose", 	"^[colorize:#FFE4E1:200"},
		{"orchid",		"Orchid", 		"^[colorize:#DA70D6:200"},
	}
end

for i in ipairs (colors_table) do
local col = (colors_table)[i][1]
local des = (colors_table)[i][2]
local num = (colors_table)[i][3]

local overlays = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"}
for _, a in pairs(overlays) do

	stairs.register_stair_and_slab("myblocks:blank_block_"..col,
			"myblocks:blank_block_"..col, 
			{cracky=2, not_in_creative_inventory = 0}, 
			{"myblocks_1.png"..num},
			des.." Stairs", 
			des.." Slab", 
			default.node_sound_wood_defaults(), 
			"myblocks_1.png"..num,
			des.." Inner Stairs", 
			des.." Outer Stairs")

	stairs.register_stair_and_slab("myblocks:block_"..a.."_"..col,
			"myblocks:block_"..a.."_"..col, 
			{cracky=2, not_in_creative_inventory = 0}, 
			{"myblocks_1.png"..num.."^myblocks_overlay_"..a..".png"},
			des.." Stairs", 
			des.." Slab", 
			default.node_sound_wood_defaults(), 
			"myblocks_1.png"..num.."^myblocks_overlay_"..a..".png",
			des.." Inner Stairs", 
			des.." Outer Stairs")
	

end

local paintables = {	"stairs:stair_myblocks:blank_block","stairs:stair_myblocks:block_1","stairs:stair_myblocks:block_2","stairs:stair_myblocks:block_3","stairs:stair_myblocks:block_4","stairs:stair_myblocks:block_5","stairs:stair_myblocks:block_6","stairs:stair_myblocks:block_7","stairs:stair_myblocks:block_8","stairs:stair_myblocks:block_9","stairs:stair_myblocks:block_10","stairs:stair_myblocks:block_11","stairs:stair_myblocks:block_12","stairs:stair_myblocks:block_13","stairs:stair_myblocks:block_14","stairs:stair_myblocks:block_15","stairs:stair_myblocks:block_16",
"stairs:stair_outer_myblocks:blank_block","stairs:stair_outer_myblocks:block_1","stairs:stair_outer_myblocks:block_2","stairs:stair_outer_myblocks:block_3","stairs:stair_outer_myblocks:block_4","stairs:stair_outer_myblocks:block_5","stairs:stair_outer_myblocks:block_6","stairs:stair_outer_myblocks:block_7","stairs:stair_outer_myblocks:block_8","stairs:stair_outer_myblocks:block_9","stairs:stair_outer_myblocks:block_10","stairs:stair_outer_myblocks:block_11","stairs:stair_outer_myblocks:block_12","stairs:stair_outer_myblocks:block_13","stairs:stair_outer_myblocks:block_14","stairs:stair_outer_myblocks:block_15","stairs:stair_outer_myblocks:block_16",
"stairs:stair_inner_myblocks:blank_block","stairs:stair_inner_myblocks:block_1","stairs:stair_inner_myblocks:block_2","stairs:stair_inner_myblocks:block_3","stairs:stair_inner_myblocks:block_4","stairs:stair_inner_myblocks:block_5","stairs:stair_inner_myblocks:block_6","stairs:stair_inner_myblocks:block_7","stairs:stair_inner_myblocks:block_8","stairs:stair_inner_myblocks:block_9","stairs:stair_inner_myblocks:block_10","stairs:stair_inner_myblocks:block_11","stairs:stair_inner_myblocks:block_12","stairs:stair_inner_myblocks:block_13","stairs:stair_inner_myblocks:block_14","stairs:stair_inner_myblocks:block_15","stairs:stair_inner_myblocks:block_16",
"stairs:slab_myblocks:blank_block","stairs:slab_myblocks:block_1","stairs:slab_myblocks:block_2","stairs:slab_myblocks:block_3","stairs:slab_myblocks:block_4","stairs:slab_myblocks:block_5","stairs:slab_myblocks:block_6","stairs:slab_myblocks:block_7","stairs:slab_myblocks:block_8","stairs:slab_myblocks:block_9","stairs:slab_myblocks:block_10","stairs:slab_myblocks:block_11","stairs:slab_myblocks:block_12","stairs:slab_myblocks:block_13","stairs:slab_myblocks:block_14","stairs:slab_myblocks:block_15","stairs:slab_myblocks:block_16"}

if core.get_modpath("mypaint") then
local colors = {}
for _, entry in ipairs(colors_table) do
	table.insert(colors, entry[1])
end

mypaint.register(paintables, colors)
end
end
end
