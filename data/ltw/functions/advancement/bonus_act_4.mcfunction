scoreboard players add @s stat_adv_act 1
scoreboard players add @s gold 27
tellraw @s ["",{"text": ">> ","color":"green","bold": true},"你获得了 ",{"text":"3 金锭","color":"gold"}," 完成奖励！"]
scoreboard players set $trim_material_num mem 8
function item:armor_trim/give_armor_trim_material
tellraw @s ["",{"text": ">> ","color": "green"},"你获得了 ",{"translate": "trim_material.minecraft.netherite","color": "green"}," 盔甲纹饰材质！"]