minetest.register_tool("ubertool_mod:ubertool", {
    description = "Provides a combination tool capable of extreme function. Tool is also illuminated.",
    inventory_image = "uber_tool.png",
    light_source = 17,
    tool_capabilities = {
        full_punch_interval = 0.25,
        max_drop_level = 3,
        groupcaps = {
            cracky = {
                times = { [1] = .2, [2] = .1, [3] = 0.05 },
                uses = 300,
                maxlevel = 3,
            },
            choppy = {
                times = { [1] = .25, [2] = .14, [3] = .1 },
                uses = 200,
                maxlevel = 2,
            },
	    crumbly = {
                times = { [1] = .11, [2] = .05, [3] = .03 },
                uses = 300,
                maxlevel = 3,
            },

    },
        damage_groups = {fleshy = 7},
    },
})



minetest.register_craft({
    output = 'ubertool_mod:ubertool ',
    recipe = {
        {'', 'default:diamond', 'default:steel_ingot'},
        {'', 'default:stick', 'default:steel_ingot'},
        {'default:steel_ingot', 'default:stick', ''}
    }
})

