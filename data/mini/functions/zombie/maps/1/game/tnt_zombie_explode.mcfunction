# 特效
summon minecraft:creeper ~ ~-1 ~ {ignited:1,ExplosionRadius:1,Fuse:0,Invulnerable:1}
particle minecraft:explosion ~ ~1 ~ 0.4 0.4 0.4 0 5

# 对周围玩家造成伤害
effect give @a[distance=..3] instant_damage 1 0

# 清除自己
tp @s 1000 -100 12000
tag @s remove tnt_zombie

# 暂时关闭死亡提示
gamerule showDeathMessages false