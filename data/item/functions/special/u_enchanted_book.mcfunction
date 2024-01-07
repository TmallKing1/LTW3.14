execute if data entity @s SelectedItem unless data entity @s SelectedItem{tag:{game_item: 1b}} at @s run function item:special/u_enchanted_book_1
execute unless data entity @s SelectedItem at @s run function item:special/u_enchanted_book_0
execute if data entity @s SelectedItem{tag:{game_item: 1b}} run function item:special/u_enchanted_book_2
