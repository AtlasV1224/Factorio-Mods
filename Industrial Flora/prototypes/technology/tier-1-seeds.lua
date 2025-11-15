data:extend({
    {
        type = "technology",
        name = "tier-1-seeds",
        icon = "__fm-industrial-flora__/graphics/technology/seeds-tier-1.png",
        icon_size = 32,
        icon_mipmaps = 4,
        effects = {
          {
            type = "unlock-recipe",
            recipe = "tree-seed",
          },
        },
        unit = {
          count = 20,
          ingredients = {
            { "automation-science-pack", 1 },
          },
          time = 5,
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-0",
    },
})