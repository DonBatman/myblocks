local colors_table = {
		{"black",		"Black", 		"^[colorize:#000000:240"},
		{"blue",		"Blue", 		"^[colorize:#272dc8:200"},
		{"brown",		"Brown", 		"^[colorize:#190B07:160"},
		{"cyan",		"Cyan",			"^[colorize:#00ffff:120"},
		{"darkgreen",	"Dark Green",	"^[colorize:#071907:200"},
		{"darkgrey",	"Dark Grey",	"^[colorize:#000000:200"},
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
for i in ipairs (colors_table) do
local col = (colors_table)[i][1]
local des = (colors_table)[i][2]
local num = (colors_table)[i][3]

local overlays = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"}
for _, a in pairs(overlays) do

	core.register_node("myblocks:block_"..a.."_"..col,{
		description = "Block "..a.." "..des,
		drawtype = "normal",
		tiles = {"myblocks_1.png"..num.."^myblocks_overlay_"..a..".png",
				"myblocks_1.png"..num.."^myblocks_overlay_"..a..".png",
				"myblocks_1.png"..num.."^myblocks_overlay_"..a..".png",
				"myblocks_1.png"..num.."^myblocks_overlay_"..a..".png",
				"myblocks_1.png"..num.."^myblocks_overlay_"..a..".png",
				"myblocks_1.png"..num.."^myblocks_overlay_"..a..".png",
				},
		paramtype2 = "facedir",
		groups = {cracky = 2},
	})
--end

--local num = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"}
--for _, n in pairs(num) do
core.register_craft({
	output = "myblocks:block_"..a.."_"..col,
	recipe = {
		{"myblocks:block_"..a, "dye:"..col},
	}
})
end
end
