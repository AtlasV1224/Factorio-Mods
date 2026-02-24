local settings_to_add = {
    {
        type = "bool-setting",
        name = "cheaper-foundations-and-platforms",
        setting_type = "startup",
        default_value = true
    },
    {
        type = "bool-setting",
        name = "av-tweaks-debug",
        setting_type = "startup",
        default_value = false
    }
}

-- Dynamically add mod-specific settings
for mod_name in pairs(mods) do
    local compat_path = "__av-tweaks__/prototypes/compat/" .. mod_name .. "/compat"
    -- Attempt to require in a pcall to see if the file exists
    local ok, _ = pcall(require, compat_path)
    if ok then
        table.insert(settings_to_add, {
            type = "bool-setting",
            name = "av-tweaks-" .. mod_name .. "-circuit-integration",
            setting_type = "startup",
            default_value = true
        })
    end
end


data:extend(settings_to_add)