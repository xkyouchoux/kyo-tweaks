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

settings_util.add_more_landfill_recipes = settings.startup["kt-add-more-landfill-recipes"].value

--modify
settings_util.modify_aluminum = settings.startup["kt-modify-aluminum"] and settings.startup["kt-modify-aluminum"].value
settings_util.modify_carbon = settings.startup["kt-modify-carbon"] and settings.startup["kt-modify-carbon"].value
settings_util.modify_chlorine = settings.startup["kt-modify-chlorine"] and settings.startup["kt-modify-chlorine"].value
settings_util.modify_foundry = settings.startup["kt-modify-foundry"] and settings.startup["kt-modify-foundry"].value
settings_util.modify_gas = settings.startup["kt-modify-gas"] and settings.startup["kt-modify-gas"].value
settings_util.modify_gold = settings.startup["kt-modify-gold"] and settings.startup["kt-modify-gold"].value
settings_util.modify_lead = settings.startup["kt-modify-lead"] and settings.startup["kt-modify-lead"].value
settings_util.modify_silicon = settings.startup["kt-modify-silicon"] and settings.startup["kt-modify-silicon"].value
settings_util.modify_tin = settings.startup["kt-modify-tin"] and settings.startup["kt-modify-tin"].value
settings_util.modify_tungsten = settings.startup["kt-modify-tungsten"] and settings.startup["kt-modify-tungsten"].value
settings_util.modify_titanium = settings.startup["kt-modify-titanium"] and settings.startup["kt-modify-titanium"].value
settings_util.modify_zirconium = settings.startup["kt-modify-zirconium"] and settings.startup["kt-modify-zirconium"].value

--bzaluminum
settings_util.aluminum = {}

--bzcarbon
settings_util.carbon = {}

--bzchlorine
settings_util.chlorine = {}

--bzfoundry
settings_util.foundry = {}
settings_util.foundry.change_smelting_or_kiln_recipes_to_founding_recipes = settings_util.modify_foundry and settings.startup["kt-change-smelting-or-kiln-recipes-to-founding-recipes"] and settings.startup["kt-change-smelting-or-kiln-recipes-to-founding-recipes"].value
settings_util.foundry.move_electric_foundry = settings_util.modify_foundry and settings.startup["kt-move-electric-foundry"] and settings.startup["kt-move-electric-foundry"].value
settings_util.foundry.rebalance_steel = settings_util.modify_foundry and settings.startup["kt-rebalance-steel"] and settings.startup["kt-rebalance-steel"].value

--bzgas
settings_util.gas = {}
settings_util.gas.change_chemical_plant_ingredients = settings_util.modify_gas and settings.startup["kt-change-chemical-plant-ingredients"] and settings.startup["kt-change-chemical-plant-ingredients"].value

--bzgold
settings_util.gold = {}
settings_util.gold.gold_byproduct = (settings.startup["bzgold-byproduct"] and settings.startup["bzgold-byproduct"].value) and not (settings.startup["bz-no-byproduct"] and settings.startup["bz-no-byproduct"].value)
settings_util.gold.rebalance_gold = settings_util.modify_gold and settings.startup["kt-rebalance-gold"] and settings.startup["kt-rebalance-gold"].value
settings_util.gold.rebalance_silver = settings_util.modify_gold and settings.startup["kt-rebalance-silver"] and settings.startup["kt-rebalance-silver"].value
settings_util.gold.silver_processing = settings_util.modify_gold and (settings.startup["bzgold-silver"] and settings.startup["bzgold-silver"].value) or (settings.startup["bz-all-intermediates"] and settings.startup["bz-all-intermediates"].value)

--bzlead
settings_util.lead = {}
settings_util.lead.lead_byproduct = (settings.startup["bzlead-byproduct"] and settings.startup["bzlead-byproduct"].value) and not (settings.startup["bz-no-byproduct"] and settings.startup["bz-no-byproduct"].value)
settings_util.lead.rebalance_lead = settings_util.modify_lead and settings.startup["kt-rebalance-lead"] and settings.startup["kt-rebalance-lead"].value

--bzsilicon
settings_util.silicon = {}

--bztin
settings_util.tin = {}
settings_util.tin.rebalance_tin = settings_util.modify_tin and settings.startup["kt-rebalance-tin"] and settings.startup["kt-rebalance-tin"].value

--bztungsten
settings_util.tungsten = {}

--bztitanium
settings_util.titanium = {}
settings_util.titanium.rebalance_titanium = settings_util.modify_titanium and settings.startup["kt-rebalance-titanium"] and settings.startup["kt-rebalance-titanium"].value

--bzzirconium
settings_util.zirconium = {}

return settings_util