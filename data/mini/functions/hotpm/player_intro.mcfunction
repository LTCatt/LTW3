# 向单个玩家展示小游戏介绍
tp @s[tag=!debug] 1022 25 3038 180 20
tellraw @s ["",{"text":"\n >> 炸弹狂魔 >>\n\n","color":"gold","bold":true}, " 在炸弹爆炸前攻击他人, 将炸弹扔到其他人身上!\n"]
tellraw @s ["",{"text": " <生命淘汰制> ","color":"red","bold": true}, {"text":"你有 3 条生命, 生命耗尽后即被淘汰。","color":"gray"}]
tellraw @s ["",{"text": " <PVP> ","color":"light_purple","bold": true}, {"text":"攻击其他玩家可以转移炸弹, 远程伤害同样有效。","color":"gray"}]
tellraw @s ["",{"text": " <额外道具> ","color":"aqua","bold": true}, {"text":"小游戏地图中存在 2 个白色道具。","color":"gray"}]
tellraw @s ["",{"text": " <原型> ","color":"gold","bold": true}, {"text":"此游戏目前仅用于玩法测试, 尚未进行修缮。","color":"gray"}]
tellraw @s ""

effect give @s night_vision 1000000 0 true