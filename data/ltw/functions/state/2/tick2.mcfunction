# 观察者限制
execute as @a[gamemode=spectator] run spectate
execute as @a[gamemode=spectator] unless entity @s[x=12,y=9,z=1955,dx=24,dy=14,dz=24] run tp @s[team=!debugging] 24.5 12.0 1967.5

# 给予投票用书
execute as @a[tag=canvote] at @s unless data entity @s Inventory[{Slot: 8b, id: "minecraft:written_book", tag: {game_item: 1b, Unbreakable: 1b}}] run function ltw:state/2/give_book

# 检测每个可投票玩家的分数
execute as @a[tag=canvote] at @s unless score @s vote_trigger matches 0 run function ltw:state/2/test_score