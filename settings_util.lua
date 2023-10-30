local settings_util = {}

--k2se
settings_util.allow_crushed_immersite_in_delivery_cannon = settings.startup["kt-allow-crushed-immersite-in-delivery-cannon"].value
settings_util.produce_double_heatshielding = settings.startup["kt-produce-double-heatshielding"].value
settings_util.produce_double_lds = settings.startup["kt-produce-double-lds"].value
settings_util.produce_double_modules = settings.startup["kt-produce-double-modules"].value
settings_util.modified_landfill_amount = settings.startup["kt-modified-landfill-amount"].value
settings_util.modified_space_scaffolding_amount = settings.startup["kt-modified-space-scaffolding-amount"].value
settings_util.modified_space_plating_amount = settings.startup["kt-modified-space-plating-amount"].value
settings_util.modified_spaceship_floor_amount = settings.startup["kt-modified-spaceship-floor-amount"].value

return settings_util