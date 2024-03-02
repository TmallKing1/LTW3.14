# 随机决定放哪种罐子
execute store result score $random mem run random value 1..100

# 65% 普通罐子
execute if score $random mem matches 1..65 run setblock ~ ~ ~ decorated_pot{item:{id:"minecraft:acacia_button",Count: 1b}}

# 5% 回血罐子
execute if score $random mem matches 66..70 run setblock ~ ~ ~ decorated_pot{sherds:["heart_pottery_sherd","heart_pottery_sherd","heart_pottery_sherd","heart_pottery_sherd"],item:{id:"minecraft:acacia_button",Count: 1b}}

# 20% 爆炸罐子
execute if score $random mem matches 71..90 run setblock ~ ~ ~ decorated_pot{sherds:["danger_pottery_sherd","danger_pottery_sherd","danger_pottery_sherd","danger_pottery_sherd"],item:{id:"minecraft:acacia_button",Count: 1b}}

# 9% 攻击罐子
execute if score $random mem matches 91..99 run setblock ~ ~ ~ decorated_pot{sherds:["blade_pottery_sherd","blade_pottery_sherd","blade_pottery_sherd","blade_pottery_sherd"],item:{id:"minecraft:acacia_button",Count: 1b}}

# 1% 奖励物品罐子
execute if score $random mem matches 100 run setblock ~ ~ ~ decorated_pot{sherds:["prize_pottery_sherd","prize_pottery_sherd","prize_pottery_sherd","prize_pottery_sherd"],item:{id:"minecraft:acacia_button",Count: 1b}}