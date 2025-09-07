# 玩家记分板
scoreboard objectives add world_progress dummy "世界进度 x100"
scoreboard objectives add world_stage dummy "世界模式等级"
scoreboard objectives add world_boost dummy "世界强化"
scoreboard objectives add world_feedback_step dummy "步数显示"
scoreboard objectives add world_feedback_reward dummy "奖励显示"

# 常量记分板
scoreboard objectives remove stage_index
scoreboard objectives add stage_index dummy "台阶索引"
scoreboard objectives remove stage_step
scoreboard objectives add stage_step dummy "步数"
scoreboard objectives remove stage_type
scoreboard objectives add stage_type dummy "类型"
scoreboard objectives remove stage_reward
scoreboard objectives add stage_reward dummy "奖励金粒"
scoreboard objectives remove world_temp
scoreboard objectives add world_temp dummy "世界模式缓存数据"

scoreboard players set $world_stage_max mem 39

# 世界进度计算公式：2.5 + 2.0 * sqrt(max(0, score - 4))
# 格子类型 
# 0：普通格 
# 1：双倍格（游戏结束后获得双倍金粒与魔法精华奖励）
# 2：随机格（游戏开始时道具的等级随机）
# 3：符咒格（停留在格子上获得2个魔法符咒）
# -1：限制格（限制改版模式/奖励增益模式）
# -2：限制格（限制经典模式）
# -3：限制格（限制逆转模式）
data modify storage ltw:world Steps set value [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0]
data modify storage ltw:world Types set value [0,1,2,2,0,0,1,2,2,3,0,1,2,2,0,0,1,2,2,3,0,1,2,-1,0,0,1,-2,-3,3,0,1,2,-1,0,0,1,-2,-3,0]
data modify storage ltw:world Rewards set value [0,0,36,0,63,0,0,36,0,63,0,0,36,0,63,0,0,36,0,81,0,0,36,0,63,0,0,36,0,63,0,0,36,0,63,0,0,36,0,162]
data modify storage ltw:world Positions set value [{X:999,Y:15,Z:-2052},{X:1001,Y:15,Z:-2049},{X:1002,Y:15,Z:-2046},{X:1003,Y:15,Z:-2042},{X:1002,Y:15,Z:-2038},{X:1001,Y:15,Z:-2034},{X:1000,Y:16,Z:-2030},{X:1001,Y:18,Z:-2026},{X:1003,Y:18,Z:-2021},{X:1003,Y:20,Z:-2016},{X:1006,Y:20,Z:-2014},{X:1011,Y:20,Z:-2014},{X:1014,Y:20,Z:-2011},{X:1015,Y:20,Z:-2007},{X:1014,Y:20,Z:-2002},{X:1010,Y:20,Z:-1998},{X:1005,Y:20,Z:-1998},{X:1001,Y:20,Z:-1997},{X:999,Y:20,Z:-1993},{X:995,Y:19,Z:-1991},{X:993,Y:19,Z:-1987},{X:989,Y:21,Z:-1986},{X:987,Y:21,Z:-1990},{X:986,Y:21,Z:-1994},{X:982,Y:21,Z:-1994},{X:978,Y:21,Z:-1993},{X:986,Y:21,Z:-1994},{X:975,Y:21,Z:-1990},{X:975,Y:21,Z:-1986},{X:975,Y:21,Z:-1982},{X:976,Y:21,Z:-1977},{X:980,Y:21,Z:-1974},{X:986,Y:21,Z:-1974},{X:987,Y:21,Z:-1978},{X:989,Y:21,Z:-1982},{X:993,Y:19,Z:-1981},{X:998,Y:19,Z:-1980},{X:1001,Y:19,Z:-1977},{X:1001,Y:22,Z:-1973},{X:1001,Y:22,Z:-1969}]

