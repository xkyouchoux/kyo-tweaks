local data_util = require("data_util")
local settings_util = require("settings_util")

if settings_util.produce_double_heatshielding then
    data_util.replace_or_add_result("se-heat-shielding", "se-heat-shielding", "se-heat-shielding", 2)
    data_util.replace_or_add_result("se-heat-shielding-iridium", "se-heat-shielding", "se-heat-shielding", 4)
end

if settings_util.produce_double_lds then
    data_util.replace_or_add_result("low-density-structure", "low-density-structure", "low-density-structure", 2)
    data_util.replace_or_add_result("se-low-density-structure-beryllium", "low-density-structure", "low-density-structure", 4)
    if settings_util.modify_carbon and data.raw.recipe["low-density-structure-nanotubes"] then
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

if settings_util.rebalance_pipes then
    if data.raw.item["solder"] then
        data_util.replace_or_add_ingredient("kr-steel-pipe-to-ground", "solder", "solder", 4)
        data_util.replace_or_add_ingredient("se-space-pipe-to-ground", nil, "solder", 4)
    end
    if mods["se-flow-control-bridge"] then
        data_util.recipe_set_energy_required("space-pipe-elbow", 0.01)
        data_util.recipe_set_energy_required("space-pipe-straight", 0.01)
        data_util.recipe_set_energy_required("space-pipe-t-junction", 0.01)
    end
    if mods["Flow_Control_Valves_Only"] then
        data_util.delete_recipe("pipe-elbow")
        data_util.delete_recipe("pipe-straight")
        data_util.delete_recipe("pipe-junction")
    end

    data_util.remove_ingredient("pipe-to-ground", "iron-plate")

    data_util.remove_ingredient("kr-steel-pipe-to-ground", "steel-plate")
    data_util.replace_or_add_ingredient("kr-steel-pipe-to-ground", "kr-steel-pipe", "kr-steel-pipe", 10)

    data_util.recipe_set_energy_required("se-space-pipe", 2.5)
    data_util.recipe_set_energy_required("se-space-pipe-to-ground", 2.5)
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

if settings_util.add_more_landfill_recipes then
    if settings_util.modify_gold then
        data_util.create_landfill_recipe("gold-ore")
        data_util.create_landfill_recipe("silver-ore")
    end
    
    data_util.create_landfill_recipe("uranium-ore")
    data_util.create_landfill_recipe("se-vitamelange")
    data_util.create_landfill_recipe("se-cryonite")
    data_util.create_landfill_recipe("se-vulcanite")
end

for name, value in pairs({
    ["landfill"] = true,
    ["landfill-2"] = true, 
    ["landfill-sand"] = true,
    ["landfill-se-scrap"] = true, 
    ["landfill-iron-ore"] = true, 
    ["landfill-copper-ore"] = true,
    ["landfill-uranium-ore"] = true,
    ["landfill-se-cryonite"] = true,
    ["landfill-se-vulcanite"] = true,
    ["landfill-se-vitamelange"] = true,
    ["landfill-se-iridium-ore"] = true, 
    ["landfill-se-holmium-ore"] = true, 
    ["landfill-se-beryllium-ore"] = true, 
    ["landfill-raw-rare-metals"] = true, 
    ["landfill-raw-imersite"] = true,
    
    ["landfill-silica"] = settings_util.modify_aluminum, 
    ["landfill-lead-ore"] = settings_util.modify_lead, 
    ["landfill-titanium-ore"] = settings_util.modify_titanium, 
    ["landfill-tungsten-ore"] = settings_util.modify_tungsten, 
    ["landfill-zircon"] = settings_util.modify_zirconium, 
    ["landfill-flake-graphite"] = settings_util.modify_carbon, 
    ["landfill-aluminum-ore"] = settings_util.modify_aluminum, 
    ["landfill-tin-ore"] = settings_util.modify_tin,
    ["landfill-gold-ore"] = settings_util.modify_gold,
    ["landfill-silver-ore"] = settings_util.modify_gold
}) do
    if value then data_util.modify_landfill_recipe(name) end
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

if settings_util.foundry.change_smelting_or_kiln_recipes_to_founding_recipes then
    for name, recipe in pairs(data.raw.recipe) do
        if (recipe.category == "kiln" or recipe.category == "smelting") and not name == "stone-brick" then
            if recipe.ingredients and #recipe.ingredients > 1 then
                recipe.category = "founding"
            end
        end
    end
end

if settings_util.safefill_obey_restrictions then
    local safefills = {
        "safefill-shallow",
        "safefill-medium",
        "safefill-deep",
        "safefill-mud",
        "safefill-green",
        "safefill-deepgreen"
    }

    for _, value in pairs(safefills) do
        if data.raw.item[value] then
            data.raw.item[value].place_as_tile.result = value.."-water"
            data.raw.tile[value].name = value.."-water"
            data.raw.tile[value.."-water"] = data.raw.tile[value]
            data.raw.tile[value] = null
        end
    end
end

if settings_util.aai_k2_wall_patch then
    table.insert(data.raw.wall["concrete-wall"].resistances, {type = "kr-explosion", percent = 100})
    table.insert(data.raw.wall["concrete-wall"].resistances, {type = "radioactive", percent = 100})
    table.insert(data.raw.wall["steel-wall"].resistances, {type = "kr-explosion", percent = 100})
    table.insert(data.raw.wall["steel-wall"].resistances, {type = "radioactive", percent = 100})
end

if settings_util.update_circuit_recipes then
    if data.raw.item["cybersyn-combinator"] then
        if data.raw.item["optical-fiber"] then
            data_util.replace_or_add_ingredient("cybersyn-combinator", nil, "optical-fiber", 1)
        end
        if data.raw.item["tinned-cable"] then
            data_util.replace_or_add_ingredient("cybersyn-combinator", "copper-cable", "tinned-cable", 5)
        end
        if mods["bzsilicon"] then
            data_util.replace_or_add_ingredient("cybersyn-combinator", nil, "silicon", 1)
        end
    end
    if data.raw.item["pushbutton"] then
        data_util.remove_ingredient("pushbutton", "advanced-circuit")
        if data.raw.item["optical-fiber"] then
            data_util.replace_or_add_ingredient("pushbutton", nil, "optical-fiber", 1)
        end
        if data.raw.item["tinned-cable"] then
            data_util.replace_or_add_ingredient("pushbutton", "constant-combinator", "tinned-cable", 5)
        else
            data_util.replace_or_add_ingredient("pushbutton", "constant-combinator", "copper-cable", 5)
        end
        data_util.replace_or_add_ingredient("pushbutton", "electronic-circuit", "electronic-circuit", 2)
        if data.raw.item["bakelite"] then
            data_util.replace_or_add_ingredient("pushbutton", nil, "bakelite", 2)
        end
    end
end

if settings_util.foundry.move_electric_foundry then
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

if settings_util.foundry.rebalance_steel then
    data_util.recipe_set_energy_required("steel-plate", 16)
end

if settings_util.gas.change_chemical_plant_ingredients then
    if data.raw.recipe["chemical-plant"] and data.raw.recipe["basic-chemical-plant"] then
        data_util.remove_ingredient("chemical-plant", "pipe")
        data_util.replace_or_add_ingredient("chemical-plant", "stone-brick", "basic-chemical-plant", 1)
        if settings_util.modify_tin then
            data_util.remove_ingredient("basic-chemical-plant", "tin-plate")
        end
        data_util.replace_or_add_ingredient("basic-chemical-plant", "sand", "stone-brick", 4)
        data_util.replace_or_add_ingredient("basic-chemical-plant", "iron-plate", "motor", 3)
        data_util.remove_ingredient("gas-extractor", "iron-plate")
        data_util.replace_or_add_ingredient("gas-extractor", "sand", "electric-motor", 2)
        data_util.tech_remove_prerequisites("gas-extraction", {"kr-stone-processing"})
        data_util.tech_add_ingredients("gas-extraction", {"automation-science-pack"})
        data_util.tech_add_prerequisites("gas-extraction", {"kr-basic-fluid-handling"})
    end
end

if settings_util.tin.rebalance_tin then
    data_util.recipe_set_energy_required("tin-plate", 16)
    data_util.replace_or_add_result("dirty-water-filtration-tin", "stone", "stone", nil, nil, 1, 1, .3)
    data_util.replace_or_add_result("dirty-water-filtration-tin", "tin-ore", "tin-ore", nil, nil, 1, 1, .05)
    data_util.recipe_set_energy_required("molten-tin", 60)
    data_util.recipe_set_energy_required("tin-ingot", 25)
    data_util.recipe_set_energy_required("tin-ingot-to-plate", 2.5)

    if data.raw.item["solder"] and not mods["bzgold"] then
        data_util.replace_or_add_ingredient("processing-unit", nil, "solder", 1)
        data_util.replace_or_add_ingredient("se-processing-unit-holmium", nil, "solder", 1)
    end

end

if settings_util.lead.rebalance_lead then
    data_util.recipe_set_energy_required("lead-plate", 48)
    data_util.replace_or_add_ingredient("lead-plate", "lead-ore", "lead-ore", 20)
    data_util.replace_or_add_result("lead-plate", "lead-plate", "lead-plate", 15)
    data_util.replace_or_add_result("enriched-lead", "enriched-lead", "enriched-lead", 9)
    data_util.replace_or_add_result("dirty-water-filtration-lead", "lead-ore", "lead-ore", nil, nil, 1, 1, .1)
end

if settings_util.titanium.rebalance_titanium then
    data_util.recipe_set_energy_required("titanium-plate", 16)
    data_util.replace_or_add_ingredient("titanium-plate", "titanium-ore", "titanium-ore", 15)
    data_util.replace_or_add_result("titanium-plate", "titanium-plate", "titanium-plate", 5)
    data_util.replace_or_add_result("enriched-titanium", "enriched-titanium", "enriched-titanium", 4)
    data_util.replace_or_add_ingredient("enriched-titanium-plate", "enriched-titanium", "enriched-titanium", 5)
    data_util.replace_or_add_ingredient("titanium-ingot", "molten-titanium", "molten-titanium", 250, true)
    data_util.tech_add_prerequisites("se-pyroflux-smelting", {"enriched-titanium"})
end

if settings_util.gold.rebalance_gold then
    data_util.allow_productivity("crushed-gold")
    data_util.allow_productivity("enriched-gold-plate")
    data_util.recipe_require_tech("crushed-gold", "gold-processing")
    data_util.recipe_require_tech("enriched-gold", "gold-processing")
    data_util.recipe_require_tech("enriched-gold-plate", "gold-processing")
    data_util.recipe_require_tech("dirty-water-filtration-gold", "gold-processing")
    data_util.tech_add_prerequisites("gold-processing", {"kr-enriched-ores"})
    data_util.recipe_require_tech("molten-gold", "se-pyroflux-smelting")
    data_util.recipe_require_tech("gold-ingot-casting", "se-pyroflux-smelting")
    data_util.recipe_require_tech("gold-ingot-to-plate", "se-pyroflux-smelting")
    data_util.replace_or_add_ingredient("enriched-gold", "gold-ore", "crushed-gold", 9)
    data_util.replace_or_add_result("enriched-gold", "enriched-gold", "enriched-gold", 4)
    data_util.replace_or_add_ingredient("gold-ingot-casting", "molten-gold", "molten-gold", 250, true)
    data_util.replace_or_add_ingredient("gold-ingot-casting", nil, "sand", 1)
    data_util.recipe_set_energy_required("gold-ingot-casting", 50)

    data_util.replace_or_add_ingredient("se-empty-data-gold", "gold-ingot", "gold-plate", 2)
    data.raw.recipe["se-empty-data-gold"].icons[2].icon = data.raw.item["gold-plate"].icon
    data.raw.recipe["se-empty-data-gold"].icons[2].icon_size = data.raw.item["gold-plate"].icon_size
    data_util.replace_or_add_ingredient("se-heavy-bearing", "gold-ingot", "gold-plate", 5)
    data_util.replace_or_add_ingredient("cpu", "gold-ingot", "gold-plate", 5)
    data_util.replace_or_add_ingredient("cpu-holmium", "gold-ingot", "gold-plate", 5)
    data_util.replace_or_add_ingredient("mainboard", "gold-ingot", "gold-plate", 10)
    data_util.replace_or_add_ingredient("mainboard-holmium", "gold-ingot", "gold-plate", 10)
    data_util.delete_recipe("gold-ingot")
    data_util.delete_recipe("enriched-gold-ingot")
end

if settings_util.gold.rebalance_silver then
    local gold_modifier = settings_util.gold.gold_byproduct and 0 or 2
    if settings_util.lead.lead_byproduct then
        data_util.replace_or_add_result("copper-plate", "silver-ore", "silver-ore", 1 + gold_modifier)
        data_util.replace_or_add_result("enriched-copper", "silver-ore", "silver-ore", 1 + gold_modifier)
        data_util.replace_or_add_result("lead-plate", "silver-ore", "silver-ore", nil, nil, 3, 6)
        data_util.replace_or_add_result("enriched-lead", "silver-ore", "silver-ore", nil, nil, 2, 3)
    else
        data_util.replace_or_add_result("copper-plate", "silver-ore", "silver-ore", nil, nil, 4 + gold_modifier, 7 + gold_modifier)
        data_util.replace_or_add_result("enriched-copper", "silver-ore", "silver-ore", nil, nil, 3 + gold_modifier, 4 + gold_modifier)
    end
    if gold_modifier == 0 then
        data_util.replace_or_add_result("enriched-gold", "enriched-silver", "silver-ore", 2)
    else
        data_util.remove_result("enriched-gold", "enriched-silver")
    end
    data_util.replace_or_add_ingredient("silver-plate", "silver-ore", "silver-ore", 10)
    data_util.replace_or_add_result("silver-plate", "silver-plate", "silver-plate", 5)
    data_util.recipe_set_energy_required("silver-plate", 16)
    data_util.replace_or_add_result("dirty-water-filtration-silver", "silver-ore", "silver-ore", nil, nil, 1, 1, .1)
    data_util.replace_or_add_ingredient("enriched-silver-plate", "enriched-silver", "enriched-silver", 5)
    data_util.replace_or_add_result("enriched-silver-plate", "silver-plate", "silver-plate", 5)
    data_util.recipe_set_energy_required("enriched-silver-plate", 16)
    data_util.remove_ingredient("chemical-plant", "silver-plate")
    data_util.tech_remove_prerequisites("silver-processing", {"automation"})
end

if settings_util.fix_matter_recipes then
    local adv_stone = data_util.split_matter_tech("kr-matter-stone-processing")

    if adv_stone then
        data_util.recipe_require_tech("matter-to-glass", adv_stone)
        data_util.recipe_require_tech("matter-to-silicon", adv_stone)
        if settings_util.modify_silicon and data.raw.recipe["matter-to-silica"] then
            data_util.recipe_require_tech("matter-to-silica", adv_stone)
        end
    end

    if settings_util.modify_gold and data.raw.technology["silver-matter-processing"] then
        if not settings_util.silver_processing then
            data.raw.technology["silver-matter-processing"] = null
        end
    end

    for name, value in pairs({
        ["aluminum"] = settings_util.modify_aluminum,
        ["carbon"] = settings_util.modify_carbon,
        ["gas"] = settings_util.modify_gas,
        ["gold"] = settings_util.modify_gold,
        ["salt"] = settings_util.modify_chlorine,
        ["silver"] = settings_util.modify_gold,
        ["lead"] = settings_util.modify_lead,
        ["tin"] = settings_util.modify_tin,
        ["titanium"] = settings_util.titanium,
        ["tungsten"] = settings_util.modify_tungsten,
        ["zirconium"] = settings_util.modify_zirconium
    }) do
        if value then data_util.update_matter_tech(name.."-matter-processing") end
    end

    if settings_util.modify_chlorine and data.raw.recipe["matter-to-salt"] then
        data_util.replace_stabilizer("matter-to-salt")
    end

    if settings_util.modify_gas and data.raw.recipe["matter-to-gas"] then
        data_util.add_basic_stabilizer("matter-to-gas")
        data_util.set_matter_ingredient("matter-to-gas", 10)
    end

    if settings_util.modify_gold and data.raw.recipe["matter-to-silver-ore"] then
        data_util.replace_stabilizer("matter-to-silver-ore")
        data_util.set_matter_ingredient("matter-to-silver-ore", 16)
    end

    if settings_util.modify_gold and data.raw.technology["gold-matter-processing"] then
        data_util.tech_add_prerequisites("gold-matter-processing", {"se-kr-advanced-matter-processing"})
        data_util.set_matter_ingredient("matter-to-gold-ore", 60)
    end

    if settings_util.modify_aluminum then
        local adv_aluminum = data_util.split_matter_tech("aluminum-matter-processing")
        if adv_aluminum then
            data_util.recipe_require_tech("matter-to-alumina", adv_aluminum)
            data_util.recipe_require_tech("matter-to-aluminum-plate", adv_aluminum)
            data_util.add_basic_stabilizer("matter-to-aluminum-ore")
            data_util.set_matter_ingredient("matter-to-aluminum-ore", 10)
            data_util.set_matter_ingredient("matter-to-alumina", 15)
            data_util.set_matter_ingredient("matter-to-aluminum-plate", 20)
        end
    end
    
    if settings_util.modify_carbon then
        local adv_carbon = data_util.split_matter_tech("carbon-matter-processing")
        if adv_carbon then
            data_util.recipe_require_tech("matter-to-graphite", adv_carbon)
            data_util.recipe_require_tech("matter-to-diamond", adv_carbon)
            data_util.add_basic_stabilizer("matter-to-flake-graphite")
            data_util.set_matter_ingredient("matter-to-flake-graphite", 10)
            data_util.set_matter_ingredient("matter-to-graphite", 15)
            data_util.set_matter_ingredient("matter-to-diamond", 20)
        end
    end

    if settings_util.modify_lead then
        local adv_lead = data_util.split_matter_tech("lead-matter-processing")
        if adv_lead then
            data_util.recipe_require_tech("matter-to-lead-plate", adv_lead)
            data_util.add_basic_stabilizer("matter-to-lead-ore")
            data_util.set_matter_ingredient("matter-to-lead-ore", 10)
            data_util.set_matter_ingredient("matter-to-lead-plate", 15)
        end
    end

    if settings_util.modify_tin then
        local adv_tin = data_util.split_matter_tech("tin-matter-processing")
        if adv_tin then
            data_util.recipe_require_tech("matter-to-tin-plate", adv_tin)
            data_util.add_basic_stabilizer("matter-to-tin-ore")
            data_util.set_matter_ingredient("matter-to-tin-ore", 10)
            data_util.set_matter_ingredient("matter-to-tin-plate", 15)
        end
    end

    if settings_util.modify_titanium then
        local adv_titanium = data_util.split_matter_tech("titanium-matter-processing")
        if adv_titanium then
            data_util.recipe_require_tech("matter-to-titanium-plate", adv_titanium)
            data_util.add_basic_stabilizer("matter-to-titanium-ore")
            data_util.set_matter_ingredient("matter-to-titanium-ore", 16)
            data_util.set_matter_ingredient("matter-to-titanium-plate", 24)
        end
    end

    if settings_util.modify_tungsten then
        local adv_tungsten = data_util.split_matter_tech("tungsten-matter-processing")
        if adv_tungsten then
            data_util.recipe_require_tech("matter-to-tungsten-plate", adv_tungsten)
            data_util.replace_stabilizer("matter-to-tungsten-ore")
            data_util.set_matter_ingredient("matter-to-tungsten-ore", 12)
            data_util.set_matter_ingredient("matter-to-tungsten-plate", 18)
        end
    end

    if settings_util.modify_zirconium then
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
end