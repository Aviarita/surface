local surface = require("surface")
local weapon_icons = renderer.create_font("Counter-Strike", 50, 400, 0x010)
client.set_event_callback("paint", function(ctx)
    renderer.test_font(400, 200, 255,255,255,255, weapon_icons)
end)