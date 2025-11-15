data:extend({
    {
      type = "item",
      name = "if-farm-tier-2",
      icon = "__fm-industrial-flora__/graphics/icons/farm-tier-1.png",
      icon_size = 32,
      subgroup = "if-farms",
      order = "a",
      place_result = "if-farm-tier-1",
      stack_size = 50,
    },

    {
      type = "recipe",
      name = "if-farm-tier-1",
      enabled = false,
      ingredients = {
        { "electronic-circuit", 3 },
        { "iron-gear-wheel", 5 },
        { "iron-plate", 9 },
      },
      result = "if-farm-tier-1",
    },

    {
      type = "assembling-machine",
      name = "if-farm-tier-1",
      icon = "__fm-industrial-flora__/graphics/icons/farm-tier-1.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.2, result = "if-farm-tier-1" },
      max_health = 200,
      corpse = "medium-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70,
        },
      },
      collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      fast_replaceable_group = "if-farms",
      animation = {
        layers = {
          {
            filename = "__fm-industrial-flora__/graphics/entity/if-farms/farm-tier-1.png",
            priority = "high",
            width = 108,
            height = 114,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__fm-industrial-flora__/graphics/entity/if-farms/hr-farm-tier-1.png",
              priority = "high",
              width = 214,
              height = 226,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 2 * 2 / 3),
              scale = 1 / 3,
            },
          },
          {
            filename = "__fm-industrial-flora__/graphics/entity/if-farms/farm-tier-1-shadow.png",
            priority = "high",
            width = 95,
            height = 83,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5 * 2 / 3, 5.5 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__fm-industrial-flora__/graphics/entity/if-farms/hr-farm-tier-1-shadow.png",
              priority = "high",
              width = 190,
              height = 165,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              draw_as_shadow = true,
              shift = util.by_pixel(8.5 * 2 / 3, 5 * 2 / 3),
              scale = 1 / 3,
            },
          },
        },
      },
      open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
      close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t2-1.ogg",
            volume = 0.8,
          },
          {
            filename = "__base__/sound/assembling-machine-t2-2.ogg",
            volume = 0.8,
          },
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        apparent_volume = 1.5,
      },
      crafting_categories = { "tier-1-seed-processing" },
      crafting_speed = 0.25,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -1,
      },
      energy_usage = "75kW",
      module_specification = {
        module_slots = 2,
      },
      allowed_effects = {"productivity", "pollution"},
    },

    {
      type = "technology",
      name = "if-farm-tier-1",
      icon = "__fm-industrial-flora__/graphics/technology/farm-tier-1.png",
      icon_size = 32,
      icon_mipmaps = 4,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "if-farm-tier-1",
        },
      },
      unit = {
        count = 5,
        ingredients = {
          { "automation-science-pack", 1 },
        },
        time = 5,
      },
      ignore_tech_cost_multiplier = true,
      order = "a-b-0",
    },
  })