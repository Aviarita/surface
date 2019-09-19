local surface = require("libs/surface")

local rank_files = {
    "ranks/silver-1",
    "ranks/silver-2",
    "ranks/silver-3",
    "ranks/silver-4",
    "ranks/silver-5",
    "ranks/sem",
    "ranks/gold-1",
    "ranks/gold-2",
    "ranks/gold-3",
    "ranks/gold-master",
    "ranks/master-guardian-1",
    "ranks/master-guardian-2",
    "ranks/mge",
    "ranks/dmg",
    "ranks/legendary-eagle",
    "ranks/lem",
    "ranks/smfc",
    "ranks/global",
}
local textures = {}
for i=1, #rank_files do 
    table.insert(textures, renderer.load_texture(rank_files[i]))
end

client.set_event_callback("paint", function(ctx)
    local h = 40
    local w = 72
    for i=1, #textures do 
        renderer.texture(textures[i], 300, i*(h), w, h, 255, 255, 255, 255)
    end
end)
