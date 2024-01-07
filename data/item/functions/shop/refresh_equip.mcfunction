# 刷新单个玩家购买的物品

# 01
clear @s bow
give @s[scores={shop_01_bow=1}] bow{display: {Name: '{"text":"破损的弓","italic":false,"color":"gray"}'}, Damage: 382}
give @s[scores={shop_01_bow=2}] bow{display: {Name: '{"text":"破损的弓","italic":false,"color":"gray"}'}, Damage: 379}
give @s[scores={shop_01_bow=3}] bow{display: {Name: '{"text":"破损的弓","italic":false,"color":"gray"}'}, Damage: 375}

# 02
clear @s arrow
clear @s tipped_arrow
item replace entity @s[scores={shop_02_arrow=1}] inventory.0 with arrow 1
item replace entity @s[scores={shop_02_arrow=2}] inventory.0 with arrow 2
item replace entity @s[scores={shop_02_arrow=3}] inventory.0 with arrow 3
item replace entity @s[scores={shop_02_arrow=4}] inventory.0 with tipped_arrow{custom_potion_effects:[{id:"slowness", amplifier:0,duration:100}], CustomPotionColor: 5730431} 3
item replace entity @s[scores={shop_02_arrow=5}] inventory.0 with tipped_arrow{custom_potion_effects:[{id:"slowness", amplifier:0,duration:100}], CustomPotionColor: 5730431} 4
item replace entity @s[scores={shop_02_arrow=5}] inventory.0 with tipped_arrow{custom_potion_effects:[{id:"slowness", amplifier:1,duration:100}], CustomPotionColor: 5730431} 4

# 03
clear @s golden_apple
clear @s enchanted_golden_apple
give @s[scores={shop_03_apple=1}] golden_apple{display: {Lore: ['{"text":"在部分小游戏中食用能使生命 +1","italic":false,"color":"gray"}'], Name: '{"text":"金苹果","italic":false,"color":"aqua"}'}}
give @s[scores={shop_03_apple=2}] enchanted_golden_apple{display: {Name: '{"text":"附魔金苹果","italic":false,"color":"light_purple"}', Lore: ['{"text":"在部分小游戏中食用能使当前生命加倍","italic":false,"color":"gray"}']}}
scoreboard players reset @s shop_03_apple

# 04
clear @s splash_potion
give @s[scores={shop_04_float=1}] splash_potion{custom_potion_effects: [{id: "levitation", amplifier: 1, duration: 50}], CustomPotionColor: 8039610, display: {Name: '{"text":"喷溅型浮空药水","italic":false,"color":"gray"}'}}
give @s[scores={shop_04_float=2}] splash_potion{custom_potion_effects: [{id: "levitation", amplifier: 1, duration: 80}], CustomPotionColor: 8039610, display: {Name: '{"text":"喷溅型浮空药水","italic":false,"color":"white"}'}}

# 05
clear @s wooden_axe
clear @s golden_axe
give @s[scores={shop_05_axe=1}] wooden_axe{display: {Name: '{"text":"木斧","italic":false,"color":"gray"}'}, Damage: 57}
give @s[scores={shop_05_axe=2}] wooden_axe{display: {Name: '{"text":"木斧","italic":false,"color":"gray"}'}, Damage: 54}
give @s[scores={shop_05_axe=3}] golden_axe{display: {Name: '{"text":"金斧","italic":false,"color":"gray"}'}, Damage: 28}
give @s[scores={shop_05_axe=4}] golden_axe{display: {Name: '{"text":"金斧","italic":false,"color":"white"}'}, Damage: 26}
give @s[scores={shop_05_axe=5}] golden_axe{display: {Name: '{"text":"金斧","italic":false,"color":"white"}'}, Damage: 24}
give @s[scores={shop_05_axe=6}] golden_axe{display: {Name: '{"text":"效率金斧","italic":false,"color":"white"}'}, Damage: 24,Enchantments:[{id:"efficiency",lvl:1}]}
give @s[scores={shop_05_axe=7}] golden_axe{display: {Name: '{"text":"金斧","italic":false,"color":"white"}',Lore:['""','{"translate":"item.modifiers.mainhand","color": "gray","italic": false}','[{"text": " ","color": "dark_green"},{"text": "7 "},{"translate":"attribute.name.generic.attack_damage"}]','[{"text": " ","color": "dark_green"},{"text": "1.5 "},{"translate":"attribute.name.generic.attack_speed"}]']}, Damage: 24,Enchantments:[{id:"efficiency",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"damage",Amount:6,Operation:0,Slot:"mainhand",UUID:[I;1,1,4,5]},{AttributeName:"generic.attack_speed",Name:"speed",Amount:-2.5,Operation:0,Slot:"mainhand",UUID:[I;4,5,1,4]}],HideFlags:2}

# 06
item replace entity @s armor.feet with air
function item:shop/refresh_boots
# 07
clear @s fishing_rod
give @s[scores={shop_07_fish=1}] fishing_rod{display: {Name: '{"text":"一次性钓鱼竿","italic":false,"color":"gray"}'}, Damage: 63}
give @s[scores={shop_07_fish=2}] fishing_rod{display: {Name: '{"text":"钓鱼竿","italic":false,"color":"white"}'}, Damage: 62}
give @s[scores={shop_07_fish=3}] fishing_rod{display: {Name: '{"text":"钓鱼竿","italic":false,"color":"white"}'}, Damage: 60}
give @s[scores={shop_07_fish=4}] fishing_rod{display: {Name: '{"text":"钓鱼竿","italic":false,"color":"white"}'}, Damage: 58}
give @s[scores={shop_07_fish=5}] fishing_rod{display: {Name: '{"text":"钓鱼竿","italic":false,"color":"white"}'}, Damage: 56}
give @s[scores={shop_07_fish=6}] fishing_rod{display: {Name: '{"text":"钓鱼竿","italic":false,"color":"white"}'}, Damage: 54}
give @s[scores={shop_07_fish=7}] fishing_rod{display: {Name: '{"text":"钓鱼竿","italic":false,"color":"white"}'}, Damage: 54,Enchantments:[{id:"lure",lvl:1}]}
give @s[scores={shop_07_fish=8..}] fishing_rod{display: {Name: '{"text":"钓鱼竿","italic":false,"color":"white"}'}, Damage: 54,Enchantments:[{id:"lure",lvl:2}]}

# 头戴物品
function item:shop/refresh_head