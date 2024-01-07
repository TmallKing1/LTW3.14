
# 清理残余实体
kill @e[type=falling_block,tag=parkour_block]
kill @e[tag=treasure_item]
function mini:main/kill_entity


# 生成节奏方块实体
function mini:parkour_old/game/marker_spawn

# 生成传送门实体
summon minecraft:falling_block 1014 21 1057 {Time: 1, NoGravity: 1b, BlockState: {Name: "nether_portal", Properties: {axis: z}}, Tags: ["parkour_block"]}
summon minecraft:falling_block 1014 21 1056 {Time: 1, NoGravity: 1b, BlockState: {Name: "nether_portal", Properties: {axis: z}}, Tags: ["parkour_block"]}
summon minecraft:falling_block 1014 22 1057 {Time: 1, NoGravity: 1b, BlockState: {Name: "nether_portal", Properties: {axis: z}}, Tags: ["parkour_block"]}
summon minecraft:falling_block 1014 22 1056 {Time: 1, NoGravity: 1b, BlockState: {Name: "nether_portal", Properties: {axis: z}}, Tags: ["parkour_block"]}
summon minecraft:falling_block 1014 23 1057 {Time: 1, NoGravity: 1b, BlockState: {Name: "nether_portal", Properties: {axis: z}}, Tags: ["parkour_block"]}
summon minecraft:falling_block 1014 23 1056 {Time: 1, NoGravity: 1b, BlockState: {Name: "nether_portal", Properties: {axis: z}}, Tags: ["parkour_block"]}

# 生成宝藏实体
schedule function mini:parkour_old/game/summon_treasure 2t
