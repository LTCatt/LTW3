# 土豆倒计时
execute if score $countdown mem matches 1.. run title @a actionbar [{"text":"土豆爆炸: ","color":"red","bold": true},{"score": { "name": "$countdown","objective": "mem"}}]

# 给持有者播放音效
playsound minecraft:entity.creeper.primed player @a[tag=pm_hoding]

# 爆炸
execute if score $countdown mem matches 0 as @a[tag=pm_hoding] run function mini:hotpm/pm_boom