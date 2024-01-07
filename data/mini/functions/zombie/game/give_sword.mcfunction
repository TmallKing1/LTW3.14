clear @s wooden_sword{game_item: 1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot: 8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot: 8b}] at @s run function item:pop_slot/return_item

item replace entity @s hotbar.8 with wooden_sword{game_item: 1b, display: {Name: '{"text":"1.8 高科技木剑","color":"aqua","italic":false}', Lore: ['{"text": "从JK服的有用之人那里借来的木剑","color": "gray"}', '[{"text": "攻击伤害: ","color": "white","italic": false},{"text": "4.14","color": "light_purple"}]']}, AttributeModifiers: [{UUID: [I; 2, 0, 2, 1], Amount: 3.14d, AttributeName: "generic.attack_damage", Name: "attack", Slot: "mainhand", Operation: 0}, {UUID: [I; 2, 0, 2, 2], Amount: 100, AttributeName: "generic.attack_speed", Name: "attack_speed", Slot: "mainhand", Operation: 0}], Unbreakable: 1b, HideFlags: 63}