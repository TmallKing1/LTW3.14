# 召唤僵尸

# 决定生成僵尸的类型
# 60% 普通僵尸，8% 发射器僵尸，8% 附魔发射器僵尸，8% 黑曜石僵尸，8% TNT僵尸，8% 持剑僵尸
execute store result score $random mem run random value 1..100
execute if score $random mem matches 1..60 run summon zombie ~ ~ ~ {Tags: ["new_zombie", "normal_zombie"], ArmorItems: [{id: "leather_boots", Count: 1, tag: {Unbreakable: 1b, Enchantments: [{id: "projectile_protection", lvl: 10}]}}, {}, {}, {}], HandItems: [{}, {}], IsBaby: false, CustomNameVisible: 1b, CustomName: '[{"text": "僵尸 ["},{"text": "||||||||||","color": "green"},{"text": "]"}]'}
execute if score $random mem matches 61..68 run summon zombie ~ ~ ~ {Tags: ["new_zombie", "dispenser_zombie"], ArmorItems: [{id: "leather_boots", Count: 1, tag: {Unbreakable: 1b, Enchantments: [{id: "projectile_protection", lvl: 10}]}}, {}, {}, {id: "dispenser", Count: 1}], HandItems: [{}, {}], IsBaby: false, CustomNameVisible: 1b, CustomName: '[{"text": "僵尸 ["},{"text": "||||||||||","color": "green"},{"text": "]"}]'}
execute if score $random mem matches 69..76 run summon zombie ~ ~ ~ {Tags: ["new_zombie", "enchanted_dispenser_zombie"], ArmorItems: [{id: "leather_boots", Count: 1, tag: {Unbreakable: 1b, Enchantments: [{id: "projectile_protection", lvl: 10}]}}, {}, {}, {id: "dispenser", Count: 1, tag: {Enchantments: [{id: "infinity", lvl: 1}]}}], HandItems: [{}, {}], IsBaby: false, CustomNameVisible: 1b, CustomName: '[{"text": "僵尸 ["},{"text": "||||||||||","color": "green"},{"text": "]"}]'}
execute if score $random mem matches 77..84 run summon zombie ~ ~ ~ {Tags: ["new_zombie", "obsidian_zombie"], ArmorItems: [{id: "leather_boots", Count: 1, tag: {Unbreakable: 1b, Enchantments: [{id: "projectile_protection", lvl: 10}]}}, {}, {}, {id: "obsidian", Count: 1}], HandItems: [{}, {}], IsBaby: false, CustomNameVisible: 1b, CustomName: '[{"text": "僵尸 ["},{"text": "||||||||||","color": "green"},{"text": "]"}]'}
execute if score $random mem matches 85..92 run summon zombie ~ ~ ~ {Tags: ["new_zombie", "tnt_zombie"], ArmorItems: [{id: "leather_boots", Count: 1, tag: {Unbreakable: 1b, Enchantments: [{id: "projectile_protection", lvl: 10}]}}, {}, {}, {id: "tnt", Count: 1}], HandItems: [{}, {}], IsBaby: false, CustomNameVisible: 1b, CustomName: '[{"text": "僵尸 ["},{"text": "||||||||||","color": "green"},{"text": "]"}]'}
execute if score $random mem matches 93..100 run summon zombie ~ ~ ~ {Tags: ["new_zombie", "sword_zombie"], ArmorItems: [{id: "leather_boots", Count: 1, tag: {Unbreakable: 1b, Enchantments: [{id: "projectile_protection", lvl: 10}]}}, {}, {}, {}], HandItems: [{id: "netherite_sword", Count: 1, tag: {Unbreakable: 1b}}, {}], IsBaby: false, CustomNameVisible: 1b, CustomName: '[{"text": "僵尸 ["},{"text": "||||||||||","color": "green"},{"text": "]"}]'}

# 普通僵尸头颅
execute store result score $random mem run random value 1..12
execute if score $random mem matches 1 run item replace entity @e[tag=new_zombie,tag=normal_zombie] armor.head with player_head{SkullOwner: "Icewatermelon233"}
execute if score $random mem matches 2 run item replace entity @e[tag=new_zombie,tag=normal_zombie] armor.head with player_head{SkullOwner: "LittleChest"}
execute if score $random mem matches 3 run item replace entity @e[tag=new_zombie,tag=normal_zombie] armor.head with player_head{SkullOwner: "yuki_own"}
execute if score $random mem matches 4 run item replace entity @e[tag=new_zombie,tag=normal_zombie] armor.head with player_head{SkullOwner: "xiaozhu_zhizui"}
execute if score $random mem matches 5 run item replace entity @e[tag=new_zombie,tag=normal_zombie] armor.head with player_head{SkullOwner: "LTCat"}
execute if score $random mem matches 6 run item replace entity @e[tag=new_zombie,tag=normal_zombie] armor.head with player_head{SkullOwner: "00ll00"}
execute if score $random mem matches 7 run item replace entity @e[tag=new_zombie,tag=normal_zombie] armor.head with player_head{SkullOwner: "HerobrineXia"}
execute if score $random mem matches 8 run item replace entity @e[tag=new_zombie,tag=normal_zombie] armor.head with player_head{SkullOwner: "XiamZhoWL928"}
execute if score $random mem matches 9 run item replace entity @e[tag=new_zombie,tag=normal_zombie] armor.head with player_head{SkullOwner: "Last_Dust"}
execute if score $random mem matches 10 run item replace entity @e[tag=new_zombie,tag=normal_zombie] armor.head with player_head{SkullOwner: "CNghost"}
execute if score $random mem matches 11 run item replace entity @e[tag=new_zombie,tag=normal_zombie] armor.head with player_head{SkullOwner: "xqysp"}
execute if score $random mem matches 12 run item replace entity @e[tag=new_zombie,tag=normal_zombie] armor.head with player_head{SkullOwner: "XIA0PANTT"}

# 调整属性
attribute @e[tag=new_zombie,limit=1] generic.attack_damage base set 6
attribute @e[tag=new_zombie,limit=1] generic.max_health base set 30
attribute @e[tag=new_zombie,limit=1] generic.follow_range base set 100
attribute @e[tag=new_zombie,limit=1] generic.movement_speed base set 0.25
attribute @e[tag=new_zombie,limit=1] generic.knockback_resistance base set 0.2
execute if score $ley_line_disorder mem matches 3 run attribute @e[tag=new_zombie,limit=1] generic.max_health base set 180
execute unless score $ley_line_disorder mem matches 3 run data modify entity @e[tag=new_zombie,limit=1] Health set value 30.0f
execute if score $ley_line_disorder mem matches 3 run data modify entity @e[tag=new_zombie,limit=1] Health set value 180.0f

## 1 阶段后的僵尸攻击伤害
execute if score $zombie_stage mem matches 1.. run attribute @e[tag=new_zombie,limit=1,tag=!sword_zombie] generic.attack_damage base set 8
## 2 阶段后的僵尸移动速度与击退抗性
execute if score $zombie_stage mem matches 2.. run attribute @e[tag=new_zombie,limit=1,tag=!sword_zombie] generic.movement_speed base set 0.32
execute if score $zombie_stage mem matches 2.. run attribute @e[tag=new_zombie,limit=1,tag=!sword_zombie] generic.knockback_resistance base set 0.6
## 3 阶段后的僵尸生命值
execute if score $zombie_stage mem matches 3.. unless score $ley_line_disorder mem matches 3 run attribute @e[tag=new_zombie,limit=1] generic.max_health base set 50
execute if score $zombie_stage mem matches 3.. unless score $ley_line_disorder mem matches 3 run data modify entity @e[tag=new_zombie,limit=1] Health set value 50.0f
execute if score $zombie_stage mem matches 3.. if score $ley_line_disorder mem matches 3 run attribute @e[tag=new_zombie,limit=1] generic.max_health base set 300
execute if score $zombie_stage mem matches 3.. if score $ley_line_disorder mem matches 3 run data modify entity @e[tag=new_zombie,limit=1] Health set value 300.0f

# 调整特殊僵尸属性
attribute @e[tag=new_zombie,tag=obsidian_zombie,limit=1] generic.max_health base set 200
data modify entity @e[tag=new_zombie,tag=obsidian_zombie,limit=1] Health set value 200.0f

# 调整幻境干扰时的僵尸属性
execute if score $ley_line_disorder mem matches 2 run attribute @e[tag=new_zombie,limit=1] generic.attack_damage modifier add 12bc0778-5585-498c-a1d4-993156bd3ff6 "" 0.2 multiply

# 入队
team join zombie @e[tag=new_zombie]

tag @e[tag=new_zombie] remove new_zombie