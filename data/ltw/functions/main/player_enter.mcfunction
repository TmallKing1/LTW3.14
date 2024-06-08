# 当玩家加入游戏时触发

spawnpoint @s -12 7 -102

advancement revoke @s only lib:damage_dealt
advancement revoke @s only lib:damage_taken
advancement revoke @s only item:container/place
advancement revoke @s only item:special/consume_enchanted_apple
advancement revoke @s only item:special/consume_golden_apple

execute as @a at @s run function lib:sounds/hit

# 存储UUID
execute store result score @s UUID run data get entity @s UUID[0]

# 解除属性
attribute @s generic.knockback_resistance modifier remove e0edf3eb-5aea-4a18-9b9e-1bde9df27ab5
attribute @s generic.attack_damage modifier remove 12bc0778-5585-498c-a1d4-993156bd3ff6
attribute @s generic.attack_speed modifier remove dd1beb7d-dab5-4449-9c70-9fe03f406c75

# 重置在线时间
scoreboard players set @s online_time 0

# 如果是旁观者或局号不对头：开始旁观
execute if entity @s[team=!playing] run function ltw:main/player_enter_watcher
execute if entity @s[team=playing] unless score @s game_id = $ game_id run function ltw:main/player_enter_watcher
# 如果不是旁观且局号正确：游戏中掉线
execute if entity @s[team=playing] if score @s game_id = $ game_id run function ltw:main/player_enter_rejoin

# 更新 Bossbar
bossbar set ltw:notice players @a
function lib:bossbar/show

# ——————————————
#  小游戏最佳实践
# ——————————————

# 需要有玩家交互
#     即使是间接交互也比没有好，PVP 击退可能是不错的选项，但最好不要纯 PVP 砍人
# 必须能体现玩家的技术或策略
#    单纯的狂点左键或长按 W 是没有意思的，至少要给玩家发挥的空间
# 结果不能仅依靠玩家的熟练度
#    全靠玩家水平不是说不行，而是这不适合「派对游戏」，跑酷就是一个负面例子
# 规则应该尽量简单易学
#    除非必要，不要增加单个游戏的规则复杂度，这会提高学习成本，让新人难以入门
# 在制作时考虑给道具留下发挥空间
#    玩家有远程攻击，有鞘翅，有生命果，有护甲和剑，有击退棒，让它们可以得到应用

# 给予新手教程
#give xiaozhu_zhizui written_book{author: "小猪之最", title: "游艺街 小猪之最改版服新手指南", generation: 0, resolved: 0b, pages: ['[{"text": "游艺街 小猪之最改版服\\n\\n\\n若你未游玩过原版《游艺街》游戏，你可在 "},{"text": "这里","color": "dark_blue","underlined": true,"clickEvent": {"action": "open_url","value": "https://www.mcbbs.net/thread-1421715-1-1.html"}},{"text": " 进行一个简单的了解……\\n"},{"text": "本改版的主作者为 "},{"text": "小猪之最Thepig","color": "dark_blue","underlined": true,"clickEvent": {"action": "open_url","value": "https://space.bilibili.com/381671770"}},{"text": "，本书将介绍本地图被修改过或新添加的游戏机制。\\n准备好后就 "},{"text": "翻到下一页","color": "dark_green","underlined": true,"clickEvent": {"action": "change_page","value": "2"}},{"text": " 开始阅读吧！"}]', '["",{"text": "目录","color": "red","bold": true},"\\n",{"text": "服务器群:"},{"text": "607471033","color": "dark_blue","underlined": true,"clickEvent": {"action": "open_url","value": "https://jq.qq.com/?_wv=1027&k=riOZLTPw"},"hoverEvent": {"action": "show_text","contents": {"text": "加群后需重进一次服务器来完成验证。"}}},"\\n",{"text": "特性修改项","color": "dark_green","underlined": true,"clickEvent": {"action": "change_page","value": "3"}},"\\n",{"text": "游戏模式","color": "dark_green","underlined": true,"clickEvent": {"action": "change_page","value": "4"}},"\\n",{"text": "双倍奖励","color": "dark_green","underlined": true,"clickEvent": {"action": "change_page","value": "5"}},"\\n",{"text": "幻境干扰","color": "dark_green","underlined": true,"clickEvent": {"action": "change_page","value": "6"}},"\\n",{"text": "赌场修改","color": "dark_green","underlined": true,"clickEvent": {"action": "change_page","value": "7"}},"\\n",{"text": "幻境抽取","color": "dark_green","underlined": true,"clickEvent": {"action": "change_page","value": "8"}},"\\n"]']}
