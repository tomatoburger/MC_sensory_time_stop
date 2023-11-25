scoreboard players set @s STS_boss_time_stop 1
execute as @a[distance=..20] run playsound block.amethyst_cluster.break master @s ~ ~ ~ 1 0.5
execute as @a[distance=..20] run playsound block.amethyst_cluster.break master @s ~ ~ ~ 1 0.5
execute anchored eyes positioned ^ ^ ^0.8 run particle minecraft:flash ~ ~0 ~ 0 0 0 0 1
scoreboard players set @s STS_boss_timer_1 140