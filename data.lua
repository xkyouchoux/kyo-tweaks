local settings_util = require("settings_util")

if settings_util.gold.rebalance_gold then
    data:extend({
      {
        type = "item",
        name = "crushed-gold",
        icon = "__kyo-tweaks__/graphics/icons/crushed-gold.png",
        icon_size = 64,
        subgroup = "gold",
        order = "b[gold-ingot]-a[crushed-gold]",
        stack_size = 50
      },
      {
        type = "item",
        name = "gold-plate",
        icon = "__kyo-tweaks__/graphics/icons/gold-plate.png",
        icon_size = 64,
        icon_mipmaps = 3,
        subgroup = "gold",
        order = "b[gold-ingot]-a[gold-plate]",
        stack_size = 100
      }
    })
    data:extend({
        {
          type = "recipe",
          category = "pulverising",
          name = "crushed-gold",
          icon = "__kyo-tweaks__/graphics/icons/crushed-gold.png",
          icon_size = 64,
          results = {
            {name = "crushed-gold", amount_min = 1, amount_max = 1, probability = 0.75},
            {name = "stone", amount_min = 1, amount_max = 1, probability = 0.25, catalyst_amount = 1},
          },
          main_product = "crushed-gold",
          energy_required = 0.5,
          ingredients = {
            {name = "gold-ore", amount = 1}
          },
          enabled = false,
          always_show_made_in = true,
          order = "b[gold-ingot]-b[crushed-gold]",
          subgroup = "gold"
      },
      {
          type = "recipe",
          category = "crafting",
          name = "gold-ingot-to-plate",
          icons = {
            {icon = "__kyo-tweaks__/graphics/icons/gold-plate.png", icon_size = 64},
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
          order = "b[gold-ingot]-b[gold-ingot-to-plate]"
      },
      {
        type = "recipe",
        name = "enriched-gold-plate",
        icons =
        {
          { icon = "__kyo-tweaks__/graphics/icons/gold-plate.png", icon_size = 64, icon_mipmaps = 3, },
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
        order = "b[gold-ingot]-b[enriched-gold-plate]"
      }
    })
end