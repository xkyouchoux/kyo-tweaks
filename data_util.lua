local data_util = {}

local tmp = require("__space-exploration__/data_util")
local settings_util = require("settings_util")

for key, value in pairs(tmp) do
    if type(value) == "function" then data_util[key] = value end
end

data_util.modify_landfill_recipe = function(recipe)
    if settings_util.modified_landfill_amount > 1 and data.raw.recipe[recipe] then
        data_util.replace_or_add_result(recipe, "landfill", "landfill", settings_util.modified_landfill_amount)
    end
end

local tech_cards = {
    "automation-science-pack",
    "logistic-science-pack",
    "chemical-science-pack",
    "se-astronomic-science-pack-4",
    "se-energy-science-pack-4",
    "se-material-science-pack-4",
    "se-deep-space-science-pack-2",
    "se-kr-matter-science-pack-2"
}

data_util.update_matter_tech = function(name)
    if data.raw.technology[name] then
        data_util.tech_remove_ingredients(name, {"matter-tech-card"})
        data_util.tech_add_ingredients(name, tech_cards)
        data.raw.technology[name].order = "g-e-e"
    end
end

data_util.split_matter_tech = function(name)
    if data.raw.technology[name] then
        new_tech = table.deepcopy(data.raw.technology[name])
        new_tech.name = name .. "-adv"
        new_tech.effects = {}
        new_tech.prerequisites = {
            name,
            "se-kr-advanced-matter-processing"
        }
        data:extend({new_tech})
        return new_tech.name
    end
end

data_util.set_matter_ingredient = function(recipe, amount)
    data_util.replace_or_add_ingredient(recipe, "matter", "matter", amount, true)
end

data_util.add_basic_stabilizer = function(recipe)
    data_util.replace_or_add_ingredient(recipe, nil, "se-kr-charged-basic-stabilizer", 1)
    data_util.replace_or_add_result(recipe, nil, "se-kr-charged-basic-stabilizer", nil, nil, 1, 1, 0.199)
    data_util.replace_or_add_result(recipe, nil, "se-kr-basic-stabilizer", nil, nil, 1, 1, 0.8)
end

data_util.replace_stabilizer = function(recipe)
    data_util.remove_ingredient(recipe, "charged-matter-stabilizer")
    data_util.remove_result_sub(data.raw.recipe[recipe], "matter-stabilizer")
    data_util.add_basic_stabilizer(recipe)
end

return data_util