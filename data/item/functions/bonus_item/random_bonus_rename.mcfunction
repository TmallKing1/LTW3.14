data modify block 0 1 0 front_text.messages[0] set value '[{"text":"随机道具：","color":"#FFE9A1"},{"nbt": "item_buff[0].tag.item_name","storage":"item:bonus","interpret": true}]'
data modify storage item:bonus item_buff[0].tag.item_name set from block 0 1 0 front_text.messages[0]
