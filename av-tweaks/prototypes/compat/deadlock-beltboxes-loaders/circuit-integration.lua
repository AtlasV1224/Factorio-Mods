-- local circuit_connector_definitions = require("__base__/prototypes/circuit-connector-definitions")
local util = require("__core__/lualib/util")

-- Courtesy of https://mods.factorio.com/user/rkh on https://mods.factorio.com/mod/deadlock-beltboxes-loaders/discussion/6852ef1f330d443403ba779a
for name, loader in pairs(data.raw["loader-1x1"]) do
  if not loader.circuit_connector then
    loader.circuit_connector = circuit_connector_definitions.create_vector(
      universal_connector_template,
      {
        { variation = 4, main_offset = util.by_pixel(3, 2),    shadow_offset = util.by_pixel(7.5, 7.5), show_shadow = false },
        { variation = 2, main_offset = util.by_pixel(-11, -5), shadow_offset = util.by_pixel(7.5, 7.5), show_shadow = false },
        { variation = 0, main_offset = util.by_pixel(-3, -23), shadow_offset = util.by_pixel(7.5, 7.5), show_shadow = false },
        { variation = 6, main_offset = util.by_pixel(10, -17), shadow_offset = util.by_pixel(7.5, 7.5), show_shadow = false },
        { variation = 0, main_offset = util.by_pixel(-3, -23), shadow_offset = util.by_pixel(7.5, 7.5), show_shadow = false },
        { variation = 6, main_offset = util.by_pixel(10, -17), shadow_offset = util.by_pixel(7.5, 7.5), show_shadow = false },
        { variation = 4, main_offset = util.by_pixel(3, 2),    shadow_offset = util.by_pixel(7.5, 7.5), show_shadow = false },
        { variation = 2, main_offset = util.by_pixel(-11, -5), shadow_offset = util.by_pixel(7.5, 7.5), show_shadow = false },
      }
    )
    loader.circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  end
end
