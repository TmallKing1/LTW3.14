# 下方
execute positioned ~0.2 ~-0.3 ~ align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~0.2 ~-0.3 ~0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~0.2 ~-0.3 ~-0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~ ~-0.3 ~ align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~ ~-0.3 ~0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~ ~-0.3 ~-0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~-0.2 ~-0.3 ~ align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~-0.2 ~-0.3 ~0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~-0.2 ~-0.3 ~-0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt

# 周围
execute positioned ~0.2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~0.2 ~ ~0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~0.2 ~ ~-0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~ ~ ~ align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~ ~ ~0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~ ~ ~-0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~-0.2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~-0.2 ~ ~0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~-0.2 ~ ~-0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt

# 上方
execute positioned ~0.2 ~0.3 ~ align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~0.2 ~0.3 ~0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~0.2 ~0.3 ~-0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~ ~0.3 ~ align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~ ~0.3 ~0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~ ~0.3 ~-0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~-0.2 ~0.3 ~ align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~-0.2 ~0.3 ~0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt
execute positioned ~-0.2 ~0.3 ~-0.2 align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ tnt run function mini:arrow/game/summon_tnt

# 分裂箭
execute if entity @s[tag=crit_] run summon arrow ~ ~ ~ {Motion: [0.0d, 1.0d, 0.0d], Tags: ["split", "new_arrow"]}
data modify entity @e[tag=new_arrow,limit=1] Owner set from entity @s Owner
# 累加箭计数器
execute unless score $ley_line_disorder mem matches 1 if entity @s[tag=crit_,tag=on_tnt] run function mini:arrow/game/check_arrow_owner
# 清除箭
kill @s