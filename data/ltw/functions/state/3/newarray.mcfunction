scoreboard players operation $randarray_max mem = #mini_total mem
scoreboard players operation $randarray_last mem = $mini_type mem
function lib:randarray/call

# 对数组进行修改，确保最多只有一个 legacy
scoreboard players set $legacy_count mem 0
scoreboard players set $index mem 0
data modify storage lib:arrays Array set from storage lib:randarray out
function ltw:state/3/loop_remove

data modify storage ltw:mini types set from storage lib:arrays Array