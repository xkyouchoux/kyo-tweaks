local settings_util = require("settings_util")

if settings_util.gold.rebalance_gold then
    data:extend({
        {
            type = "item",
            name = "crushed-gold",
            icon = "graphics/icons/gold-crushed.png",
            icon_size = 64,
            order = "e05-a[enriched-ores]-a1[crushed-gold]",
            stack_size = 50,
            subgroup = "raw-material"
        },
        {
            type = "item",
            name = "gold-plate",
            icon = "graphics/icons/gold-plate.png",
            icon_size = 64,
            icon_mipmaps = 3,
            subgroup = "raw-resource",
            order = "b[gold-plate]",
            stack_size = 100,
        },
        {
            type = "recipe",
            category = "pulverising",
            name = "crushed-gold",
            main_product = "crushed-crushed",
            results = {
              {name = "crushed-gold", amount_min = 1, amount_max = 1, probability = 0.75},
              {name = "sand", amount_min = 1, amount_max = 1, probability = 0.25, catalyst_amount = 1},
            },
            energy_required = 0.5,
            ingredients = {
              {name = "gold-ore", amount = 1}
            },
            enabled = false,
            always_show_made_in = true,
            order = "a-a-b"
        },
        {
            type = "recipe",
            category = "crafting",
            name = "gold-ingot-to-plate",
            icons = {
              {icon = "graphics/icons/gold-plate.png", icon_size = 64},
              {icon = "__bzgold__/graphics/icons/gold-ingot.png", icon_size = 128, scale = 0.125, shift = {-8, -8}},
            },
            results = {
              {name = "gold-plate", amount = 10},
            },
            energy_required = 5,
            ingredients = {
              {name = "gold-ingot", amount = 1}
            },
            enabled = false,
            always_show_made_in = true,
            allow_decomposition = false,
            order = "a-c-b"
        },
        {
          type = "recipe",
          name = "enriched-gold-plate",
          icons =
          {
            { icon = "graphics/icons/gold-plate.png", icon_size = 64, icon_mipmaps = 3, },
            { icon = "__bzgold__/graphics/icons/enriched-gold.png", icon_size = 128, scale=0.125, shift= {-8, -8}},
          },
          category = "smelting",
          energy_required = 16,
          enabled = false,
          always_show_made_in = true,
          always_show_products = true,
          allow_productivity = true,
          ingredients = 
          {
            {"enriched-gold", 5}
          },
          result = "gold-plate",
          result_count = 5,
          order = "b[gold-plate]-b[enriched-gold-plate]"
      }
    })
end