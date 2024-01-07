# 处理单个奖励物品
# as player

# 获取当前物品
data modify storage item:bonus item set from storage item:bonus item_buff[0]
data remove storage item:bonus item_buff[0]

# 播放音效
function lib:sounds/hit

# 显示拾取提示（获得积分的提示由 add_score 显示，获得随机物品则该物品不显示）
execute unless data storage item:bonus item.tag.bonus_add_score unless data storage item:bonus item.tag.bonus_stole_score unless data storage item:bonus item.tag.bonus_gold unless data storage item:bonus item.tag.bonus_add_power unless data storage item:bonus item.tag.bonus_add_cash unless data storage item:bonus item.tag.bonus_random_bonus[0] unless data storage item:bonus item.tag.bonus_essence run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s","color":"aqua"}," 获得了 ",{"nbt": "item.tag.item_name","storage":"item:bonus","interpret": true}]

# 如果有 clean_inventory 标签则清空物品栏
execute if data storage item:bonus item.tag{clean_inventory: 1b} run function item:bonus_item/clear_inventory

# 如果有 return 标签则退回物品
execute if data storage item:bonus item.tag{bonus_return: 1b} run function item:bonus_item/return_item

# 如果有 add_score 标签则增加积分
execute if data storage item:bonus item.tag.bonus_add_score run function item:bonus_item/add_score

# 如果有 essence 标签则增加魔法精华
execute if data storage item:bonus item.tag.bonus_essence run function item:bonus_item/add_essence

# 如果有 add_power 标签则增加能量
execute if data storage item:bonus item.tag.bonus_add_power run function item:bonus_item/add_power

# 如果有 add_cash 标签则增加现金
execute if data storage item:bonus item.tag.bonus_add_cash run function item:bonus_item/add_cash

# 如果有 give_items 标签则给予物品
execute if data storage item:bonus item.tag.bonus_give_items[0] run function item:bonus_item/give_items

# 如果有 random_bonus 标签则返还随机物品
execute if data storage item:bonus item.tag.bonus_random_bonus[0] run function item:bonus_item/random_bonus

# 如果有 stole_score 标签则偷分
execute if data storage item:bonus item.tag.bonus_stole_score run function item:bonus_item/stole_score

# 如果有 bonus_gold 标签则给予金粒
execute if data storage item:bonus item.tag.bonus_gold unless score $test_mode mem matches 1 run function item:bonus_item/gold
execute if data storage item:bonus item.tag.bonus_gold if score $test_mode mem matches 1 run tellraw @a ["",{"text": ">> ","color":"red","bold": true},{"selector": "@s","color":"red"},{"text": " 没有获得金粒，因为测试模式已开启。","color": "red"}]

# 执行特定函数
execute if score $state mem matches 5 if score $mini_type mem matches 1 run function mini:parkour/pickup
execute if score $state mem matches 7 run function item:bonus_item/pickup_1

# 处理下一个
execute if data storage item:bonus item_buff[0] run function item:bonus_item/call_each