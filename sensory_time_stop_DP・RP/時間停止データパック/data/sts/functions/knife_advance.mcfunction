execute as @e[type=minecraft:item_display,tag=STS_knife_throw] at @s unless entity @a[distance=..70,scores={STS_timestop=1}] run tp @s ^ ^ ^0.5
execute if score #STS_gamelule STS_knife_break matches 1 run execute as @e[type=minecraft:item_display,tag=STS_knife_throw] at @s run function sts:knife_break_block

execute as @e[type=minecraft:item_display,tag=STS_knife_throw] at @s unless block ~ ~ ~ #sts:through run function sts:destroy_knife

execute as @e[type=minecraft:item_display,tag=STS_knife_throw] at @s unless entity @a[distance=..70,scores={STS_timestop=1}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,dy=0,dz=0,limit=1,sort=nearest,type=!#sts:not_target] run function sts:hit_knife