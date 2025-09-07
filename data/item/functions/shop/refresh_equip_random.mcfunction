
# 01
clear @s bow
execute store result score @s temp run random value 0..3
give @s[scores={temp=1}] bow{display: {Name: '{"text":"破损的弓","italic":false,"color":"gray"}'}, Damage: 382}
give @s[scores={temp=2}] bow{display: {Name: '{"text":"破损的弓","italic":false,"color":"gray"}'}, Damage: 379}
give @s[scores={temp=3}] bow{display: {Name: '{"text":"破损的弓","italic":false,"color":"gray"}'}, Damage: 375}

# 02
clear @s arrow
clear @s tipped_arrow
execute store result score @s temp run random value 0..6
item replace entity @s[scores={temp=1}] inventory.0 with arrow 1
item replace entity @s[scores={temp=2}] inventory.0 with arrow 2
item replace entity @s[scores={temp=3}] inventory.0 with arrow 3
item replace entity @s[scores={temp=4}] inventory.0 with tipped_arrow{custom_potion_effects:[{id:"slowness", amplifier:0,duration:100}], CustomPotionColor: 5730431} 3
item replace entity @s[scores={temp=5}] inventory.0 with tipped_arrow{custom_potion_effects:[{id:"slowness", amplifier:0,duration:100}], CustomPotionColor: 5730431} 4
item replace entity @s[scores={temp=6}] inventory.0 with tipped_arrow{custom_potion_effects:[{id:"slowness", amplifier:1,duration:100}], CustomPotionColor: 5730431} 4

# 03
clear @s golden_apple
clear @s enchanted_golden_apple
execute store result score @s temp run random value 0..2
give @s[scores={temp=1}] golden_apple{display: {Lore: ['{"text":"在部分小游戏中食用能使生命 +1","italic":false,"color":"gray"}'], Name: '{"text":"生命果","italic":false,"color":"aqua"}'}}
give @s[scores={temp=2}] enchanted_golden_apple{display: {Name: '{"text":"附魔生命果","italic":false,"color":"light_purple"}', Lore: ['{"text":"在部分小游戏中食用能使当前生命加倍","italic":false,"color":"gray"}']}}

# 04
clear @s splash_potion
execute store result score @s temp run random value 0..2
give @s[scores={temp=1}] splash_potion{custom_potion_effects: [{id: "levitation", amplifier: 1, duration: 50}], CustomPotionColor: 8039610, display: {Name: '{"text":"喷溅型浮空药水","italic":false,"color":"gray"}'}}
give @s[scores={temp=2}] splash_potion{custom_potion_effects: [{id: "levitation", amplifier: 1, duration: 80}], CustomPotionColor: 8039610, display: {Name: '{"text":"喷溅型浮空药水","italic":false,"color":"white"}'}}

# 05
clear @s wooden_axe
clear @s golden_axe
execute store result score @s temp run random value 0..7
give @s[scores={temp=1}] wooden_axe{display: {Name: '{"text":"木斧","italic":false,"color":"gray"}'}, Damage: 57}
give @s[scores={temp=2}] wooden_axe{display: {Name: '{"text":"木斧","italic":false,"color":"gray"}'}, Damage: 54}
give @s[scores={temp=3}] golden_axe{display: {Name: '{"text":"金斧","italic":false,"color":"gray"}'}, Damage: 28}
give @s[scores={temp=4}] golden_axe{display: {Name: '{"text":"金斧","italic":false,"color":"white"}'}, Damage: 26}
give @s[scores={temp=5}] golden_axe{display: {Name: '{"text":"金斧","italic":false,"color":"white"}'}, Damage: 24}
give @s[scores={temp=6}] golden_axe{display: {Name: '{"text":"效率金斧","italic":false,"color":"white"}'}, Damage: 24,Enchantments:[{id:"efficiency",lvl:1}]}
give @s[scores={temp=7}] golden_axe{display: {Name: '{"text":"金斧","italic":false,"color":"white"}',Lore:['""','{"translate":"item.modifiers.mainhand","color": "gray","italic": false}','[{"text": " ","color": "dark_green"},{"text": "7 "},{"translate":"attribute.name.generic.attack_damage"}]','[{"text": " ","color": "dark_green"},{"text": "1.5 "},{"translate":"attribute.name.generic.attack_speed"}]']}, Damage: 24,Enchantments:[{id:"efficiency",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"damage",Amount:6,Operation:0,Slot:"mainhand",UUID:[I;1,1,4,5]},{AttributeName:"generic.attack_speed",Name:"speed",Amount:-2.5,Operation:0,Slot:"mainhand",UUID:[I;4,5,1,4]}],HideFlags:2}

# 06
item replace entity @s armor.feet with air
execute store result score @s temp run random value 0..4
function item:shop/refresh_boots_random

# 07
clear @s fishing_rod
execute store result score @s temp run random value 0..8
give @s[scores={temp=1}] fishing_rod{display: {Name: '{"text":"一次性钓鱼竿","italic":false,"color":"gray"}'}, Damage: 63}
give @s[scores={temp=2}] fishing_rod{display: {Name: '{"text":"钓鱼竿","italic":false,"color":"white"}'}, Damage: 62}
give @s[scores={temp=3}] fishing_rod{display: {Name: '{"text":"钓鱼竿","italic":false,"color":"white"}'}, Damage: 60}
give @s[scores={temp=4}] fishing_rod{display: {Name: '{"text":"钓鱼竿","italic":false,"color":"white"}'}, Damage: 58}
give @s[scores={temp=5}] fishing_rod{display: {Name: '{"text":"钓鱼竿","italic":false,"color":"white"}'}, Damage: 56}
give @s[scores={temp=6}] fishing_rod{display: {Name: '{"text":"钓鱼竿","italic":false,"color":"white"}'}, Damage: 54}
give @s[scores={temp=7}] fishing_rod{display: {Name: '{"text":"钓鱼竿","italic":false,"color":"white"}'}, Damage: 54,Enchantments:[{id:"lure",lvl:1}]}
give @s[scores={temp=8..}] fishing_rod{display: {Name: '{"text":"钓鱼竿","italic":false,"color":"white"}'}, Damage: 54,Enchantments:[{id:"lure",lvl:2}]}