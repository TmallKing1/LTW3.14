tag @s add initialized
data merge entity @s {Invulnerable: 1b, NoAI: 1b, Enabled: 0b}
item replace entity @s container.3 with ender_eye{hopper_item: 1b}
item replace entity @s container.4 with enchanted_book{hopper_item: 1b}
item modify entity @s container.3 mini:hopper/ender_eye
item modify entity @s container.4 mini:hopper/enchanted_book