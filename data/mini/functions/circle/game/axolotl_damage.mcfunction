execute if data entity @s {Variant: 0} as @a[distance=..0.9,tag=!leasher] run damage @s 4 mini:element_damage by @e[tag=spining_axolotl,limit=1] from @p[tag=leasher]
execute if data entity @s {Variant: 1} as @a[distance=..0.9,tag=!leasher] run damage @s 5 mini:element_damage by @e[tag=spining_axolotl,limit=1] from @p[tag=leasher]
execute if data entity @s {Variant: 2} as @a[distance=..0.9,tag=!leasher] run damage @s 6 mini:element_damage by @e[tag=spining_axolotl,limit=1] from @p[tag=leasher]
execute if data entity @s {Variant: 3} as @a[distance=..0.9,tag=!leasher] run damage @s 7 mini:element_damage by @e[tag=spining_axolotl,limit=1] from @p[tag=leasher]
execute if data entity @s {Variant: 4} as @a[distance=..0.9,tag=!leasher] run damage @s 8 mini:element_damage by @e[tag=spining_axolotl,limit=1] from @p[tag=leasher]

execute if data entity @s {Variant: 0} run scoreboard players set @a[distance=..0.9,tag=!leasher] last_damage_type 0
execute if data entity @s {Variant: 1} run scoreboard players set @a[distance=..0.9,tag=!leasher] last_damage_type 1
execute if data entity @s {Variant: 2} run scoreboard players set @a[distance=..0.9,tag=!leasher] last_damage_type 2
execute if data entity @s {Variant: 3} run scoreboard players set @a[distance=..0.9,tag=!leasher] last_damage_type 3
execute if data entity @s {Variant: 4} run scoreboard players set @a[distance=..0.9,tag=!leasher] last_damage_type 4

scoreboard players operation @a[distance=..0.9,tag=!leasher] last_damage_UUID = @p[tag=leasher] UUID

execute if entity @a[distance=..0.9,tag=!leasher] run scoreboard players set @s countdown_fast 4