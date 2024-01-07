kill @e[type=marker,tag=spawn_marker]
execute as @a[team=playing] run summon marker -16.0 270 4984.0 {Tags: ["spawn_marker"]}
spreadplayers -16.0 4984.0 10 12 false @e[tag=spawn_marker]