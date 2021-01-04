
# 更新钻石数量
execute as @a[team=playing] store result score @s diamond run clear @s diamond 0
execute if score $countdown mem matches ..30 run effect give @a glowing 2 0
effect give @a[scores={diamond=1..}] glowing 2 0

# 显示提示
execute as @a[scores={diamond=1..},tag=!diamond_got] run tellraw @a ["",{"text": ">> ","color":"aqua","bold": true},{"selector": "@s"},{"text":" 获得了闪闪发光的钻石!","color":"aqua"}]
execute as @a[scores={diamond=1..},tag=!diamond_got] as @a[distance=1..] run function lib:sounds/hit
tag @a remove diamond_got
tag @a[scores={diamond=1..}] add diamond_got