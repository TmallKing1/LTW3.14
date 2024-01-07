#as container as @s
execute store result score $command_blocke mem run data get block ~ ~ ~ Items[{id: "minecraft:command_block"}].tag.owner[0]
execute as @a[team=!debugging] if score @s UUID = $command_blocke mem run damage @s 114514 bad_respawn_point
setblock ~ ~ ~ air
kill @s