$execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s store result score @s STS_knife_random_x run random value $(x)
$execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s store result score @s STS_knife_random_y run random value $(y)
$execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s store result score @s STS_knife_random_z run random value $(z)

execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s store result score @s STS_knife_random_Rot run random value -25..25
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s store result score @s STS_knife_Rot run data get entity @s Rotation[0]
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s run scoreboard players operation @s STS_knife_Rot += @s STS_knife_random_Rot

execute if score @s STS_sneak matches 1 run execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @s STS_knife_Rot
execute if score @s STS_sneak matches 1 run execute as @e[tag=STS_knife] at @s run tp @s ^ ^ ^0.5

execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_x matches 1 run tp @s ^0.1 ^ ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_x matches 2 run tp @s ^0.2 ^ ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_x matches 3 run tp @s ^0.3 ^ ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_x matches 4 run tp @s ^0.4 ^ ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_x matches 5 run tp @s ^0.5 ^ ^

execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_x matches -1 run tp @s ^-0.1 ^ ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_x matches -2 run tp @s ^-0.2 ^ ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_x matches -3 run tp @s ^-0.3 ^ ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_x matches -4 run tp @s ^-0.4 ^ ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_x matches -5 run tp @s ^-0.5 ^ ^

execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_y matches 1 run tp @s ^ ^0.1 ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_y matches 2 run tp @s ^ ^0.2 ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_y matches 3 run tp @s ^ ^0.3 ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_y matches 4 run tp @s ^ ^0.4 ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_y matches 5 run tp @s ^ ^0.5 ^

execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_y matches -1 run tp @s ^ ^-0.1 ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_y matches -2 run tp @s ^ ^-0.2 ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_y matches -3 run tp @s ^ ^-0.3 ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_y matches -4 run tp @s ^ ^-0.4 ^
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_y matches -5 run tp @s ^ ^-0.5 ^

execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_z matches 1 run tp @s ^ ^ ^0.1
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_z matches 2 run tp @s ^ ^ ^0.2
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_z matches 3 run tp @s ^ ^ ^0.3
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_z matches 4 run tp @s ^ ^ ^0.4
execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s if score @s STS_knife_random_z matches 5 run tp @s ^ ^ ^0.5

