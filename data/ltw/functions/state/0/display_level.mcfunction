scoreboard players operation @s temp = @s stat_level
scoreboard players operation @s temp2 = @s stat_level_exp
xp set @s 62 levels
# 五分到 0~19
xp set @s[scores={temp2=0..19}] 0 points
xp set @s[scores={temp2=20..39}] 80 points
xp set @s[scores={temp2=40..59}] 160 points
xp set @s[scores={temp2=60..79}] 240 points
xp set @s[scores={temp2=80..}] 320 points
scoreboard players operation @s temp2 %= #20 mem

# 五分到 0~4
xp add @s[scores={temp2=0..3}] 0 points
xp add @s[scores={temp2=4..7}] 16 points
xp add @s[scores={temp2=8..11}] 32 points
xp add @s[scores={temp2=12..15}] 48 points
xp add @s[scores={temp2=16..}] 64 points
scoreboard players operation @s temp2 %= #4 mem

# 最终添加
xp add @s[scores={temp2=1}] 4 points
xp add @s[scores={temp2=2}] 8 points
xp add @s[scores={temp2=3}] 12 points

# 四分到 0~1023
xp set @s[scores={temp=0..1013}] 0 levels
xp set @s[scores={temp=1024..2047}] 1024 levels
xp set @s[scores={temp=2048..3071}] 2048 levels
xp set @s[scores={temp=3072..}] 3072 levels
scoreboard players operation @s temp %= #1024 mem

# 四分到 0~255
xp add @s[scores={temp=0..255}] 0 levels
xp add @s[scores={temp=256..511}] 256 levels
xp add @s[scores={temp=512..767}] 512 levels
xp add @s[scores={temp=768..}] 768 levels
scoreboard players operation @s temp %= #256 mem

# 四分到 0~63
xp add @s[scores={temp=0..63}] 0 levels
xp add @s[scores={temp=64..127}] 64 levels
xp add @s[scores={temp=128..191}] 128 levels
xp add @s[scores={temp=192..}] 192 levels
scoreboard players operation @s temp %= #64 mem

# 四分到 0~15
xp add @s[scores={temp=0..15}] 0 levels
xp add @s[scores={temp=16..31}] 16 levels
xp add @s[scores={temp=32..47}] 32 levels
xp add @s[scores={temp=48..}] 48 levels
scoreboard players operation @s temp %= #16 mem

# 四分到 0~3
xp add @s[scores={temp=4..7}] 4 levels
xp add @s[scores={temp=8..11}] 8 levels
xp add @s[scores={temp=12..}] 12 levels
scoreboard players operation @s temp %= #4 mem

# 最终添加
xp add @s[scores={temp=1}] 1 levels
xp add @s[scores={temp=2}] 2 levels
xp add @s[scores={temp=3}] 3 levels
