kill @e[tag=bingo_airdrop]

# 确定位置
summon marker 1016.0 0 5016.0 {Tags:["bingo_entity","bingo_airdrop"]}
spreadplayers 1016.0 5016.0 0 15 false @e[tag=bingo_airdrop]

# 生成空投
execute as @e[tag=bingo_airdrop] at @s run summon falling_block ~ 310 ~ {BlockState:{Name:"minecraft:barrel"},Glowing:1b,TileEntityData:{CustomName:'{"text": "空投箱","color": "dark_aqua"}',LootTable:"mini:bingo"}}

execute as @a[team=playing,gamemode=survival] at @s run function lib:sounds/dragon_growl