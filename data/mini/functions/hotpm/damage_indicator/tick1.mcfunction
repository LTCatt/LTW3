# 检测玩家对玩家造成0点以上伤害
execute if entity @a[tag=damage_dealt] if entity @a[tag=damage_taken,scores={damage_taken=0..}] unless entity @a[tag=damage_dealt,tag=damage_taken] run function mini:hotpm/damage_indicatorplayer_hurt_player

# 检测玩家对玩家造成0点伤害
execute if entity @a[tag=damage_dealt] if entity @a[tag=damage_taken] unless entity @a[scores={damage_taken=0..}] unless entity @a[tag=damage_dealt,tag=damage_taken] run function mini:hotpm/damage_indicatorplayer_hurt_player2

# 检测玩家对自己造成0点以上伤害
execute if entity @a[tag=damage_dealt,tag=damage_taken,scores={damage_taken=0..}] run function mini:hotpm/damage_indicatorplayer_hurt_self

# 检测玩家对自己造成0点伤害
execute if entity @a[tag=damage_dealt,tag=damage_taken] unless entity @a[tag=damage_dealt,tag=damage_taken,scores={damage_taken=0..}] run function mini:hotpm/damage_indicatorplayer_hurt_self2

# 检测玩家因特殊原因受到0点以上伤害
execute if entity @a[tag=damage_taken,scores={damage_taken=0..}] unless entity @a[tag=damage_dealt] run function mini:hotpm/damage_indicatorself_hurt

# 检测玩家因特殊原因受到0点伤害
execute if entity @a[tag=damage_taken] unless entity @a[tag=damage_dealt] unless entity @a[tag=damage_taken,scores={damamge_taken=0..}] run function mini:hotpm/damage_indicatorself_hurt2

# 重置tag
tag @a[tag=damage_taken] remove damage_taken
tag @a[tag=damage_dealt] remove damage_dealt

# 重置分数
scoreboard players set @a[scores={damage_taken=0..}] damage_counter1 0
scoreboard players set @a[scores={damage_taken=0..}] damage_counter2 0
scoreboard players reset @a[scores={damage_taken=0..}] damage_taken