execute as @s[tag=respawn_protection] run tellraw @s ["",{"text": ">> ","color": "red","bold": true},{"text": "死亡保护已解除！","color": "red"}]
effect clear @s[tag=respawn_protection] resistance
effect clear @s[tag=respawn_protection] invisibility
tag @s remove respawn_protection
