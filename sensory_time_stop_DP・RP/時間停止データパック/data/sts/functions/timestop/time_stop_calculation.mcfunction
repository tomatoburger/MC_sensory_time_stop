execute as @e[type=!player] at @s if entity @a[distance=..70,scores={STS_timestop=1}] run scoreboard players set @s STS_timestop 1
execute as @e[type=!player] at @s unless entity @a[distance=..70,scores={STS_timestop=1}] run scoreboard players reset @s STS_timestop

execute as @a at @s if entity @a[distance=..70,scores={STS_timestop=1,STS_stamina_gauge=0..},tag=STS_stop_owner] run scoreboard players set @s STS_timestop 1
execute as @a[scores={STS_timestop=1}] at @s unless entity @a[distance=..70,scores={STS_timestop=1,STS_stamina_gauge=0..},tag=STS_stop_owner] run scoreboard players reset @s STS_timestop
execute as @a[scores={STS_timestop=1},tag=STS_stop_owner] at @s run tp ~ ~ ~