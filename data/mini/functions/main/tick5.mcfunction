
# 触发单个模块
execute if score $mini_type mem matches 1 run function mini:parkour/tick5
execute if score $mini_type mem matches 3 run function mini:hotpm/tick5
execute if score $mini_type mem matches 5 run function mini:phantom/tick5
execute if score $mini_type mem matches 6 run function mini:diamond/tick5

# 同步生命值
scoreboard players reset * temp
scoreboard players set @a[gamemode=!spectator] temp 20
execute as @a[gamemode=!spectator,scores={health=1..}] run scoreboard players operation @s temp = @s health
execute as @a run scoreboard players operation @s health_disp = @s temp
execute as @a run scoreboard players operation @s mini_heart_disp = @s mini_heart
execute as @a run scoreboard players operation @s mini_heart_disp += @s mini_heart