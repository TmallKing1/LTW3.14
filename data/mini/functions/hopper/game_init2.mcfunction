
# 清理残余实体
tp @e[type=!player,x=-33,y=-200,z=4967,dx=100,dy=600,dz=100] ~ -100 ~
kill @e[type=!player,x=-33,y=-200,z=4967,dx=100,dy=600,dz=100]
kill @e[type=marker]
kill @e[type=item_frame]

# 合成表展示框
summon item_frame 6 230 4995 {Facing: 4b, Item: {id: "minecraft:raw_iron", Count: 1}, Fixed: 1b}
summon item_frame 6 230 4996 {Facing: 4b, Item: {id: "minecraft:raw_iron", Count: 1}, Fixed: 1b}
summon item_frame 6 230 4997 {Facing: 4b, Item: {id: "minecraft:raw_iron", Count: 1}, Fixed: 1b}
summon item_frame 6 229 4995 {Facing: 4b, Item: {id: "minecraft:raw_iron", Count: 1}, Fixed: 1b}
summon item_frame 6 229 4996 {Facing: 4b, Item: {id: "minecraft:chest", Count: 1}, Fixed: 1b}
summon item_frame 6 229 4997 {Facing: 4b, Item: {id: "minecraft:raw_iron", Count: 1}, Fixed: 1b}
summon item_frame 6 228 4995 {Facing: 4b, Item: {id: "minecraft:raw_iron", Count: 1}, Fixed: 1b}
summon item_frame 6 228 4996 {Facing: 4b, Item: {id: "minecraft:raw_iron", Count: 1}, Fixed: 1b}
summon item_frame 6 228 4997 {Facing: 4b, Item: {id: "minecraft:raw_iron", Count: 1}, Fixed: 1b}

summon glow_item_frame 6 229 4999 {Facing: 4b, Item: {id: "minecraft:hopper_minecart", Count: 1}, Fixed: 1b}