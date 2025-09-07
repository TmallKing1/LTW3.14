# spreadplayer 后不能立即传送，所以延迟 1tick
execute unless score $ley_line_disorder mem matches -1 as @a[team=playing,tag=!rejoining] at @s run tp @s[team=!debugging] ~ 34.5 ~
execute if score $ley_line_disorder mem matches -1 as @a[team=playing,tag=!rejoining] at @s run tp @s[team=!debugging] ~ 20.5 ~