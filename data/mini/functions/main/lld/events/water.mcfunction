# 幻境干扰生效：连锁换位（其实是从竞技场搬过来的）

# 检测玩家数量，若玩家数量小于 2 则不做任何事情
function mini:main/update_player_count
execute if score $player_alive mem matches 2.. run function mini:main/lld/events/water2