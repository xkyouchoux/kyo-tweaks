local settings_util = require("settings_util")

if settings_util.allow_crushed_immersite_in_delivery_cannon then
    se_delivery_cannon_recipes["imersite-powder"] = {name="imersite-powder"}
end

if settings_util.rebalance_gold then
    se_delivery_cannon_recipes["crushed-gold"] = {name="crushed-gold"}
    se_delivery_cannon_recipes["gold-plate"] = {name="gold-plate"}
end