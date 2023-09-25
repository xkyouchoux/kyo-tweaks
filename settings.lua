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
        allow_blank = false,
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

if mods["bzaluminum"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-modify-aluminum",
            setting_type = "startup",
            default_value = false,
            order = "b-a"
        }
    })
end

if mods["bzcarbon"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-modify-carbon",
            setting_type = "startup",
            default_value = false,
            order = "b-b"
        }
    })
end

if mods["bzchlorine"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-modify-chlorine",
            setting_type = "startup",
            default_value = false,
            order = "b-c"
        }
    })
end

if mods["bzfoundry"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-modify-foundry",
            setting_type = "startup",
            default_value = false,
            order = "b-d"
        },
        {
            type = "bool-setting",
            name = "kt-change-smelting-or-kiln-recipes-to-founding-recipes",
            setting_type = "startup",
            default_value = false,
            order = "f-a"
        },
        {
            type = "bool-setting",
            name = "kt-move-electric-foundry",
            setting_type = "startup",
            default_value = false,
            order = "f-b"
        },
        {
            type = "bool-setting",
            name = "kt-rebalance-steel",
            setting_type = "startup",
            default_value = false,
            order = "f-c"
        }
    })
end

if mods["bzgas"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-modify-gas",
            setting_type = "startup",
            default_value = false,
            order = "b-e"
        },
        {
            type = "bool-setting",
            name = "kt-change-chemical-plant-ingredients",
            setting_type = "startup",
            default_value = false,
            order = "g-a"
        }
    })
end

if mods["bzgold"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-modify-gold",
            setting_type = "startup",
            default_value = false,
            order = "b-f"
        },
        {
            type = "bool-setting",
            name = "kt-rebalance-gold",
            setting_type = "startup",
            default_value = false,
            order = "h-a"
        }
    })
end

if mods["bzlead"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-modify-lead",
            setting_type = "startup",
            default_value = false,
            order = "b-g"
        },
        {
            type = "bool-setting",
            name = "kt-rebalance-lead",
            setting_type = "startup",
            default_value = false,
            order = "i-a"
        }
    })
end

if mods["bzsilicon"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-modify-silicon",
            setting_type = "startup",
            default_value = false,
            order = "b-h"
        }
    })
end

if mods["bztin"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-modify-tin",
            setting_type = "startup",
            default_value = false,
            order = "b-i"
        },
        {
            type = "bool-setting",
            name = "kt-rebalance-tin",
            setting_type = "startup",
            default_value = false,
            order = "j-a"
        }
    })
end

if mods["bztungsten"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-modify-tungsten",
            setting_type = "startup",
            default_value = false,
            order = "b-j"
        }
    })
end

if mods["bztitanium"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-modify-titanium",
            setting_type = "startup",
            default_value = false,
            order = "b-k"
        },
        {
            type = "bool-setting",
            name = "kt-rebalance-titanium",
            setting_type = "startup",
            default_value = false,
            order = "l-a"
        }
    })
end

if mods["bzzirconium"] then
    data:extend({
        {
            type = "bool-setting",
            name = "kt-modify-zirconium",
            setting_type = "startup",
            default_value = false,
            order = "b-l"
        }
    })
end