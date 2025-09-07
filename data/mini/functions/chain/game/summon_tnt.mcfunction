# 随机生成 TNT（函数宏）
$execute unless score $ley_line_disorder mem matches -1 run summon tnt $(TntX) 40 $(TntY) {fuse: 10000s, Tags: ["chain_tnt"], Glowing: 1b}
$execute if score $ley_line_disorder mem matches -1 run summon armor_stand $(TntX) 40 $(TntY) {Tags: ["chain_tnt"], Invisible: 1b, DisabledSlots: 16191, Invulnerable: 1b, Small: 1b}