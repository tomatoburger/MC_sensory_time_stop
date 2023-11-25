execute as @e[tag=STS_boss_witch] at @s unless score @s STS_timestop matches 1 if entity @a[distance=..15] run scoreboard players add @s STS_boss_timer_1 1
execute as @e[tag=STS_boss_witch,tag=STS_dont_time_stop] at @s if score @s STS_timestop matches 1 if entity @a[distance=..15] run scoreboard players add @s STS_boss_timer_1 1
execute as @e[tag=STS_boss_witch] at @s if score @s STS_boss_timer_1 matches 100.. run function sts:boss/atack/witch_atack_random
execute as @e[tag=STS_boss_witch] at @s run function sts:boss/atack/witch_time_stop_update
execute as @e[tag=STS_boss_witch] at @s run particle minecraft:enchant ~ ~ ~ 1 1 1 1 5
