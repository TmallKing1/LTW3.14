# 召唤信息盔甲架
execute unless entity @e[type=text_display,tag=lobby_info_1,tag=lobby_entity] run summon text_display -17 10 -39 {Tags: ["lobby_info_1", "lobby_entity"], text: '["",{"text": "游艺街","color": "aqua"}," ",{"text": "小猪之最改版服","color": "red","bold": true},"\\n",{"text": "1.6 版本「眼前延伸的世界」","color": "gold"},"\\n",{"text": "交流群：","color": "white"},{"text": "607471033","color": "yellow","obfuscated": false},"\\n",{"text": "原作者：","color": "white"},{"text": "龙腾猫跃、00ll00、HerobrineXia","color": "light_purple"},"\\n",{"text": "改版作者：","color": "white"},{"text": "小猪之最Thepig","color": "blue"}]', billboard: "center", brightness: {block: 15, sky: 15}, background: 0, alignment: "center"}
execute unless entity @e[type=text_display,tag=lobby_info_2,tag=lobby_entity] run summon text_display -25.5 10.1 -38.5 {Tags: ["lobby_info_2", "lobby_entity"], text: '["",{"text": "前往 ","color": "white"},{"text": "创作者&赞助者大厅","color": "aqua"}]', billboard: "center", brightness: {block: 15, sky: 15}, background: 0, alignment: "center"}

execute unless entity @e[type=text_display,tag=lobby_info_11,tag=lobby_entity] run summon text_display 995 23 -1000 {Tags: ["lobby_info_11", "lobby_entity"], text: '[{"text":"赞助者の建筑","color":"green"},"\\n",{"text":"↓跳进洞里↓","color":"gold"}]', billboard: "center", brightness: {block: 15, sky: 15}, background: 0, alignment: "center"}

# 召唤老板
execute unless entity @e[type=piglin,tag=shop_piglin_1,tag=lobby_entity] run summon piglin 0 22 -60 {Tags: ["lobby_entity", "shop_piglin_1"], PersistenceRequired: 1b, IsImmuneToZombification: 1b, CannotHunt: 1b, HandItems: [{id: "paper", Count: 1b}, {}], HandDropChances: [0.0f, 0.0f], CustomName: '{"text":"使用生物雷达是作弊行为哦！","color":"red"}'}
execute unless entity @e[type=piglin,tag=shop_piglin_2,tag=lobby_entity] run summon piglin 0 22 -60 {Tags: ["lobby_entity", "shop_piglin_2"], PersistenceRequired: 1b, IsImmuneToZombification: 1b, CannotHunt: 1b, HandItems: [{id: "music_disc_pigstep", Count: 1b}, {}], HandDropChances: [0.0f, 0.0f]}
execute unless entity @e[type=piglin,tag=shop_piglin_3,tag=lobby_entity] run summon piglin 1 9 -37 {Tags: ["lobby_entity", "shop_piglin_3"], PersistenceRequired: 1b, IsImmuneToZombification: 1b, CannotHunt: 1b, HandItems: [{id: "fishing_rod", Count: 1b}, {}], HandDropChances: [0.0f, 0.0f]}
execute unless entity @e[type=pig,tag=shop_piglin_4,tag=lobby_entity] run summon pig 9 11 -36 {Tags: ["lobby_entity", "shop_piglin_4"], PersistenceRequired: 1b}
execute unless entity @e[type=piglin,tag=shop_piglin_5,tag=lobby_entity] run summon piglin 19 12 -39 {Tags: ["lobby_entity", "shop_piglin_5"], PersistenceRequired: 1b, IsImmuneToZombification: 1b, CannotHunt: 1b, ArmorItems: [{id: "golden_boots", Count: 1b}, {id: "golden_leggings", Count: 1b}, {id: "golden_chestplate", Count: 1b}, {id: "golden_helmet", Count: 1b}], ArmorDropChances: [0.0f, 0.0f, 0.0f, 0.0f], HandItems: [{id: "netherite_boots", Count: 1b}, {}], HandDropChances: [0.0f, 0.0f]}
execute unless entity @e[type=piglin,tag=shop_piglin_6,tag=lobby_entity] run summon piglin 23 10 -48 {Tags: ["lobby_entity", "shop_piglin_6"], PersistenceRequired: 1b, IsImmuneToZombification: 1b, CannotHunt: 1b, HandItems: [{id: "golden_axe", Count: 1b, tag: {Potion: "minecraft:slowness"}}, {}], HandDropChances: [0.0f, 0.0f]}
execute unless entity @e[type=piglin,tag=shop_piglin_7,tag=lobby_entity] run summon piglin 22 12 -59 {Tags: ["lobby_entity", "shop_piglin_7"], PersistenceRequired: 1b, IsImmuneToZombification: 1b, CannotHunt: 1b, HandItems: [{id: "potion", Count: 1b, tag: {CustomPotionColor: 8039610}}, {}], HandDropChances: [0.0f, 0.0f]}
execute unless entity @e[type=piglin,tag=shop_piglin_8,tag=lobby_entity] run summon piglin 11 10 -61 {Tags: ["lobby_entity", "shop_piglin_8"], PersistenceRequired: 1b, IsImmuneToZombification: 1b, CannotHunt: 1b, HandItems: [{id: "golden_apple", Count: 1b}, {}], HandDropChances: [0.0f, 0.0f]}
execute unless entity @e[type=piglin,tag=shop_piglin_9,tag=lobby_entity] run summon piglin 5 10 -58 {Tags: ["lobby_entity", "shop_piglin_9"], PersistenceRequired: 1b, IsImmuneToZombification: 1b, CannotHunt: 1b, HandItems: [{id: "tipped_arrow", Count: 1b, tag: {Potion: "minecraft:slowness"}}, {}], HandDropChances: [0.0f, 0.0f]}
execute unless entity @e[type=piglin,tag=shop_piglin_10,tag=lobby_entity] run summon piglin 0 9 -55 {Tags: ["lobby_entity", "shop_piglin_10"], PersistenceRequired: 1b, IsImmuneToZombification: 1b, CannotHunt: 1b, HandItems: [{id: "bow", Count: 1b}, {}], HandDropChances: [0.0f, 0.0f]}

# 召唤魔法符咒展示框
execute unless entity @e[type=glow_item_frame,tag=shop_spell,tag=lobby_entity] run summon glow_item_frame 9 10 -36 {Tags: ["lobby_entity", "shop_spell"], Facing: 2b, Invulnerable: 1b, Item: {id: "shaper_armor_trim_smithing_template", Count: 1, tag: {display: {Name: '{"text":"魔法符咒","color":"light_purple","italic": false}'}, stats_item: 1b, Enchantments: [{id: "infinity", lvl: 1}], HideFlags: 1, CustomModelData: 14320001}}, Fixed: 1b}

# 召唤粒子房实体
execute unless entity @e[type=villager,tag=shop_particle_1,tag=lobby_entity] run summon minecraft:villager -23 20 -73 {Tags: ["lobby_entity", "shop_particle_1"]}
execute unless entity @e[type=villager,tag=shop_particle_2,tag=lobby_entity] run summon minecraft:villager -17 20 -76 {Tags: ["lobby_entity", "shop_particle_2"]}
execute unless entity @e[type=villager,tag=shop_particle_3,tag=lobby_entity] run summon minecraft:villager -21 25 -73 {Tags: ["lobby_entity", "shop_particle_3"]}
execute unless entity @e[type=villager,tag=shop_particle_4,tag=lobby_entity] run summon minecraft:villager -17 25 -76 {Tags: ["lobby_entity", "shop_particle_4"]}
execute unless entity @e[type=armor_stand,tag=show_particle_1,tag=lobby_entity] run summon minecraft:armor_stand -20 20.1 -75 {Small: 1b, Invisible: 1b, Invulnerable: 1b, Marker: 1b, Tags: ["show_particle_1", "lobby_entity"]}
execute unless entity @e[type=armor_stand,tag=show_particle_2,tag=lobby_entity] run summon minecraft:armor_stand -19 20.1 -75 {Small: 1b, Invisible: 1b, Invulnerable: 1b, Marker: 1b, Tags: ["show_particle_2", "lobby_entity"]}
execute unless entity @e[type=armor_stand,tag=show_particle_3,tag=lobby_entity] run summon minecraft:armor_stand -18 20.1 -75 {Small: 1b, Invisible: 1b, Invulnerable: 1b, Marker: 1b, Tags: ["show_particle_3", "lobby_entity"]}
execute unless entity @e[type=armor_stand,tag=show_particle_4,tag=lobby_entity] run summon minecraft:armor_stand -17 20.1 -75 {Small: 1b, Invisible: 1b, Invulnerable: 1b, Marker: 1b, Tags: ["show_particle_4", "lobby_entity"]}
execute unless entity @e[type=armor_stand,tag=show_particle_5,tag=lobby_entity] run summon minecraft:armor_stand -16 20.1 -75 {Small: 1b, Invisible: 1b, Invulnerable: 1b, Marker: 1b, Tags: ["show_particle_5", "lobby_entity"]}
execute unless entity @e[type=armor_stand,tag=show_particle_6,tag=lobby_entity] run summon minecraft:armor_stand -15 20.1 -75 {Small: 1b, Invisible: 1b, Invulnerable: 1b, Marker: 1b, Tags: ["show_particle_6", "lobby_entity"]}
execute unless entity @e[type=armor_stand,tag=show_particle_7,tag=lobby_entity] run summon minecraft:armor_stand -14 20.1 -75 {Small: 1b, Invisible: 1b, Invulnerable: 1b, Marker: 1b, Tags: ["show_particle_7", "lobby_entity"]}
execute unless entity @e[type=armor_stand,tag=show_particle_8,tag=lobby_entity] run summon minecraft:armor_stand -18 25.1 -75 {Small: 1b, Invisible: 1b, Invulnerable: 1b, Marker: 1b, Tags: ["show_particle_8", "lobby_entity"]}
execute unless entity @e[type=armor_stand,tag=show_particle_9,tag=lobby_entity] run summon minecraft:armor_stand -17 25.1 -75 {Small: 1b, Invisible: 1b, Invulnerable: 1b, Marker: 1b, Tags: ["show_particle_9", "lobby_entity"]}
execute unless entity @e[type=armor_stand,tag=show_particle_10,tag=lobby_entity] run summon minecraft:armor_stand -16 25.1 -75 {Small: 1b, Invisible: 1b, Invulnerable: 1b, Marker: 1b, Tags: ["show_particle_10", "lobby_entity"]}
execute unless entity @e[type=armor_stand,tag=show_particle_vip_1,tag=lobby_entity] run summon minecraft:armor_stand 1003 22.1 -1007 {Small: 1b, Invisible: 1b, Invulnerable: 1b, Marker: 1b, Tags: ["show_particle_vip_1", "lobby_entity"]}
execute unless entity @e[type=armor_stand,tag=show_particle_vip_2,tag=lobby_entity] run summon minecraft:armor_stand 1003 22.1 -1006 {Small: 1b, Invisible: 1b, Invulnerable: 1b, Marker: 1b, Tags: ["show_particle_vip_2", "lobby_entity"]}
execute unless entity @e[type=armor_stand,tag=show_particle_vip_3,tag=lobby_entity] run summon minecraft:armor_stand 1003 22.1 -994 {Small: 1b, Invisible: 1b, Invulnerable: 1b, Marker: 1b, Tags: ["show_particle_vip_3", "lobby_entity"]}
execute unless entity @e[type=armor_stand,tag=show_particle_vip_4,tag=lobby_entity] run summon minecraft:armor_stand 1003 22.1 -993 {Small: 1b, Invisible: 1b, Invulnerable: 1b, Marker: 1b, Tags: ["show_particle_vip_4", "lobby_entity"]}
execute unless entity @e[type=piglin,tag=shop_piglin_11,tag=lobby_entity] run kill @e[type=minecart,tag=lobby_entity]
execute unless entity @e[type=minecart,tag=lobby_entity] run kill @e[type=piglin,tag=lobby_entity,tag=shop_piglin_11]
execute unless entity @e[type=piglin,tag=shop_piglin_11,tag=lobby_entity] run summon minecart 4 28 -47 {Rotation: [0.0f, 0.0f], Tags: ["lobby_entity"], Passengers: [{id: "minecraft:piglin", Rotation: [90.0f, 0.0f], Tags: ["lobby_entity", "shop_piglin_11"], CustomName: '{"text":"神秘老板"}', ArmorDropChances: [0.0f, 0.0f, 0.0f, 0.0f], PersistenceRequired: 1b, IsImmuneToZombification: 1b, CannotHunt: 1b, HandItems: [{id: "gold_block", Count: 1b}, {}], HandDropChances: [0.0f, 0.0f]}]}
execute unless entity @e[type=piglin,tag=shop_piglin_12,tag=lobby_entity] run summon piglin 23 10 -67 {Tags: ["lobby_entity", "shop_piglin_12"], PersistenceRequired: 1b, IsImmuneToZombification: 1b, CannotHunt: 1b, HandItems: [{id: "ancient_debris", Count: 1b}, {}], HandDropChances: [0.0f, 0.0f]}

# 召唤显示测试实体
execute unless entity @e[tag=visual_1,tag=lobby_entity] run summon armor_stand 0 300.25 -49.75 {Tags: ["lobby_entity", "visual_1"], DisabledSlots: 7967, ArmorItems: [{}, {}, {}, {id: "snowball", Count: 1}], Invisible: 1b, Small: 1b, NoGravity: 1b, Marker: 1b, Team: "orange_test", Glowing: 1b}
team join orange_test @e[tag=visual_1]
execute unless entity @e[tag=visual_2,tag=lobby_entity] run summon item 44.0 300.9 -48.50 {Tags: ["lobby_entity", "visual_2"], Age: -32768, PickupDelay: 32767, NoGravity: 1, Invulnerable: 1, Glowing: 1, Motion: [0, 0, 0], Item: {id: "minecraft:stone", Count: 1}}
team join green_test @e[tag=visual_2]

# 召唤赞助者建筑内实体
execute unless entity @e[tag=donate_1,tag=lobby_entity] run summon item_frame 941 2 -997 {Tags: ["donate_1", "lobby_entity"], Facing: 5b, Item: {Count: 1, id: "shears", tag: {Enchantments: [{id: "sharpness", lvl: 255}]}}, Fixed: 1b}
execute unless entity @e[tag=donate_2,tag=lobby_entity] run summon glow_item_frame 939 3 -1005 {Tags: ["donate_2", "lobby_entity"], Facing: 5b, Item: {Count: 1, id: "shears"}, Fixed: 1b}
execute unless entity @e[tag=donate_3,tag=lobby_entity] run summon glow_item_frame 939 3 -1006 {Tags: ["donate_3", "lobby_entity"], Facing: 5b, Item: {Count: 1, id: "shears"}, Fixed: 1b}

# 召唤世界模式实体
function ltw:state/0/world/summon