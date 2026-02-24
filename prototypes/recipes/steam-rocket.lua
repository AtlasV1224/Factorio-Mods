local recipe = {
    type ="recipe",
    name ="av-thruster-fuel-to-steam",
    category ="chemistry",
    icon ="__base__/graphics/icons/fluid/steam.png",
    subgroup = "fluid",
    order = "zz",
    enabled = true,
    ingredients =
    {

        {type ="fluid", name ="thruster-fuel", amount = 500},
        {type ="fluid", name ="water", amount = 150},
    },

    energy_required = 20, --Alright, multiplied values wildly. Should be a fair nerf don't want to out class nuclear.
    results =
    {
        {type ="fluid", name ="steam", amount = 500, temperature = 500},
    },
    allow_productivity = true,
    allow_quality = false,
    auto_recycle = false,
    main_product ="steam",
    crafting_machine_tint =
    {
        primary = {r = 0.881, g = 0.100, b = 0.000, a = 0.502}, -- #e0190080
        secondary = {r = 0.930, g = 0.767, b = 0.605, a = 0.502}, -- #edc39a80
        tertiary = {r = 0.873, g = 0.649, b = 0.542, a = 0.502}, -- #dea58a80
        quaternary = {r = 0.629, g = 0.174, b = 0.000, a = 0.502}, -- #a02c0080
    },

}

data:extend{recipe}