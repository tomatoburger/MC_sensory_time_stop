scoreboard players operation @s STS_y = @s STS_x
scoreboard players operation @s STS_y *= @s STS_x
execute store result entity @s Rotation[0] float 0.5 run scoreboard players get @s STS_y
execute if score @s STS_x matches -999999999.. run scoreboard players add @s STS_x 1
execute if score @s STS_x matches 80.. run function sts:boss/summon_time_stop_witch