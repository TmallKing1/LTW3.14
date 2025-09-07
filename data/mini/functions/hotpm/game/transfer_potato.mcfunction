# 土豆持有者打到人时执行
tag @s add pm_damage_dealt
function lib:sounds/hit

# 计算类型转换概率
execute if score $ley_line_disorder mem matches -1 store result score $random mem run random value 1..4
execute if score $ley_line_disorder mem matches -1 if score @s pm_harmless matches 1 if score $random mem matches 1..3 run scoreboard players set @p[tag=pm_damage_taken,tag=!pm_holding] pm_harmless 0
execute if score $ley_line_disorder mem matches -1 if score @s pm_harmless matches 1 if score $random mem matches 4 run scoreboard players set @p[tag=pm_damage_taken,tag=!pm_holding] pm_harmless 1
execute if score $ley_line_disorder mem matches -1 unless score @s pm_harmless matches 1 if score $random mem matches 1..2 run scoreboard players set @p[tag=pm_damage_taken,tag=!pm_holding] pm_harmless 1
execute if score $ley_line_disorder mem matches -1 unless score @s pm_harmless matches 1 if score $random mem matches 3..4 run scoreboard players set @p[tag=pm_damage_taken,tag=!pm_holding] pm_harmless 0

# 转移土豆
execute unless score $ley_line_disorder mem matches -1 run tellraw @s ["",{"text":">> ","color":"green","bold":true},"你把炸弹扔到了 ",{"selector":"@p[tag=pm_damage_taken,tag=!pm_holding]","color":"green"}," 的头上!"]
execute unless score $ley_line_disorder mem matches -1 run tellraw @p[tag=pm_damage_taken,tag=!pm_holding] ["",{"text":">> ","color":"red","bold":true},{"selector":"@s","color":"red"}," 把炸弹扔到了你的头上!"]
execute if score $ley_line_disorder mem matches -1 if score @s pm_harmless matches 1 unless score @p[tag=pm_damage_taken,tag=!pm_holding] pm_harmless matches 1 run tellraw @s ["",{"text":">> ","color":"green","bold":true},"你将炸弹变为有害，并把炸弹扔到了 ",{"selector":"@p[tag=pm_damage_taken,tag=!pm_holding]","color":"green"}," 的头上!"]
execute if score $ley_line_disorder mem matches -1 unless score @s pm_harmless matches 1 unless score @p[tag=pm_damage_taken,tag=!pm_holding] pm_harmless matches 1 run tellraw @s ["",{"text":">> ","color":"green","bold":true},"你把「有害」炸弹扔到了 ",{"selector":"@p[tag=pm_damage_taken,tag=!pm_holding]","color":"green"}," 的头上!"]
execute if score $ley_line_disorder mem matches -1 unless score @p[tag=pm_damage_taken,tag=!pm_holding] pm_harmless matches 1 run tellraw @p[tag=pm_damage_taken,tag=!pm_holding] ["",{"text":">> ","color":"red","bold":true},{"selector":"@s","color":"red"}," 把「有害」炸弹扔到了你的头上!"]
execute if score $ley_line_disorder mem matches -1 unless score @s pm_harmless matches 1 if score @p[tag=pm_damage_taken,tag=!pm_holding] pm_harmless matches 1 run tellraw @s ["",{"text":">> ","color":"green","bold":true},"你将炸弹变为无害，并把炸弹扔到了 ",{"selector":"@p[tag=pm_damage_taken,tag=!pm_holding]","color":"green"}," 的头上!"]
execute if score $ley_line_disorder mem matches -1 if score @s pm_harmless matches 1 if score @p[tag=pm_damage_taken,tag=!pm_holding] pm_harmless matches 1 run tellraw @s ["",{"text":">> ","color":"green","bold":true},"你把「无害」炸弹扔到了 ",{"selector":"@p[tag=pm_damage_taken,tag=!pm_holding]","color":"green"}," 的头上!"]
execute if score $ley_line_disorder mem matches -1 if score @p[tag=pm_damage_taken,tag=!pm_holding] pm_harmless matches 1 run tellraw @p[tag=pm_damage_taken,tag=!pm_holding] ["",{"text":">> ","color":"red","bold":true},{"selector":"@s","color":"red"}," 把「无害」炸弹扔到了你的头上!"]
execute as @p[tag=pm_damage_taken,tag=!pm_holding] run function mini:hotpm/game/pm_get
function mini:hotpm/game/pm_lost

# 荆棘盔甲处理
execute as @p[tag=pm_damage_taken] if data entity @s SelectedItem.tag.Enchantments[{id:"minecraft:thorns"}] run tag @s add thorns_check_mainhand
execute as @p[tag=pm_damage_taken] if data entity @s Inventory[{Slot:-106b}].tag.Enchantments[{id:"minecraft:thorns"}] run tag @s add thorns_check_offhand