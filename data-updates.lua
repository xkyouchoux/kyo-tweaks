local settings_util = require("settings_util")

if settings_util.allow_crushed_immersite_in_delivery_cannon then
    se_delivery_cannon_recipes["imersite-powder"] = {name="imersite-powder"}
end

if settings_util.bzaluminum then
    data.raw.item["enriched-aluminum"].stack_size = 50
end

if settings_util.bzcarbon then
end

if settings_util.bzchlorine then
end

if settings_util.bzgas then
end

if settings_util.bzgold then
    data.raw.item["enriched-gold"].stack_size = 50
    data.raw.item["enriched-silver"].stack_size = 50
end

if settings_util.bzlead then
    data.raw.item["enriched-lead"].stack_size = 50
end

if settings_util.bzsilicon then
end

if settings_util.bztin then
    data.raw.item["enriched-tin"].stack_size = 50
end

if settings_util.bztitanium then
    data.raw.item["enriched-titanium"].stack_size = 50
end

if settings_util.bztungsten then
    data.raw.item["enriched-tungsten"].stack_size = 50
end

if settings_util.bzzirconium then
    data.raw.item["enriched-zircon"].stack_size = 50
end