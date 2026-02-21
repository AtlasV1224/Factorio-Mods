for mod_name in pairs(mods) do
	local path = "__av-tweaks__/prototypes/compat/" .. mod_name .. "/compat.lua"

	local ok, err = pcall(require, path)
	-- Prod implimentation
	if settings.startup["av-tweaks-debug"].value == false then
		if not ok then
			-- ignore missing compat folders
			if not err:find("not found", 1, true) then
				error("Compat error for " .. mod_name .. ":\n" .. err)
			end
		end
	end
	-- Debug implimentation
	if settings.startup["av-tweaks-debug"].value == true then
		if not ok then
			log("Compat require FAILED for " .. mod_name)
			log(err)
		else
			log("Compat require OK for " .. mod_name)
		end
	end
end

if settings.startup["cheaper-foundations-and-platforms"].value == true then
	require("prototypes.recipes.cheaper-platforms")
end

require("prototypes.recipes.steam-rocket")
