data:extend({
    {
        type = "bool-setting",
        name = "kt-allow-crushed-immersite-in-delivery-cannon",
        setting_type = "startup",
        default_value = false,
        order = "a-a"
    },
    {
        type = "bool-setting",
        name = "kt-produce-double-heatshielding",
        setting_type = "startup",
        default_value = false,
        order = "a-b"
    },
    {
        type = "bool-setting",
        name = "kt-produce-double-lds",
        setting_type = "startup",
        default_value = false,
        order = "a-c"
    },
    {
        type = "bool-setting",
        name = "kt-produce-double-modules",
        setting_type = "startup",
        default_value = false,
        order = "a-d"
    },
    {
        type = "bool-setting",
        name = "kt-produce-double-underground-space-pipe",
        setting_type = "startup",
        default_value = false,
        order = "a-e"
    },
    {
        type = "bool-setting",
        name = "kt-remove-vitamelange-core-fragment-from-biological-science-pack-4",
        setting_type = "startup",
        default_value = false,
        order = "a-f"
    },
    {
        type = "bool-setting",
        name = "kt-change-kiln-recipes-back-to-smelting-recipes",
        setting_type = "startup",
        default_value = false,
        order = "a-g"
    },
    {
        type = "bool-setting",
        name = "kt-fix-matter-recipes",
        setting_type = "startup",
        default_value = false,
        order = "a-g"
    },
    {
        type = "int-setting",
        name = "kt-modified-landfill-amount",
        setting_type = "startup",
        default_value = 1,
        allowed_values = {1, 2, 5, 10},
        order = "a-h"
    },
    {
        type = "string-setting",
        name = "kt-additional-landfill-recipes",
        setting_type = "startup",
        allow_blank = true,
        default_value = "",
        order = "a-i"
    },
    {
        type = "int-setting",
        name = "kt-modified-space-scaffolding-amount",
        setting_type = "startup",
        default_value = 1,
        allowed_values = {1, 2, 5, 10},
        order = "a-j"
    },
    {
        type = "int-setting",
        name = "kt-modified-space-plating-amount",
        setting_type = "startup",
        default_value = 1,
        allowed_values = {1, 2, 5, 10},
        order = "a-k"
    },
    {
        type = "int-setting",
        name = "kt-modified-spaceship-floor-amount",
        setting_type = "startup",
        default_value = 1,
        allowed_values = {1, 2, 5, 10},
        order = "a-l"
    }
})

if mods["bzfoundry"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-change-smelting-or-kiln-recipes-to-founding-recipes",
            setting_type = "startup",
            default_value = true,
            order = "b-a"
        },
        {
            type = "bool-setting",
            name = "kt-move-electric-foundry",
            setting_type = "startup",
            default_value = true,
            order = "b-b"
        },
        {
            type = "bool-setting",
            name = "kt-rebalance-steel",
            setting_type = "startup",
            default_value = true,
            order = "b-c"
        }
    })
end

if mods["bztin"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-rebalance-tin",
            setting_type = "startup",
            default_value = true,
            order = "c-a"
        }
    })
end

if mods["bzlead"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-rebalance-lead",
            setting_type = "startup",
            default_value = true,
            order = "d-a"
        }
    })
end

if mods["bztitanium"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-rebalance-titanium",
            setting_type = "startup",
            default_value = true,
            order = "e-a"
        }
    })
end

if mods["bzgold"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-rebalance-gold",
            setting_type = "startup",
            default_value = true,
            order = "f-a"
        }
    })
end

if mods["bzgas"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-change-chemical-plant-ingredients",
            setting_type = "startup",
            default_value = true,
            order = "g-a"
        }
    })
end