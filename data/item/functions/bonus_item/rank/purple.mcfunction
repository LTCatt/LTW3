# 生成紫色品质的物品实体

loot spawn ~ ~ ~ loot item:gameparty/ranks/purple
data merge entity @e[distance=..1,limit=1,type=item] {Tags:["new_item"],Age:-32768,PickupDelay:0,NoGravity:1,Invulnerable:1,CustomNameVisible:1,Glowing:1,Motion:[0,0,0]}
execute as @e[tag=new_item] run data modify entity @s CustomName set from entity @s Item.tag.item_name
team join purple @e[tag=new_item]
tag @e[tag=new_item] add item_purple
tag @e[tag=new_item] add item_new
tag @e[tag=new_item] remove new_item