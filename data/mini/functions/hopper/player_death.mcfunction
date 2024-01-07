# 执行重生方法
function mini:hopper/game/respawn

# 复活特效
execute as @a at @s run function lib:sounds/error
effect give @s blindness 3 0 true

# 处理玩家掉落物品
# 获取玩家死亡位置
kill @e[type=armor_stand,tag=dead_marker]
summon armor_stand 0 0 5000 {Marker: 1b, Invisible: 1b, Invulnerable: 1b, Small: 1b, NoGravity: 1b, Tags: ["dead_marker"]}
execute store result entity @e[type=armor_stand,tag=dead_marker,limit=1] Pos[0] double 0.1 run scoreboard players get @s posX
execute store result entity @e[type=armor_stand,tag=dead_marker,limit=1] Pos[1] double 0.1 run scoreboard players get @s posY
execute store result entity @e[type=armor_stand,tag=dead_marker,limit=1] Pos[2] double 0.1 run scoreboard players get @s posZ
# 随机槽位掉落
function mini:hopper/game/random_slot
function mini:hopper/game/pop_slot
# 死亡掉落现金
scoreboard players operation $cash_temp mem = @s cash
scoreboard players operation $cash_temp mem /= #2 mem
scoreboard players operation @s cash -= $cash_temp mem
execute if score $cash_temp mem matches 1.. at @e[type=armor_stand,tag=dead_marker,limit=1] run summon item ~ ~ ~ {Item: {id: "paper", Count: 1, tag: {Enchantments: [{id: "protection", lvl: 1}], is_bonus: 1b, bonus_new: 1b}}, Tags: ["cash_item"]}
execute as @e[tag=cash_item] run function mini:hopper/game/cash_item
# 删除marker
kill @e[type=armor_stand,tag=dead_marker]