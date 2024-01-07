# 标记离自己最近的 TNT
tag @e[type=tnt,tag=chain_tnt,limit=1,sort=nearest] add targeted_tnt

# 计算 X、Y、Z 坐标差并平方
execute store result score $deltaX mem run data get entity @s Pos[0] 100
execute store result score $tntX mem run data get entity @e[tag=targeted_tnt,limit=1] Pos[0] 100
scoreboard players operation $deltaX mem -= $tntX mem
scoreboard players operation $deltaX mem *= $deltaX mem
execute store result score $deltaY mem run data get entity @s Pos[1] 100
execute store result score $tntY mem run data get entity @e[tag=targeted_tnt,limit=1] Pos[1] 100
scoreboard players operation $deltaY mem -= $tntY mem
scoreboard players operation $deltaY mem *= $deltaY mem
execute store result score $deltaZ mem run data get entity @s Pos[2] 100
execute store result score $tntZ mem run data get entity @e[tag=targeted_tnt,limit=1] Pos[2] 100
scoreboard players operation $deltaZ mem -= $tntZ mem
scoreboard players operation $deltaZ mem *= $deltaZ mem

# 加起来开根号
scoreboard players operation $square mem = $deltaX mem
scoreboard players operation $square mem += $deltaY mem
scoreboard players operation $square mem += $deltaZ mem
function lib:sqrt
scoreboard players operation @s tntDistance = $square_root mem

# 取消标记
tag @e remove targeted_tnt