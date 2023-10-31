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
    
    ["landfill-silica"] = mods["bzaluminum"], 
    ["landfill-lead-ore"] = mods["bzlead"], 
    ["landfill-titanium-ore"] = mods["bztitanium"], 
    ["landfill-tungsten-ore"] = mods["bztungsten"], 
    ["landfill-zircon"] = mods["bzzirconium"], 
    ["landfill-flake-graphite"] = mods["bzcarbon"], 
    ["landfill-aluminum-ore"] = mods["bzaluminum"], 
    ["landfill-tin-ore"] = mods["bztin"],
    ["landfill-gold-ore"] = mods["bzgold"],
    ["landfill-silver-ore"] = mods["bzgold"]
}) do
    if value then data_util.modify_landfill_recipe(name) end
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

if data.raw.item["solder"] then
end

if mods["FluidMustFlow"] then
    data.raw["storage-tank"]["duct-small"].se_allow_in_space = true
    data.raw["storage-tank"]["duct"].se_allow_in_space = true
    data.raw["storage-tank"]["duct-long"].se_allow_in_space = true
    data.raw["storage-tank"]["duct-t-junction"].se_allow_in_space = true
    data.raw["storage-tank"]["duct-curve"].se_allow_in_space = true
    data.raw["storage-tank"]["duct-cross"].se_allow_in_space = true
    data.raw["pump"]["non-return-duct"].se_allow_in_space = true
    data.raw["pump"]["duct-end-point-intake"].se_allow_in_space = true
    data.raw["pump"]["duct-end-point-outtake"].se_allow_in_space = true
    data.raw["pipe-to-ground"]["duct-underground"].se_allow_in_space = true
end

data_util.remove_ingredient("se-biological-science-pack-4", "se-core-fragment-se-vitamelange")

for _, recipe in pairs(data.raw.recipe) do
    if recipe.category == "kiln" then recipe.category = "smelting" end
end

data_util.create_landfill_recipe("uranium-ore")
data_util.create_landfill_recipe("se-vitamelange")
data_util.create_landfill_recipe("se-cryonite")
data_util.create_landfill_recipe("se-vulcanite")
data_util.create_landfill_recipe("gold-ore")
data_util.create_landfill_recipe("silver-ore")

if mods["safefill"] then
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

table.insert(data.raw.wall["concrete-wall"].resistances, {type = "kr-explosion", percent = 100})
table.insert(data.raw.wall["concrete-wall"].resistances, {type = "radioactive", percent = 100})
table.insert(data.raw.wall["steel-wall"].resistances, {type = "kr-explosion", percent = 100})
table.insert(data.raw.wall["steel-wall"].resistances, {type = "radioactive", percent = 100})

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

if data.raw.recipe["basic-chemical-plant"] then
    data_util.remove_ingredient("chemical-plant", "pipe")
    data_util.replace_or_add_ingredient("chemical-plant", "stone-brick", "basic-chemical-plant", 1)
    data_util.remove_ingredient("basic-chemical-plant", "tin-plate")
    data_util.replace_or_add_ingredient("basic-chemical-plant", "sand", "stone-brick", 4)
    data_util.replace_or_add_ingredient("basic-chemical-plant", "iron-plate", "motor", 3)
end

if data.raw.recipe["gas-extractor"] then
    data_util.remove_ingredient("gas-extractor", "iron-plate")
    data_util.replace_or_add_ingredient("gas-extractor", "sand", "electric-motor", 2)
    data_util.tech_remove_prerequisites("gas-extraction", {"kr-stone-processing"})
    data_util.tech_add_ingredients("gas-extraction", {"automation-science-pack"})
    data_util.tech_add_prerequisites("gas-extraction", {"kr-basic-fluid-handling"})
end

if mods["bztin"] then
    data_util.recipe_set_energy_required("tin-plate", 48)
    data_util.replace_or_add_ingredient("tin-plate", "tin-ore", "tin-ore", 20)
    data_util.replace_or_add_result("tin-plate", "tin-plate", "tin-plate", 15)
    data_util.replace_or_add_result("enriched-tin", "enriched-tin", "enriched-tin", 9)
    data_util.replace_or_add_result("dirty-water-filtration-tin", "stone", "stone", nil, nil, 1, 1, .3)
    data_util.replace_or_add_result("dirty-water-filtration-tin", "tin-ore", "tin-ore", nil, nil, 1, 1, .05)
    data_util.recipe_set_energy_required("molten-tin", 60)
    data_util.recipe_set_energy_required("tin-ingot", 25)
    data_util.recipe_set_energy_required("tin-ingot-to-plate", 2.5)
    
    data_util.replace_or_add_ingredient("kr-steel-pipe-to-ground", "solder", "solder", 4)
    data_util.replace_or_add_ingredient("se-space-pipe-to-ground", nil, "solder", 4)

    if not mods["bzgold"] then
        data_util.replace_or_add_ingredient("processing-unit", nil, "solder", 1)
        data_util.replace_or_add_ingredient("se-processing-unit-holmium", nil, "solder", 1)
    end
end

if mods["bzlead"] then
    data_util.recipe_set_energy_required("lead-plate", 48)
    data_util.replace_or_add_ingredient("lead-plate", "lead-ore", "lead-ore", 20)
    data_util.replace_or_add_result("lead-plate", "lead-plate", "lead-plate", 15)
    data_util.replace_or_add_result("enriched-lead", "enriched-lead", "enriched-lead", 9)
    data_util.replace_or_add_result("dirty-water-filtration-lead", "lead-ore", "lead-ore", nil, nil, 1, 1, .1)
end

if mods["bztitanium"] then
    data_util.recipe_set_energy_required("titanium-plate", 16)
    data_util.replace_or_add_ingredient("titanium-plate", "titanium-ore", "titanium-ore", 15)
    data_util.replace_or_add_result("titanium-plate", "titanium-plate", "titanium-plate", 5)
    data_util.replace_or_add_result("enriched-titanium", "enriched-titanium", "enriched-titanium", 4)
    data_util.replace_or_add_ingredient("enriched-titanium-plate", "enriched-titanium", "enriched-titanium", 5)
    data_util.replace_or_add_ingredient("titanium-ingot", "molten-titanium", "molten-titanium", 250, true)
    data_util.tech_add_prerequisites("se-pyroflux-smelting", {"enriched-titanium"})
end

local adv_stone = data_util.split_matter_tech("kr-matter-stone-processing")

if adv_stone then
    data_util.recipe_require_tech("matter-to-glass", adv_stone)
    data_util.recipe_require_tech("matter-to-silicon", adv_stone)
    if mods["bzsilicon"] then
        data_util.recipe_require_tech("matter-to-silica", adv_stone)
    end
end

for name, value in pairs({
    ["aluminum"] = mods["bzaluminum"],
    ["carbon"] = mods["bzcarbon"],
    ["gas"] = mods["bzgas"],
    ["gold"] = mods["bzgold"],
    ["salt"] = mods["bzchlorine"],
    ["silver"] = mods["bzgold"],
    ["lead"] = mods["bzlead"],
    ["tin"] = mods["bztin"],
    ["titanium"] = mods["bztitanium"],
    ["tungsten"] = mods["bztungsten"],
    ["zirconium"] = mods["bzzirconium"]
}) do
    if value then data_util.update_matter_tech(name.."-matter-processing") end
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

if settings_util.modify_chlorine and data.raw.recipe["matter-to-salt"] then
    data_util.replace_stabilizer("matter-to-salt")
end

if mods["bzgas"] and data.raw.recipe["matter-to-gas"] then
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

if mods["bzlead"] then
    local adv_lead = data_util.split_matter_tech("lead-matter-processing")
    if adv_lead then
        data_util.recipe_require_tech("matter-to-lead-plate", adv_lead)
        data_util.add_basic_stabilizer("matter-to-lead-ore")
        data_util.set_matter_ingredient("matter-to-lead-ore", 10)
        data_util.set_matter_ingredient("matter-to-lead-plate", 15)
    end
end

if mods["bztin"] then
    local adv_tin = data_util.split_matter_tech("tin-matter-processing")
    if adv_tin then
        data_util.recipe_require_tech("matter-to-tin-plate", adv_tin)
        data_util.add_basic_stabilizer("matter-to-tin-ore")
        data_util.set_matter_ingredient("matter-to-tin-ore", 10)
        data_util.set_matter_ingredient("matter-to-tin-plate", 15)
    end
end

if mods["bztitanium"] then
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