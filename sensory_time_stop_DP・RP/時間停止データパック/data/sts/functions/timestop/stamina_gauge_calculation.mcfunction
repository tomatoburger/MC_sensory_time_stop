#リミット計算 y=0.9722x^2+11.112x+600
execute as @a at @s store result score @s STS_level run data get entity @s XpLevel
execute as @a at @s run scoreboard players operation @s STS_x = @s STS_level
execute as @a at @s run scoreboard players operation @s STS_x *= @s STS_x
execute as @a at @s run scoreboard players operation @s STS_x *= #STS_972 STS_x

#0.9722x^2
execute as @a at @s run scoreboard players operation @s STS_y = @s STS_level
execute as @a at @s run scoreboard players operation @s STS_y *= #STS_11112 STS_x
execute as @a at @s run scoreboard players operation @s STS_x += @s STS_y
#11.112x
execute as @a at @s run scoreboard players operation @s STS_x /= #STS_1000 STS_x
#戻す
execute as @a at @s run scoreboard players operation @s STS_x += #STS_600 STS_x
execute as @a at @s run scoreboard players operation @s STS_stamina_gauge_limit = @s STS_x

#余り
execute as @a at @s run scoreboard players operation @s STS_remainder_check = @s STS_remainder

execute as @a at @s run scoreboard players operation @s STS_i = @s STS_stamina_gauge
execute as @a at @s run scoreboard players operation @s STS_remainder = @s STS_stamina_gauge
execute as @a at @s run scoreboard players operation @s STS_i %= #STS_200 STS_x
execute as @a at @s run scoreboard players operation @s STS_remainder -= @s STS_i
#音
execute as @a at @s unless score @s STS_remainder = @s STS_remainder_check if score @s STS_timestop matches 1 run playsound minecraft:block.fence_gate.close master @s ~ ~ ~ 1 2.0
