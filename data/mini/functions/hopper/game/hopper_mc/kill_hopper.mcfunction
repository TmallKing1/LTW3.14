# 防止返还不必要的东西
execute if data entity @s Items[{Slot: 3b}].tag.hopper_item run item replace entity @s container.3 with air
execute if data entity @s Items[{Slot: 4b}].tag.hopper_item run item replace entity @s container.4 with air
kill @s