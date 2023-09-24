local data_util = require("data_util")
local settings_util = require("settings_util")

if settings_util.produce_double_heatshielding then
    data_util.replace_or_add_result("se-heat-shielding", "se-heat-shielding", "se-heat-shielding", 2)
    data_util.replace_or_add_result("se-heat-shielding-iridium", "se-heat-shielding", "se-heat-shielding", 4)
end

if settings_util.produce_double_lds then
    data_util.replace_or_add_result("low-density-structure", "low-density-structure", "low-density-structure", 2)
    data_util.replace_or_add_result("se-low-density-structure-beryllium", "low-density-structure", "low-density-structure", 4)
    if data.raw.recipe["low-density-structure-nanotubes"] then
        data_util.replace_or_add_result("low-density-structure-nanotubes", "low-density-structure", "low-density-structure", 4)
    end
end

if settings_util.produce_double_modules then
    data_util.replace_or_add_result("speed-module", "speed-module", "speed-module", 2)
    data_util.replace_or_add_result("speed-module-2", "speed-module-2", "speed-module-2", 2)
    data_util.replace_or_add_result("speed-module-3", "speed-module-3", "speed-module-3", 2)
    data_util.replace_or_add_result("speed-module-4", "speed-module-4", "speed-module-4", 2)
    data_util.replace_or_add_result("speed-module-5", "speed-module-5", "speed-module-5", 2)
    data_util.replace_or_add_result("speed-module-6", "speed-module-6", "speed-module-6", 2)
    data_util.replace_or_add_result("speed-module-7", "speed-module-7", "speed-module-7", 2)
    data_util.replace_or_add_result("speed-module-8", "speed-module-8", "speed-module-8", 2)
    data_util.replace_or_add_result("speed-module-9", "speed-module-9", "speed-module-9", 2)

    data_util.replace_or_add_result("effectivity-module", "effectivity-module", "effectivity-module", 2)
    data_util.replace_or_add_result("effectivity-module-2", "effectivity-module-2", "effectivity-module-2", 2)
    data_util.replace_or_add_result("effectivity-module-3", "effectivity-module-3", "effectivity-module-3", 2)
    data_util.replace_or_add_result("effectivity-module-4", "effectivity-module-4", "effectivity-module-4", 2)
    data_util.replace_or_add_result("effectivity-module-5", "effectivity-module-5", "effectivity-module-5", 2)
    data_util.replace_or_add_result("effectivity-module-6", "effectivity-module-6", "effectivity-module-6", 2)
    data_util.replace_or_add_result("effectivity-module-7", "effectivity-module-7", "effectivity-module-7", 2)
    data_util.replace_or_add_result("effectivity-module-8", "effectivity-module-8", "effectivity-module-8", 2)
    data_util.replace_or_add_result("effectivity-module-9", "effectivity-module-9", "effectivity-module-9", 2)

    data_util.replace_or_add_result("productivity-module", "productivity-module", "productivity-module", 2)
    data_util.replace_or_add_result("productivity-module-2", "productivity-module-2", "productivity-module-2", 2)
    data_util.replace_or_add_result("productivity-module-3", "productivity-module-3", "productivity-module-3", 2)
    data_util.replace_or_add_result("productivity-module-4", "productivity-module-4", "productivity-module-4", 2)
    data_util.replace_or_add_result("productivity-module-5", "productivity-module-5", "productivity-module-5", 2)
    data_util.replace_or_add_result("productivity-module-6", "productivity-module-6", "productivity-module-6", 2)
    data_util.replace_or_add_result("productivity-module-7", "productivity-module-7", "productivity-module-7", 2)
    data_util.replace_or_add_result("productivity-module-8", "productivity-module-8", "productivity-module-8", 2)
    data_util.replace_or_add_result("productivity-module-9", "productivity-module-9", "productivity-module-9", 2)
end

if settings_util.produce_double_underground_space_pipe then
    data_util.replace_or_add_result("se-space-pipe-to-ground", "se-space-pipe-to-ground", "se-space-pipe-to-ground", 2)
end

if settings_util.remove_vitamelange_core_fragment_from_biological_sceince_pack_4 then
    data_util.remove_ingredient("se-biological-science-pack-4", "se-core-fragment-se-vitamelange")
end

if settings_util.change_kiln_recipes_back_to_smelting_recipes then
    for _, recipe in pairs(data.raw.recipe) do
        if recipe.category == "kiln" then recipe.category = "smelting" end
    end
end

for _, value in pairs({
    "landfill",
    "landfill-2", 
    "landfill-sand",
    "landfill-se-scrap", 
    "landfill-iron-ore", 
    "landfill-copper-ore", 
    "landfill-se-iridium-ore", 
    "landfill-se-holmium-ore", 
    "landfill-se-beryllium-ore", 
    "landfill-raw-rare-metals", 
    "landfill-raw-imersite",
    
    "landfill-silica", 
    "landfill-lead-ore", 
    "landfill-titanium-ore", 
    "landfill-tungsten-ore", 
    "landfill-zircon", 
    "landfill-flake-graphite", 
    "landfill-aluminum-ore", 
    "landfill-tin-ore"
}) do
    data_util.modify_landfill_recipe(value)
end

for _, value in pairs({settings_util.additional_landfill_recipes}) do
    data_util.modify_landfill_recipe(value)
end

if settings_util.modified_space_scaffolding_amount > 1 then
    data_util.replace_or_add_result("se-space-platform-scaffold", "se-space-platform-scaffold", "se-space-platform-scaffold", settings_util.modified_space_scaffolding_amount)
end

if settings_util.modified_space_plating_amount > 1 then
    data_util.replace_or_add_result("se-space-platform-plating", "se-space-platform-plating", "se-space-platform-plating", settings_util.modified_space_plating_amount)
end

if settings_util.modified_spaceship_floor_amount > 1 then
    data_util.replace_or_add_result("se-spaceship-floor", "se-spaceship-floor", "se-spaceship-floor", settings_util.modified_spaceship_floor_amount)
end

if settings_util.change_smelting_or_kiln_recipes_to_founding_recipes then
    for name, recipe in pairs(data.raw.recipe) do
        if (recipe.category == "kiln" or recipe.category == "smelting") and not name == "stone-brick" then
            if recipe.ingredients and #recipe.ingredients > 1 then
                recipe.category = "founding"
            end
        end
    end
end

if settings_util.move_electric_foundry then
    data_util.replace_or_add_ingredient("electric-foundry", "processing-unit", "advanced-circuit", 5)
    data_util.recipe_require_tech("electric-foundry", "advanced-material-processing-2")
    if data.raw.technology["electric-foundry"] then
        data.raw.technology["electric-foundry"] = null
        if data.raw.technology["advanced-founding"] then
            data_util.tech_remove_prerequisites("advanced-founding", {"electric-foundry"})
            data_util.tech_add_prerequisites("advanced-founding", {"production-science-pack"})
        end
    end
end

if settings_util.change_chemical_plant_ingredients then
    if data.raw.recipe["chemical-plant"] and data.raw.recipe["basic-chemical-plant"] then
        data_util.remove_ingredient("chemical-plant", "pipe")
        data_util.replace_or_add_ingredient("chemical-plant", "stone-brick", "basic-chemical-plant", 1)
    end
end

if settings_util.rebalance_steel then
    data_util.recipe_set_energy_required("steel-plate", 16)
end

if settings_util.rebalance_tin then
    data.raw.resource["tin-ore"].autoplace.base_spots_per_km2 = 0.5
    data_util.recipe_set_energy_required("tin-plate", 36)
    data_util.replace_or_add_ingredient("tin-plate", "tin-ore", "tin-ore", 20)
    data_util.replace_or_add_result("tin-plate", "tin-plate", "tin-plate", 15)
    data_util.replace_or_add_result("enriched-tin", "enriched-tin", "enriched-tin", 9)
end

if settings_util.rebalance_lead then
    data_util.recipe_set_energy_required("lead-plate", 48)
    data_util.replace_or_add_ingredient("lead-plate", "lead-ore", "lead-ore", 20)
    data_util.replace_or_add_result("lead-plate", "lead-plate", "lead-plate", 15)
    data_util.replace_or_add_result("enriched-lead", "enriched-lead", "enriched-lead", 9)
end

if settings_util.rebalance_titanium then
    data_util.replace_or_add_result("titanium-plate", "titanium-plate", "titanium-plate", 5)
    data_util.replace_or_add_ingredient("enriched-titanium-plate", "enriched-titanium", "enriched-titanium", 5)
    data_util.delete_recipe("molten-titanium")
    data_util.delete_recipe("titanium-ingot")
    data_util.delete_recipe("titanium-ingot-to-plate")
    data.raw.recipe["titanium-plate"].order = "a-a"
    data.raw.recipe["enriched-titanium-plate"].order = "a-d"
    new_recipe = table.deepcopy(data.raw.recipe["rare-metals-vulcanite"])
    new_recipe.name = "titanium-plate-vulcanite"
    new_recipe.subgroup = "titanium"
    new_recipe.order = "a-d"
    new_recipe.icons = data_util.sub_icons(data.raw.item["titanium-plate"].icon, data.raw.item["se-vulcanite-block"].icon)
    data_util.replace_or_add_ingredient(new_recipe, "enriched-rare-metals", "enriched-titanium", 24)
    data_util.replace_or_add_result(new_recipe, "rare-metals", "titanium-plate", 36)
    data.raw.recipe[new_recipe.name] = new_recipe
    data_util.recipe_require_tech(new_recipe.name, "se-pyroflux-smelting")
    data_util.tech_add_prerequisites("se-pyroflux-smelting", {"enriched-titanium"})
end

if settings_util.fix_matter_recipes then
    local adv_stone = data_util.split_matter_tech("kr-matter-stone-processing")

    if adv_stone then
        data_util.recipe_require_tech("matter-to-glass", adv_stone)
        data_util.recipe_require_tech("matter-to-silicon", adv_stone)
        if data.raw.recipe["matter-to-silica"] then
            data_util.recipe_require_tech("matter-to-silica", adv_stone)
        end
    end

    if data.raw.technology["silver-matter-processing"] then
        if not settings.startup["bzgold-silver"].value then
            data.raw.technology["silver-matter-processing"] = null
        end
    end

    for _, name in pairs({
        "aluminum",
        "carbon",
        "gas",
        "gold",
        "salt",
        "silver",
        "lead",
        "tin",
        "titanium",
        "tungsten",
        "zirconium"
    }) do
        data_util.update_matter_tech(name.."-matter-processing")
    end

    if data.raw.recipe["matter-to-salt"] then
        data_util.replace_stabilizer("matter-to-salt")
    end

    if data.raw.recipe["matter-to-gas"] then
        data_util.add_basic_stabilizer("matter-to-gas")
        data_util.set_matter_ingredient("matter-to-gas", 10)
    end

    if data.raw.recipe["matter-to-silver-ore"] then
        data_util.replace_stabilizer("matter-to-silver-ore")
        data_util.set_matter_ingredient("matter-to-silver-ore", 16)
    end

    if data.raw.technology["gold-matter-processing"] then
        data_util.tech_add_prerequisites("gold-matter-processing", {"se-kr-advanced-matter-processing"})
        data_util.set_matter_ingredient("matter-to-gold-ore", 60)
    end

    local adv_aluminum = data_util.split_matter_tech("aluminum-matter-processing")
    if adv_aluminum then
        data_util.recipe_require_tech("matter-to-alumina", adv_aluminum)
        data_util.recipe_require_tech("matter-to-aluminum-plate", adv_aluminum)
        data_util.add_basic_stabilizer("matter-to-aluminum-ore")
        data_util.set_matter_ingredient("matter-to-aluminum-ore", 10)
        data_util.set_matter_ingredient("matter-to-alumina", 15)
        data_util.set_matter_ingredient("matter-to-aluminum-plate", 20)
    end
    
    local adv_carbon = data_util.split_matter_tech("carbon-matter-processing")
    if adv_carbon then
        data_util.recipe_require_tech("matter-to-graphite", adv_carbon)
        data_util.recipe_require_tech("matter-to-diamond", adv_carbon)
        data_util.add_basic_stabilizer("matter-to-flake-graphite")
        data_util.set_matter_ingredient("matter-to-flake-graphite", 10)
        data_util.set_matter_ingredient("matter-to-graphite", 15)
        data_util.set_matter_ingredient("matter-to-diamond", 20)
    end

    local adv_lead = data_util.split_matter_tech("lead-matter-processing")
    if adv_lead then
        data_util.recipe_require_tech("matter-to-lead-plate", adv_lead)
        data_util.add_basic_stabilizer("matter-to-lead-ore")
        data_util.set_matter_ingredient("matter-to-lead-ore", 10)
        data_util.set_matter_ingredient("matter-to-lead-plate", 15)
    end

    local adv_tin = data_util.split_matter_tech("tin-matter-processing")
    if adv_tin then
        data_util.recipe_require_tech("matter-to-tin-plate", adv_tin)
        data_util.add_basic_stabilizer("matter-to-tin-ore")
        data_util.set_matter_ingredient("matter-to-tin-ore", 10)
        data_util.set_matter_ingredient("matter-to-tin-plate", 15)
    end

    local adv_titanium = data_util.split_matter_tech("titanium-matter-processing")
    if adv_titanium then
        data_util.recipe_require_tech("matter-to-titanium-plate", adv_titanium)
        data_util.add_basic_stabilizer("matter-to-titanium-ore")
        data_util.set_matter_ingredient("matter-to-titanium-ore", 16)
        data_util.set_matter_ingredient("matter-to-titanium-plate", 24)
    end

    local adv_tungsten = data_util.split_matter_tech("tungsten-matter-processing")
    if adv_tungsten then
        data_util.recipe_require_tech("matter-to-tungsten-plate", adv_tungsten)
        data_util.replace_stabilizer("matter-to-tungsten-ore")
        data_util.set_matter_ingredient("matter-to-tungsten-ore", 12)
        data_util.set_matter_ingredient("matter-to-tungsten-plate", 18)
    end

    local adv_zirconium = data_util.split_matter_tech("zirconium-matter-processing")
    if adv_zirconium then
        data_util.recipe_require_tech("matter-to-zirconia", adv_zirconium)
        data_util.recipe_require_tech("matter-to-zirconium-plate", adv_zirconium)
        data_util.add_basic_stabilizer("matter-to-zircon")
        data_util.set_matter_ingredient("matter-to-zircon", 12)
        data_util.set_matter_ingredient("matter-to-zirconia", 18)
        data_util.set_matter_ingredient("matter-to-zirconium-plate", 27)
    end
end