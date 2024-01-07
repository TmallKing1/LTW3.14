clear @s command_block{destroy: 1b}
item replace block 0 0 1 container.20 with command_block{LockItem: 1b, destroy: 1b, display: {Name: '{"text":"摧毁物品","color":"dark_red","italic":false}', Lore: ['{"text": "将物品放在此格来摧毁","color": "gray","italic": false}', '[{"text": "注意：","color": "red","italic": false},{"text": "你的物品将会永久消失（真的很久）！","color": "gray"}]']}}
data modify block 0 0 1 Items[{Slot: 20b}].tag.owner set from entity @s UUID
item replace entity @s inventory.26 from block 0 0 1 container.20