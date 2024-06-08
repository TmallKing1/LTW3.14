# 执行重生方法
function mini:sand/game/respawn

# 处理玩家掉落物品
# 获取玩家死亡位置
kill @e[type=armor_stand,tag=dead_marker]
summon armor_stand 2000 0 3000 {Marker: 1b, Invisible: 1b, Invulnerable: 1b, Small: 1b, NoGravity: 1b, Tags: ["dead_marker"]}
execute store result entity @e[type=armor_stand,tag=dead_marker,limit=1] Pos[0] double 0.1 run scoreboard players get @s posX
execute store result entity @e[type=armor_stand,tag=dead_marker,limit=1] Pos[1] double 0.1 run scoreboard players get @s posY
execute store result entity @e[type=armor_stand,tag=dead_marker,limit=1] Pos[2] double 0.1 run scoreboard players get @s posZ
# 死亡掉落现金
scoreboard players operation $gold_temp mem = @s gold_inhand
scoreboard players set @s gold_inhand 0
execute if score $gold_temp mem matches 1.. at @e[type=armor_stand,tag=dead_marker,limit=1] run summon item ~ ~ ~ {Item: {id: "raw_gold_block", Count: 1, tag: {Enchantments: [{id: "protection", lvl: 1}], is_bonus: 1b, bonus_new: 1b}}, Tags: ["gold_item"]}
execute as @e[tag=gold_item] run function mini:sand/game/gold_item
# 删除marker
kill @e[type=armor_stand,tag=dead_marker]

# 给予进度
advancement grant @a[team=playing,scores={kills_auto=1..}] only ltw:parkour/sand2