# 玩家失败时由玩家自己触发
execute unless score $ley_line_disorder mem matches -1 run function mini:main/player_failed
execute if score $ley_line_disorder mem matches -1 if score @s layer_highest matches 4 run function mini:main/player_failed
execute if score $ley_line_disorder mem matches -1 unless score @s layer_highest matches 4 run return run function mini:tntrun/game/resurrection

# 玩家死亡
tag @s remove tntrun_pc
