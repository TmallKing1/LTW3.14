clear @s written_book{game_item: 1b}

# 返还格子上的物品
execute if data entity @s Inventory[{Slot: 8b}] run scoreboard players set @s item_slot 8
execute if data entity @s Inventory[{Slot: 8b}] at @s run function item:pop_slot/return_item

item replace entity @s hotbar.8 with written_book{game_item: 1b, powerful: 0b, display: {Name: '{"text":"投票书","color":"gold","italic":false}'}, Unbreakable: 1b, author: "LTW3.14", title: "投票书", generation: 0, resolved: 0b, pages: ['[{"text": "","color": "black","bold": true},{"text": "请选择下列游戏中的一个来增加它被选中的概率，只有一次选择机会！","color": "light_purple","bold": false},"\\n>> ",{"text": "钢铁狂潮","color": "dark_gray","bold": false,"underlined": true,"hoverEvent": {"action": "show_text","contents": ["努力挖矿冶铁, 成为 ",{"text":"持有铁锭最多","color":"gold"}," 的人吧！\\n但是, 被杀死的玩家会掉落 1/3 的物品……\\n比起挖矿, 为什么不直接 「抢」 呢？"]},"clickEvent": {"action": "run_command","value": "/trigger vote_trigger set 528746"}},"\\n>> ",{"text": "贸易专家","color": "dark_green","bold": false,"underlined": true,"hoverEvent": {"action": "show_text","contents": ["手持最后一格的交易契约, 即可召唤村民。\\n与村民进行交易, 成为 ",{"text":"绿宝石最多","color":"gold"}," 的玩家吧！"]},"clickEvent": {"action": "run_command","value": "/trigger vote_trigger set 528747"}},"\\n>> ",{"text": "钻石风暴","color": "dark_aqua","bold": false,"underlined": true,"hoverEvent": {"action": "show_text","contents": ["努力挖掘钻石, 成为 ",{"text":"持有钻石最多","color":"gold"}," 的人吧！\\n但是, 被杀死的玩家会掉落一半的物品……\\n比起挖矿, 为什么不直接 「抢」 呢？"]},"clickEvent": {"action": "run_command","value": "/trigger vote_trigger set 528748"}},"\\n>> ",{"text": "富翁之路","color": "gold","bold": false,"underlined": true,"hoverEvent": {"action": "show_text","contents": ["",{"text": "使用粗铁与箱子","color": "gold"}," 在工作台合成漏斗矿车，\\n并在漏斗矿车内出售指定的物品, 成为 ",{"text":"持有信用点最多","color":"gold"}," 的人吧！\\n但是, 被杀死的玩家会掉落 1/3 的物品和一半的信用点……"]},"clickEvent": {"action": "run_command","value": "/trigger vote_trigger set 528749"}},"\\n>> ",{"text": "三点一线","color": "dark_purple","bold": false,"underlined": true,"hoverEvent": {"action": "show_text","contents": ["完成九宫格内的收集任务来点亮方格，\\n 将横向/纵向的 ",{"text":"三个连续方格","color":"gold"}," 全部点亮即可获得游戏的胜利！\\n 完成目标人数不足三人时，未完成的玩家会按完成任务数排名！"]},"clickEvent": {"action": "run_command","value": "/trigger vote_trigger set 528750"}}]']}