local settings_util = require("settings_util")

if settings_util.allow_crushed_immersite_in_delivery_cannon then
    se_delivery_cannon_recipes["imersite-powder"] = {name="imersite-powder"}
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