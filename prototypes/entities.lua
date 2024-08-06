-- DeepBiterLearning/prototypes/entities.lua
data:extend({
    {
        type = "assembling-machine",
        name = "simulation-chamber",
        icon = "__DeepBiterLearning__/graphics/simulation_chamber.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 1, result = "simulation-chamber"},
        max_health = 300,
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-7.9, -7.9}, {7.9, 7.9}},
        selection_box = {{-8.0, -8.0}, {8.0, 8.0}},
        fast_replaceable_group = "assembling-machine",
        animation = {
            layers = {
                {
                    filename = "__DeepBiterLearning__/graphics/simulation_chamber_entity.png",
                    priority = "high",
                    width = 512,
                    height = 512,
                    scale = 1
                },
                {
                    filename = "__DeepBiterLearning__/graphics/simulation_chamber_shadow.png",  -- Shadow sprite
                    priority = "high",
                    width = 326,
                    height = 280,
                    scale = 2,
                    draw_as_shadow = true,
                    shift = {1.8, 0.6}  -- Adjust as needed for proper positioning
                }
            },
        },
        working_visualisations = {
            {
                effect = "uranium-glow", -- to define the glow effect
                light = {intensity = 0.6, size = 50, shift = {0.0, 0.0}},
                animation = {
                    filename = "__DeepBiterLearning__/graphics/simulation_chamber_glow.png", -- Glow sprite
                    priority = "high",
                    width = 512,
                    height = 512,
                    scale = 1,
                    blend_mode = "additive",
                    shift = {-0.05, 0.05}  -- Adjust as needed for proper positioning
                }
            }
        },
        crafting_categories = {"simulation-crafting"},
        crafting_speed = 1,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = 1
        },
        energy_usage = "15000kW",
        ingredient_count = 4,
        module_specification = {
            module_slots = 2
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"}
    },
    {
        type = "assembling-machine",
        name = "loot-fabricator",
        icon = "__DeepBiterLearning__/graphics/loot_fabricator.png",
        icon_size = 64,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 1, result = "loot-fabricator"},
        max_health = 300,
        corpse = "big-remnants",
        dying_explosion = "big-explosion",
        collision_box = {{-3.9, -3.9}, {3.9, 3.9}},
        selection_box = {{-4.0, -4.0}, {4.0, 4.0}},
        fast_replaceable_group = "assembling-machine",
        animation = {
            layers = {
                {
                    filename = "__DeepBiterLearning__/graphics/loot_fabricator_entity.png",
                    priority = "high",
                    width = 512,
                    height = 512,
                    scale = 0.53
                },
                {
                    filename = "__DeepBiterLearning__/graphics/loot_fabricator_shadow.png",  -- Shadow sprite
                    priority = "high",
                    width = 512,
                    height = 512,
                    scale = 0.52,
                    draw_as_shadow = true,
                    shift = {1, 0.1}  -- Adjust as needed for proper positioning
                }
            },
        },
        working_visualisations = {
            {
                effect = "uranium-glow", -- to define the glow effect
                light = {intensity = 0.4, size = 50, shift = {0.0, 0.0}},
                animation = {
                    filename = "__DeepBiterLearning__/graphics/loot_fabricator_glow.png", -- Glow sprite
                    priority = "high",
                    width = 512,
                    height = 512,
                    scale = 0.53,
                    blend_mode = "additive",
                    shift = {0,0}  -- Adjust as needed for proper positioning
                }
            }
        },
        crafting_categories = {"loot-fabrication"},
        crafting_speed = 1,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = 1
        },
        energy_usage = "4500kW",
        ingredient_count = 4,
        module_specification = {
            module_slots = 2
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        fluid_boxes = {
            {
                production_type = "output",
                pipe_covers = pipecoverspictures(),
                base_area = 10,
                base_level = 1,
                pipe_connections = {
                    { type="output", position = {4.5, 0.5} }  -- Right side, outside the bounding box
                },
                secondary_draw_orders = { north = -1, east = -1, south = -1, west = -1 }
            }
        }
    }
})