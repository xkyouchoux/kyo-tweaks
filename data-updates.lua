local settings_util = require("settings_util")

if settings_util.allow_crushed_immersite_in_delivery_cannon then
    se_delivery_cannon_recipes["imersite-powder"] = {name="imersite-powder"}
end

if settings_util.gold.rebalance_gold then
    data.raw.item["enriched-gold"].subgroup = "gold"
    data.raw.item["enriched-gold"].stack_size = 50

    data.raw.item["gold-ore"].order = "a-a-b"
    data.raw.item["crushed-gold"].order = "a-a-c"
    data.raw.item["enriched-gold"].order = "a-a-d"
    data.raw.item["gold-ingot"].order = "a-a-f"
    data.raw.item["gold-plate"].order = "a-a-g"
    se_delivery_cannon_recipes["crushed-gold"] = {name="crushed-gold"}
    se_delivery_cannon_recipes["gold-plate"] = {name="gold-plate"}

    data.raw.recipe["molten-gold"].order = "a-a-e"
    data.raw.recipe["enriched-gold"].subgroup = "gold"
    data.raw.recipe["dirty-water-filtration-gold"].subgroup = "gold"
end

if settings_util.gold.silver_processing then
    data.raw.item["enriched-silver"].subgroup = "silver"
    data.raw.item["enriched-silver"].stack_size = 50
    se_delivery_cannon_recipes["enriched-silver"] = {name="enriched-silver"}
    se_delivery_cannon_recipes["silver-ingot"] = {name="silver-ingot"}
    
    data.raw.item["silver-ore"].order = "a-a-b"
    data.raw.item["enriched-silver"].order = "a-a-c"
    data.raw.item["silver-ingot"].order = "a-a-f"
    data.raw.item["silver-plate"].order = "a-a-g"
    data.raw.item["silver-brazing-alloy"].order = "a-a-h"
    
    data.raw.recipe["molten-silver"].order = "a-a-d"
    data.raw.recipe["enriched-silver"].subgroup = "silver"
    data.raw.recipe["dirty-water-filtration-silver"].subgroup = "silver"
end

if settings_util.modify_lead then
    data.raw.item["se-core-fragment-lead-ore"].subgroup = "lead"
    data.raw.item["lead-ore"].subgroup = "lead"
    data.raw.item["enriched-lead"].stack_size = 50
    
    data.raw.item["lead-ore"].order = "a-a-b"
    data.raw.item["enriched-lead"].order = "a-a-c"
    data.raw.item["lead-ingot"].order = "a-a-e"
    data.raw.item["lead-plate"].order = "a-a-f"

    data.raw.recipe["molten-lead"].order = "a-a-d"
    data.raw.recipe["se-core-fragment-lead-ore"].subgroup = "lead"
    data.raw.recipe["enriched-lead"].subgroup = "lead"
    data.raw.recipe["dirty-water-filtration-lead"].subgroup = "lead"
end

if settings_util.modify_tin then
    data.raw.item["se-core-fragment-tin-ore"].subgroup = "tin"
    data.raw.item["tin-ore"].subgroup = "tin"
    data.raw.item["enriched-tin"].stack_size = 50
    
    data.raw.item["tin-ore"].order = "a-a-b"
    data.raw.item["enriched-tin"].order = "a-a-c"
    data.raw.item["tin-ingot"].order = "a-a-e"
    data.raw.item["tin-plate"].order = "a-a-f"

    data.raw.recipe["molten-tin"].order = "a-a-d"
    data.raw.recipe["se-core-fragment-tin-ore"].subgroup = "tin"
    data.raw.recipe["enriched-tin"].subgroup = "tin"
    data.raw.recipe["dirty-water-filtration-tin"].subgroup = "tin"
end

if settings_util.modify_titanium then
    data.raw.item["se-core-fragment-titanium-ore"].subgroup = "titanium"
    data.raw.item["titanium-ore"].subgroup = "titanium"
    data.raw.item["enriched-titanium"].stack_size = 50
    
    data.raw.item["titanium-ore"].order = "a-a-b"
    data.raw.item["enriched-titanium"].order = "a-a-c"
    data.raw.item["titanium-ingot"].order = "a-a-e"
    data.raw.item["titanium-plate"].order = "a-a-f"

    data.raw.recipe["molten-titanium"].order = "a-a-d"
    data.raw.recipe["se-core-fragment-titanium-ore"].subgroup = "titanium"
    data.raw.recipe["enriched-titanium"].subgroup = "titanium"
    data.raw.recipe["dirty-water-filtration-titanium"].subgroup = "titanium"
end

if settings_util.modify_chlorine then
    data.raw.recipe["salt"].subgroup = "chemical"
    data.raw.recipe["salt-filtration"].subgroup = "chemical"
    data.raw.recipe["ferric-chloride"].subgroup = "chemical"
    data.raw.recipe["ferric-chloride-hcl"].subgroup = "chemical"
    data.raw.recipe["bakelite"].subgroup = "chemical"
    data.raw.recipe["bakelite-hcl"].subgroup = "chemical"
    data.raw.recipe["phenol"].subgroup = "chemical"
    data.raw.recipe["phenol-from-oil"].subgroup = "oil"
end