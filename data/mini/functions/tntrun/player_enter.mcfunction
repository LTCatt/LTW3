# 单个玩家开始小游戏时执行
title @s clear
gamemode adventure @s

# 状态效果
effect clear @s
effect give @s saturation 1000000 0 true
effect give @s instant_health 10 0 true
effect give @s night_vision 1000000 0 true
effect give @s resistance 1000000 4 true

# 关闭伤害
gamerule fallDamage false
gamerule fireDamage false

# 传送玩家
spreadplayers 1011.5 2011.5 7 7 false @s
schedule function mini:tntrun/player_enter2 1t replace
# schedule: tp @a ~ ~-3 ~

# 两秒后才开始 TNT 掉落
tag @s remove tntrun_pc
schedule function mini:tntrun/player_enter3 2s replace
# schedule: tag @a add tntrun_pc