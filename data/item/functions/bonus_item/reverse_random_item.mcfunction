scoreboard players remove $item.random.count mem 1

setblock 0 0 1 shulker_box replace
function lib:random with storage ltw:random
execute if score $random mem <= $item.random.white mem run loot replace block 0 0 1 container.0 loot item:item/white
execute if score $random mem > $item.random.white mem if score $random mem <= $item.random.green mem run loot replace block 0 0 1 container.0 loot item:item/green
execute if score $random mem > $item.random.green mem if score $random mem <= $item.random.blue mem run loot replace block 0 0 1 container.0 loot item:item/blue
execute if score $random mem > $item.random.blue mem if score $random mem <= $item.random.purple mem run loot replace block 0 0 1 container.0 loot item:item/purple
data modify storage item:bonus item_buff prepend from block 0 0 1 Items[{"Slot":0b}]
function item:bonus_item/random_bonus_rename
execute if score $item.random.count mem matches 1.. run function item:bonus_item/reverse_random_item