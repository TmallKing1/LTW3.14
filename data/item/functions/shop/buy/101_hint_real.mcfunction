# 随机
execute store result score $random mem run random value 1..20

# 显示提示
execute if score $random mem matches 1 run tellraw @s "「钓鱼竿可以直接把物品勾过来，用它抢奖励物资可方便了。哼唧。」"
execute if score $random mem matches 2 run tellraw @s "「哼唧，你可以用钓鱼竿把人勾下悬崖，或者用来钓……哼哼，『鱼』？」"
execute if score $random mem matches 3 run tellraw @s "「继续沿着你来时的那条密道，抬头望望，能找到一位神秘老板……」"
execute if score $random mem matches 4 run tellraw @s "「从蛛网密布的密道尽头，沿灰色珊瑚指引，就能窥见创世的秘密。」"
execute if score $random mem matches 5 run tellraw @s "「听说用指令之力『造访』商店，似乎会发生奇怪的事情……哼唧。」"
execute if score $random mem matches 6 run tellraw @s "「我听说，商店的旗帜和遗迹的立柱似乎藏着什么秘密来着，哼唧。」"
execute if score $random mem matches 7 run tellraw @s "「哼唧，如果在踏上钻石块的同时起跳，可以让你飞得更高！」"
execute if score $random mem matches 8 run tellraw @s "「我不知道为什么商店里有一只猪……哼唧！难道猪灵是猪变的？」"
execute if score $random mem matches 9 run tellraw @s "「哼唧，我记得似乎有个能快速上到商店二楼的方法……哼唧，忘了。」"
execute if score $random mem matches 10 run tellraw @s "「那两只村民没法像我们一样从柜台上翻出去，那是怎么下班的？」"
execute if score $random mem matches 11 run tellraw @s "「我曾经爬一根被诅咒过的垂泪藤，哼唧，然后被送了回来……」"
execute if score $random mem matches 12 run tellraw @s "「只要拉的力度足够大，就能把矿车中的人瞬间拉到自己面前。哼唧。」"
execute if score $random mem matches 13 run tellraw @s "「附魔的剪刀可以有效地对付僵尸和幻翼，而且还被我削弱过，哼哼。」"
execute if score $random mem matches 14 run tellraw @s ["「哼唧，无冷却的木剑其实来自",{"text": "『JK魔改竞技场』","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "由 JK137 等玩家所制作的《方块竞技场》魔改版。\n点击跳转其 GitHub 页面。"}},"clickEvent": {"action": "open_url","value": "https://github.com/jk-block-arena/JK-Block-Arena"}},"的有用之人职业……」"]
execute if score $random mem matches 15 run tellraw @s ["「哼唧，我没事的时候喜欢玩",{"text": "『方块竞技场』","underlined": true,"hoverEvent": {"action": "show_text","value": {"text": "由龙腾猫跃所制作的另一张娱乐向 PVP 地图。"}}},"，你也可以去试试。」"]
execute if score $random mem matches 16 run tellraw @s "「有些人玩游戏总会忘记幻境干扰效果……哼唧！这样下去是会吃亏的！」"
execute if score $random mem matches 17 run tellraw @s "「你凝视虚空之时，虚空与钻石也在凝视你……哼唧！这是我听别人说的。」"
execute if score $random mem matches 18 run tellraw @s "「你问我为什么是击退『鱼』？哼唧，因为那是从 Hypixel 拿过来的。」"
execute if score $random mem matches 19 run tellraw @s "「无论你用什么方式，只要对其他人造成伤害就能够把炸弹扔到别人头上。」"
execute if score $random mem matches 20 run tellraw @s "「你知道『错误之塔』吗？如果你要去那得先找到一个隐蔽的按钮……」"