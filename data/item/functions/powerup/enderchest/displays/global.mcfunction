item replace entity @s enderchest.0 with player_head{powerup_set: 1b, SkullOwner: "LTCat", Unbreakable: 1b}
scoreboard players operation @s powerup_temp = @s powerup_00001
scoreboard players operation @s powerup_temp *= #2 mem
execute unless score @s powerup_00001 matches 0 if score @s powerup_current matches 1 run item modify entity @s enderchest.0 item:powerup/00001/1
execute if score @s powerup_00001 matches 0 run item modify entity @s enderchest.0 item:powerup/00001/0
execute unless score @s powerup_00001 matches 0 unless score @s powerup_current matches 1 run item modify entity @s enderchest.0 item:powerup/00001/-1

item replace entity @s enderchest.1 with player_head{powerup_set: 1b, SkullOwner: "00ll00", Unbreakable: 1b}
scoreboard players operation @s powerup_temp = @s powerup_00002
scoreboard players operation @s powerup_temp *= #2 mem
execute unless score @s powerup_00002 matches 0 if score @s powerup_current matches 2 run item modify entity @s enderchest.1 item:powerup/00002/1
execute if score @s powerup_00002 matches 0 run item modify entity @s enderchest.1 item:powerup/00002/0
execute unless score @s powerup_00002 matches 0 unless score @s powerup_current matches 2 run item modify entity @s enderchest.1 item:powerup/00002/-1

item replace entity @s enderchest.2 with player_head{powerup_set: 1b, SkullOwner: "HerobrineXia", Unbreakable: 1b}
execute unless score @s powerup_00003 matches 0 if score @s powerup_current matches 3 run item modify entity @s enderchest.2 item:powerup/00003/1
execute if score @s powerup_00003 matches 0 run item modify entity @s enderchest.2 item:powerup/00003/0
execute unless score @s powerup_00003 matches 0 unless score @s powerup_current matches 3 run item modify entity @s enderchest.2 item:powerup/00003/-1

item replace entity @s enderchest.3 with player_head{powerup_set: 1b, SkullOwner: "Zi__Min", Unbreakable: 1b}
scoreboard players operation @s powerup_temp = @s powerup_00004
scoreboard players operation @s powerup_temp *= #2 mem
execute unless score @s powerup_00004 matches 0 if score @s powerup_current matches 4 run item modify entity @s enderchest.3 item:powerup/00004/1
execute if score @s powerup_00004 matches 0 run item modify entity @s enderchest.3 item:powerup/00004/0
execute unless score @s powerup_00004 matches 0 unless score @s powerup_current matches 4 run item modify entity @s enderchest.3 item:powerup/00004/-1

item replace entity @s enderchest.4 with player_head{powerup_set: 1b, SkullOwner: "xiaozhu_zhizui", Unbreakable: 1b}
scoreboard players operation @s powerup_temp = @s powerup_00005
scoreboard players operation @s powerup_temp *= #2 mem
execute unless score @s powerup_00005 matches 0 if score @s powerup_current matches 5 run item modify entity @s enderchest.4 item:powerup/00005/1
execute if score @s powerup_00005 matches 0 run item modify entity @s enderchest.4 item:powerup/00005/0
execute unless score @s powerup_00005 matches 0 unless score @s powerup_current matches 5 run item modify entity @s enderchest.4 item:powerup/00005/-1

item replace entity @s enderchest.5 with glass{powerup_set: 1b, Unbreakable: 1b}
execute unless score @s powerup_00006 matches 0 if score @s powerup_current matches 6 run item modify entity @s enderchest.5 item:powerup/00006/1
execute if score @s powerup_00006 matches 0 run item modify entity @s enderchest.5 item:powerup/00006/0
execute unless score @s powerup_00006 matches 0 unless score @s powerup_current matches 6 run item modify entity @s enderchest.5 item:powerup/00006/-1

item replace entity @s enderchest.6 with zombie_head{powerup_set: 1b, Unbreakable: 1b}
execute unless score @s powerup_00007 matches 0 if score @s powerup_current matches 7 run item modify entity @s enderchest.6 item:powerup/00007/1
execute if score @s powerup_00007 matches 0 run item modify entity @s enderchest.6 item:powerup/00007/0
execute unless score @s powerup_00007 matches 0 unless score @s powerup_current matches 7 run item modify entity @s enderchest.6 item:powerup/00007/-1

item replace entity @s enderchest.7 with stone{powerup_set: 1b, Unbreakable: 1b}
execute unless score @s powerup_00008 matches 0 if score @s powerup_current matches 8 run item modify entity @s enderchest.7 item:powerup/00008/1
execute if score @s powerup_00008 matches 0 run item modify entity @s enderchest.7 item:powerup/00008/0
execute unless score @s powerup_00008 matches 0 unless score @s powerup_current matches 8 run item modify entity @s enderchest.7 item:powerup/00008/-1

item replace entity @s enderchest.8 with observer{powerup_set: 1b, Unbreakable: 1b}
execute unless score @s powerup_00009 matches 0 if score @s powerup_current matches 9 run item modify entity @s enderchest.8 item:powerup/00009/1
execute if score @s powerup_00009 matches 0 run item modify entity @s enderchest.8 item:powerup/00009/0
execute unless score @s powerup_00009 matches 0 unless score @s powerup_current matches 9 run item modify entity @s enderchest.8 item:powerup/00009/-1

item replace entity @s enderchest.9 with dropper{powerup_set: 1b, Unbreakable: 1b}
execute unless score @s powerup_00010 matches 0 if score @s powerup_current matches 10 run item modify entity @s enderchest.9 item:powerup/00010/1
execute if score @s powerup_00010 matches 0 run item modify entity @s enderchest.9 item:powerup/00010/0
execute unless score @s powerup_00010 matches 0 unless score @s powerup_current matches 10 run item modify entity @s enderchest.9 item:powerup/00010/-1
item replace entity @s enderchest.10 with player_head{powerup_set: 1b, Unbreakable: 1b, SkullOwner: {Id: [I; 2099355382, -1257155127, -1413916549, -482495994], Properties: {textures: [{Value: "e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3ODU4MTA0NGJjZjJjOTg1ZjkwZDE3Mzk0OTYyZWVkZDgzMDBmMmNhMzJkYWNmODNkYWM2N2I4ZWEyMWU4NSJ9fX0="}]}}}
scoreboard players operation @s powerup_temp = @s powerup_00011
scoreboard players operation @s powerup_temp *= #4 mem
execute unless score @s powerup_00011 matches 0 if score @s powerup_current matches 11 run item modify entity @s enderchest.10 item:powerup/00011/1
execute if score @s powerup_00011 matches 0 run item modify entity @s enderchest.10 item:powerup/00011/0
execute unless score @s powerup_00011 matches 0 unless score @s powerup_current matches 11 run item modify entity @s enderchest.10 item:powerup/00011/-1

item replace entity @s enderchest.11 with target{powerup_set: 1b, Unbreakable: 1b}
execute unless score @s powerup_00012 matches 0 if score @s powerup_current matches 12 run item modify entity @s enderchest.11 item:powerup/00012/1
execute if score @s powerup_00012 matches 0 run item modify entity @s enderchest.11 item:powerup/00012/0
execute unless score @s powerup_00012 matches 0 unless score @s powerup_current matches 12 run item modify entity @s enderchest.11 item:powerup/00012/-1

item replace entity @s enderchest.12 with player_head{powerup_set: 1b, Unbreakable: 1b, SkullOwner: {Id: [I; -748109264, 191453126, -1407108545, 764429156], Properties: {textures: [{Value: "e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiN2FhMTY3ZWRmYjg4ZTRhOWQyYmRkZGU2MzI5ZDI3YTE4OTkxOGQ0OGEyOWFiYWQyZDE1OTI4NmY4ZjdmYyJ9fX0="}]}}}
scoreboard players operation @s powerup_temp = @s powerup_00013
scoreboard players operation @s powerup_temp *= #2 mem
execute unless score @s powerup_00013 matches 0 if score @s powerup_current matches 13 run item modify entity @s enderchest.12 item:powerup/00013/1
execute if score @s powerup_00013 matches 0 run item modify entity @s enderchest.12 item:powerup/00013/0
execute unless score @s powerup_00013 matches 0 unless score @s powerup_current matches 13 run item modify entity @s enderchest.12 item:powerup/00013/-1

item replace entity @s enderchest.13 with slime_block{powerup_set: 1b, Unbreakable: 1b}
execute unless score @s powerup_00014 matches 0 if score @s powerup_current matches 14 run item modify entity @s enderchest.13 item:powerup/00014/1
execute if score @s powerup_00014 matches 0 run item modify entity @s enderchest.13 item:powerup/00014/0
execute unless score @s powerup_00014 matches 0 unless score @s powerup_current matches 14 run item modify entity @s enderchest.13 item:powerup/00014/-1

item replace entity @s enderchest.14 with player_head{powerup_set: 1b, Unbreakable: 1b, SkullOwner: "JK137"}
scoreboard players operation @s powerup_temp = @s powerup_00015
scoreboard players operation @s powerup_temp *= #5 mem
execute unless score @s powerup_00015 matches 0 if score @s powerup_current matches 15 run item modify entity @s enderchest.14 item:powerup/00015/1
execute if score @s powerup_00015 matches 0 run item modify entity @s enderchest.14 item:powerup/00015/0
execute unless score @s powerup_00015 matches 0 unless score @s powerup_current matches 15 run item modify entity @s enderchest.14 item:powerup/00015/-1

item replace entity @s enderchest.15 with end_rod{powerup_set: 1b, Unbreakable: 1b}
execute unless score @s powerup_00016 matches 0..4 if score @s powerup_current matches 16 run item modify entity @s enderchest.15 item:powerup/00016/1
execute if score @s powerup_00016 matches 0..4 run item modify entity @s enderchest.15 item:powerup/00016/0
execute unless score @s powerup_00016 matches 0..4 unless score @s powerup_current matches 16 run item modify entity @s enderchest.15 item:powerup/00016/-1

item replace entity @s enderchest.16 with bone{powerup_set: 1b, Unbreakable: 1b}
execute unless score @s powerup_00017 matches 0..4 if score @s powerup_current matches 17 run item modify entity @s enderchest.16 item:powerup/00017/1
execute if score @s powerup_00017 matches 0..4 run item modify entity @s enderchest.16 item:powerup/00017/0
execute unless score @s powerup_00017 matches 0..4 unless score @s powerup_current matches 17 run item modify entity @s enderchest.16 item:powerup/00017/-1

item replace entity @s enderchest.17 with lead{powerup_set: 1b, Unbreakable: 1b}
execute unless score @s powerup_00018 matches 0..4 if score @s powerup_current matches 18 run item modify entity @s enderchest.17 item:powerup/00018/1
execute if score @s powerup_00018 matches 0..4 run item modify entity @s enderchest.17 item:powerup/00018/0
execute unless score @s powerup_00018 matches 0..4 unless score @s powerup_current matches 18 run item modify entity @s enderchest.17 item:powerup/00018/-1

item replace entity @s enderchest.18 with red_bed{powerup_set: 1b, Unbreakable: 1b}
execute unless score @s powerup_00019 matches 0..4 if score @s powerup_current matches 19 run item modify entity @s enderchest.18 item:powerup/00019/1
execute if score @s powerup_00019 matches 0..4 run item modify entity @s enderchest.18 item:powerup/00019/0
execute unless score @s powerup_00019 matches 0..4 unless score @s powerup_current matches 19 run item modify entity @s enderchest.18 item:powerup/00019/-1


item replace entity @s enderchest.19 with light_gray_stained_glass_pane{powerup_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.20 with light_gray_stained_glass_pane{powerup_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.21 with light_gray_stained_glass_pane{powerup_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.22 with light_gray_stained_glass_pane{powerup_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.23 with light_gray_stained_glass_pane{powerup_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.24 with light_gray_stained_glass_pane{powerup_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.25 with light_gray_stained_glass_pane{powerup_set: 1b, display: {Name: '""'}}
item replace entity @s enderchest.26 with light_gray_stained_glass_pane{powerup_set: 1b, display: {Name: '""'}}
