local settings_util = {}

--k2se
settings_util.allow_crushed_immersite_in_delivery_cannon = settings.startup["kt-allow-crushed-immersite-in-delivery-cannon"].value

settings_util.produce_double_heatshielding = settings.startup["kt-produce-double-heatshielding"].value
settings_util.produce_double_lds = settings.startup["kt-produce-double-lds"].value
settings_util.produce_double_modules = settings.startup["kt-produce-double-modules"].value
settings_util.produce_double_underground_space_pipe = settings.startup["kt-produce-double-underground-space-pipe"].value
settings_util.remove_vitamelange_core_fragment_from_biological_sceince_pack_4 = settings.startup["kt-remove-vitamelange-core-fragment-from-biological-science-pack-4"].value
settings_util.change_kiln_recipes_back_to_smelting_recipes = settings.startup["kt-change-kiln-recipes-back-to-smelting-recipes"].value
settings_util.fix_matter_recipes = settings.startup["kt-fix-matter-recipes"].value

settings_util.modified_landfill_amount = settings.startup["kt-modified-landfill-amount"].value
settings_util.additional_landfill_recipes = {}

for recipe in string.gmatch(settings.startup["kt-additional-landfill-recipes"].value, '[^",%s]+') do
    settings_util.additional_landfill_recipes[#settings_util.additional_landfill_recipes + 1] = recipe
end

settings_util.modified_space_scaffolding_amount = settings.startup["kt-modified-space-scaffolding-amount"].value
settings_util.modified_space_plating_amount = settings.startup["kt-modified-space-plating-amount"].value
settings_util.modified_spaceship_floor_amount = settings.startup["kt-modified-spaceship-floor-amount"].value

--bzfoundry
settings_util.change_smelting_or_kiln_recipes_to_founding_recipes = settings.startup["kt-change-smelting-or-kiln-recipes-to-founding-recipes"] and settings.startup["kt-change-smelting-or-kiln-recipes-to-founding-recipes"].value
settings_util.move_electric_foundry = settings.startup["kt-move-electric-foundry"] and settings.startup["kt-move-electric-foundry"].value
settings_util.rebalance_steel = settings.startup["kt-rebalance-steel"] and settings.startup["kt-rebalance-steel"].value

--bztin
settings_util.rebalance_tin = settings.startup["kt-rebalance-tin"] and settings.startup["kt-rebalance-tin"].value

--bzlead
settings_util.rebalance_lead = settings.startup["kt-rebalance-lead"] and settings.startup["kt-rebalance-lead"].value

--bztitanium
settings_util.rebalance_titanium = settings.startup["kt-rebalance-titanium"] and settings.startup["kt-rebalance-titanium"].value

--bzgold
settings_util.rebalance_gold = settings.startup["kt-rebalance-gold"] and settings.startup["kt-rebalance-gold"].value

settings_util.silver_processing = settings.startup["bzgold-silver"] and settings.startup["bzgold-silver"].value

--bzgas
settings_util.change_chemical_plant_ingredients = settings.startup["kt-change-chemical-plant-ingredients"] and settings.startup["kt-change-chemical-plant-ingredients"].value

return settings_util