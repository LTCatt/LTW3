
# 清理现有选择物品
clear @s lime_wool{lobby_item:1b}
clear @s light_gray_wool{lobby_item:1b}
kill @e[type=item,nbt={Item:{id:"minecraft:light_gray_wool",tag:{lobby_item:1b}}}]
# 弹出玩家放在第一格上的物品
execute if data entity @s Inventory[{Slot:0b}] run scoreboard players set @s temp 0
execute if data entity @s Inventory[{Slot:0b}] at @s run function lib:pop_slot/return_item
# 设置新的选择物品
replaceitem entity @s hotbar.0 lime_wool{lobby_item:1b,display:{Name:'[{"text":"","color":"green","italic":false},"准备模式 (按 ",{"keybind":"key.drop"}," 以旁观)"]',Lore:['[{"text":"","color":"gray","italic":false},"你将在下一局参与游戏"]']}}

# 设置队伍
team join hub_play @s
# 播放音效
execute at @s run function lib:sounds/hit