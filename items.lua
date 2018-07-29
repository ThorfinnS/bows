
minetest.register_craft({output = "default:flint",recipe = {{"default:gravel"},}})
minetest.register_craft({output = "farming:cotton 4",recipe = {{"group:wool"},}})

bows.register_bow("bow_wood",{
	description = "Wooden bow",
	texture = "bows_bow.png",
	texture_loaded = "bows_bow_loaded.png",
	uses = 50,
	level = 1,
	craft = {
		{"", "group:stick", "farming:string"},
		{"group:stick", "", "farming:string"},
		{"", "group:stick", "farming:string"}
	},
})

minetest.register_craft({
	type = "fuel",
	recipe = "bows:bow_wood",
	burntime = 3,
})

bows.register_bow("bow_steel",{
	description = "Steel bow",
	texture = "bows_bow_steel.png",
	texture_loaded = "bows_bow_loaded_steel.png",
	uses = 280, --140,
	level = 10, --8,
	craft = {
		{"", "default:steel_ingot", "farming:string"},
		{"default:steel_ingot", "", "farming:string"},
		{"", "default:steel_ingot", "farming:string"}
	},
})

bows.register_bow("bow_bronze",{
	description = "Bronze bow",
	texture = "bows_bow_bronze.png",
	texture_loaded = "bows_bow_loaded_bronze.png",
	uses = 140, --280,
	level = 8, --10,
	craft = {
		{"", "default:bronze_ingot", "farming:string"},
		{"default:bronze_ingot", "", "farming:string"},
		{"", "default:bronze_ingot", "farming:string"}
	},
})

bows.register_bow("bow_bowie",{
	description = "David BOWie",
	texture = "bows_bow_bowie.png",
	texture_loaded = "bows_bow_loaded_bowie.png",
	uses = 500,
	level = 12,
})

bows.register_arrow("arrow",{
	description = "Arrow",
	texture = "bows_arrow_wood.png",
	damage = 5,
	craft_count = 4,
	craft = {
		{"default:flint", "group:stick", bows.feather}
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "bows:arrow",
	burntime = 1,
})

bows.register_arrow("arrow_steel",{
	description = "Steel arrow",
	texture = "bows_arrow_wood.png^[colorize:#FFFFFFcc",
	damage = 8,
	craft_count = 4,
	craft = {
		{"default:steel_ingot", "group:stick", bows.feather}
	}
})

bows.register_arrow("arrow_mese",{
	description = "Mese arrow",
	texture = "bows_arrow_wood.png^[colorize:#e3ff00cc",
	damage = 12,
	craft_count = 4,
	craft = {
		{"default:mese_crystal", "group:stick", bows.feather}
	}
})

bows.register_arrow("arrow_diamond",{
	description = "Diamond arrow",
	texture = "bows_arrow_wood.png^[colorize:#15d7c2cc",
	damage = 15,
	craft_count = 4,
	craft = {
		{"default:diamond", "group:stick", bows.feather}
	}
})
