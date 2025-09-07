# 下一状态判定
execute unless score $first_selection mem matches 1 unless entity @a[tag=selecting] if score $end_selection mem matches 0 unless score $countdown mem matches 0 run function ltw:state/7/next
execute if score $end_selection mem matches 1 run function ltw:state/7/end_selection

# 观察者限制
execute as @a[gamemode=spectator] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=12,y=9,z=1955,dx=24,dy=14,dz=24] run tp @s[team=!debugging] 24.5 12.0 1967.5

# 给予屏障
execute as @a[tag=selecting] at @s unless data entity @s Inventory[{Slot: 8b, id: "minecraft:barrier", tag: {game_item: 1b, Unbreakable: 1b}}] run function ltw:state/7/cancel_item

# 清理浮漂
kill @e[type=fishing_bobber]