# 单个玩家开始小游戏时执行
tag @s[tag=!watcher] add mini_running
scoreboard players set @s[tag=!watcher] mini_score 0
scoreboard players set @s[tag=watcher] mini_score -9999999

execute if score $mini_type mem matches 1 run function mini:parkour/player_enter
execute if score $mini_type mem matches 2 run function mini:tntrun/player_enter
execute if score $mini_type mem matches 3 run function mini:hotpm/player_enter