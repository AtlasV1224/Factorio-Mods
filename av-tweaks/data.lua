if settings.startup["cheaper-foundations-and-platforms"].value == true then
    require("prototypes.recipes.cheaper-platforms")
end
log("LOADING thruster steam recipe provider")

require("prototypes.recipes.steam-rocket")
