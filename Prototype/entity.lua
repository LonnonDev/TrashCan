require ("util")

local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")


data:extend {
    {
        type = "infinity-container",
        gui_mode = "none",
        name = "trashcan",
        icon = "__TrashChest__/Graphics/trashcan.png",
        tint = { a = 255, r = 255, g = 255, b = 255},
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "wooden-chest"},
        max_health = 100,
        corpse = "wooden-chest-remnants",
        dying_explosion = "wooden-chest-explosion",
        collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
        fast_replaceable_group = "container",
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        damaged_trigger_effect = hit_effects.entity(),
        inventory_size = 16,
        open_sound = { filename = "__base__/sound/wooden-chest-open.ogg", volume = 0.6 },
        close_sound = { filename = "__base__/sound/wooden-chest-close.ogg", volume = 0.6 },
        vehicle_impact_sound = sounds.car_wood_impact(0.5),
        picture =
        {
          layers =
          {
            {
              filename = "__TrashChest__/Graphics/trashcan.png",
              tint = { a = 255, r = 255, g = 255, b = 255},
              priority = "extra-high",
              width = 32,
              height = 36,
              shift = util.by_pixel(0.5, -2),
            },
            {
              filename = "__TrashChest__/Graphics/hr-trashcan.png",
              priority = "extra-high",
              width = 52,
              height = 20,
              shift = util.by_pixel(10, 6.5),
              draw_as_shadow = true,
            }
          }
        },
        circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
        circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
        circuit_wire_max_distance = default_circuit_wire_max_distance,
        erase_contents_when_mined = true
      }
}