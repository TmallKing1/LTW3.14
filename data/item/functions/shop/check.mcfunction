# 范围检测
execute if score @s buy_trigger matches 001..099 at @s unless entity @s[x=-3,z=-63,y=6,dx=25,dy=6,dz=30] run function item:shop/error/piglin
execute if score @s buy_trigger matches 100..199 at @s unless entity @s[x=1,z=-63,y=20,dx=5,dy=4,dz=6] run function item:shop/error/piglin
execute if score @s buy_trigger matches 200..299 at @s unless entity @s[x=-22,z=-75,y=18,dx=10,dy=4,dz=5] unless entity @s[x=985,y=21,z=-1010,dx=17,dy=10,dz=18] run function item:shop/error/villager
execute if score @s buy_trigger matches 777..1000 at @s unless entity @s[x=-3,z=-49,y=27,dx=5,dy=4,dz=5] run function item:shop/error/dice
execute if score @s buy_trigger matches 1101..1110 at @s unless entity @s[x=21,y=8,z=-31,dx=4,dy=3,dz=4] run function item:shop/error/material
execute if score @s buy_trigger matches 2000..2001 at @s unless entity @s[x=19,y=52,z=-42,dx=11,dy=11,dz=7] run function item:shop/error/wish

# 普通商店
execute if score @s buy_trigger matches 011 if score $state mem matches 0 run function item:shop/buy/011_bow
execute if score @s buy_trigger matches 012 if score $state mem matches 0 run function item:shop/buy/012_bow
execute if score @s buy_trigger matches 013 if score $state mem matches 0 run function item:shop/buy/013_bow
execute if score @s buy_trigger matches 021 if score $state mem matches 0 run function item:shop/buy/021_arrow
execute if score @s buy_trigger matches 022 if score $state mem matches 0 run function item:shop/buy/022_arrow
execute if score @s buy_trigger matches 023 if score $state mem matches 0 run function item:shop/buy/023_arrow
execute if score @s buy_trigger matches 024 if score $state mem matches 0 run function item:shop/buy/024_arrow
execute if score @s buy_trigger matches 025 if score $state mem matches 0 run function item:shop/buy/025_arrow
execute if score @s buy_trigger matches 026 if score $state mem matches 0 run function item:shop/buy/026_arrow
execute if score @s buy_trigger matches 031 if score $state mem matches 0 run function item:shop/buy/031_apple
execute if score @s buy_trigger matches 032 if score $state mem matches 0 run function item:shop/buy/032_apple
execute if score @s buy_trigger matches 041 if score $state mem matches 0 run function item:shop/buy/041_float
execute if score @s buy_trigger matches 042 if score $state mem matches 0 run function item:shop/buy/042_float
execute if score @s buy_trigger matches 051 if score $state mem matches 0 run function item:shop/buy/051_axe
execute if score @s buy_trigger matches 052 if score $state mem matches 0 run function item:shop/buy/052_axe
execute if score @s buy_trigger matches 053 if score $state mem matches 0 run function item:shop/buy/053_axe
execute if score @s buy_trigger matches 054 if score $state mem matches 0 run function item:shop/buy/054_axe
execute if score @s buy_trigger matches 055 if score $state mem matches 0 run function item:shop/buy/055_axe
execute if score @s buy_trigger matches 056 if score $state mem matches 0 run function item:shop/buy/056_axe
execute if score @s buy_trigger matches 057 if score $state mem matches 0 run function item:shop/buy/057_axe
execute if score @s buy_trigger matches 061 if score $state mem matches 0 run function item:shop/buy/061_armor
execute if score @s buy_trigger matches 062 if score $state mem matches 0 run function item:shop/buy/062_armor
execute if score @s buy_trigger matches 063 if score $state mem matches 0 run function item:shop/buy/063_armor
execute if score @s buy_trigger matches 064 if score $state mem matches 0 run function item:shop/buy/064_armor
execute if score @s buy_trigger matches 071 if score $state mem matches 0 run function item:shop/buy/071_fish
execute if score @s buy_trigger matches 072 if score $state mem matches 0 run function item:shop/buy/072_fish
execute if score @s buy_trigger matches 073 if score $state mem matches 0 run function item:shop/buy/073_fish
execute if score @s buy_trigger matches 074 if score $state mem matches 0 run function item:shop/buy/074_fish
execute if score @s buy_trigger matches 075 if score $state mem matches 0 run function item:shop/buy/075_fish
execute if score @s buy_trigger matches 076 if score $state mem matches 0 run function item:shop/buy/076_fish
execute if score @s buy_trigger matches 077 if score $state mem matches 0 run function item:shop/buy/077_fish
execute if score @s buy_trigger matches 078 if score $state mem matches 0 run function item:shop/buy/078_fish
execute if score @s buy_trigger matches 081 if score $state mem matches 0 run function item:shop/buy/081_magic_spell
execute if score @s buy_trigger matches 082 if score $state mem matches 0 run function item:shop/buy/082_magic_spell
# 隐藏商店
execute if score @s buy_trigger matches 101 if score $state mem matches 0 run function item:shop/buy/101_hint
execute if score @s buy_trigger matches 102 if score $state mem matches 0 run function item:shop/buy/102_bgm
execute if score @s buy_trigger matches 103 if score $state mem matches 0 run function item:shop/buy/103_global_double
# 村民尾迹商店
execute if score @s buy_trigger matches 201 if score $state mem matches 0 run function item:shop/buy/201_particle_close
execute if score @s buy_trigger matches 211 if score $state mem matches 0 run function item:shop/buy/211_particle
execute if score @s buy_trigger matches 212 if score $state mem matches 0 run function item:shop/buy/212_particle
execute if score @s buy_trigger matches 213 if score $state mem matches 0 run function item:shop/buy/213_particle
execute if score @s buy_trigger matches 214 if score $state mem matches 0 run function item:shop/buy/214_particle
execute if score @s buy_trigger matches 215 if score $state mem matches 0 run function item:shop/buy/215_particle
execute if score @s buy_trigger matches 216 if score $state mem matches 0 run function item:shop/buy/216_particle
execute if score @s buy_trigger matches 217 if score $state mem matches 0 run function item:shop/buy/217_particle
execute if score @s buy_trigger matches 221 if score $state mem matches 0 run function item:shop/buy/221_particle
execute if score @s buy_trigger matches 222 if score $state mem matches 0 run function item:shop/buy/222_particle
execute if score @s buy_trigger matches 223 if score $state mem matches 0 run function item:shop/buy/223_particle
execute if score @s buy_trigger matches 224 if score $state mem matches 0 run function item:shop/buy/224_particle
# 错误之塔
execute if score @s buy_trigger matches 666 if score $state mem matches 0 run function item:shop/buy/666_tower_start
execute if score @s buy_trigger matches 667 if score $state mem matches 0 run function item:shop/buy/667_tower_end
# 骰子房
execute if score @s buy_trigger matches 777 if score $state mem matches 0 run function item:shop/buy/777_token
execute if score @s buy_trigger matches 999 if score $state mem matches 0 run function item:shop/buy/999_dice
execute if score @s buy_trigger matches 1000 if score $state mem matches 0 run function item:shop/buy/1000_teleportation_scroll
# 纹饰材料
execute if score @s buy_trigger matches 1101 if score $state mem matches 0 run function item:shop/buy/1101_gold_material
execute if score @s buy_trigger matches 1102 if score $state mem matches 0 run function item:shop/buy/1102_diamond_material
execute if score @s buy_trigger matches 1103 if score $state mem matches 0 run function item:shop/buy/1103_netherite_material

# 幻境抽取
execute if score @s buy_trigger matches 2000 if score $state mem matches 0 run function item:shop/buy/2000_wish_1x
execute if score @s buy_trigger matches 2001 if score $state mem matches 0 run function item:shop/buy/2001_wish_10x
execute if score @s buy_trigger matches 2002 if score $state mem matches 0 run function item:shop/buy/2002_check_wish_count
# 彩蛋
execute if score @s buy_trigger matches 114514 if score $state mem matches 0 run function item:shop/buy/easter_egg

# 重置
scoreboard players set @s buy_trigger 0
execute if score $state mem matches 0 run scoreboard players enable @s buy_trigger
