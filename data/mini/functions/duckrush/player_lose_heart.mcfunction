# 告知玩家
tellraw @a ["",{"text":">> ","color":"gold","bold": true},{"selector":"@s","color":"gold"}," 被鸭子创了!"]

# 失去一颗心
scoreboard players set @s countdown_invulnerable 5
function mini:main/player_lose_heart
function lib:sounds/error
playsound minecraft:entity.zombie.attack_iron_door block @s 0 1000000 0 1000000

# 粒子特效
particle explosion ~ ~1 ~
playsound block.glass.break player @s ~ ~ ~ 1 2