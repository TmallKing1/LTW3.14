# 检测附近玩家是否符合拾起元素的条件
tag @a remove qualified
execute as @a[distance=..1,gamemode=!spectator,scores={sneak_time_temp=1..}] run function mini:element/game/item/try_pick2

# 若有玩家符合条件，则让最近的一个玩家拾取该元素
tag @p[distance=..1,tag=qualified] add qualified2
execute if entity @a[tag=qualified2] run function mini:element/game/item/pick