execute if entity @s[tag=STS_NoAI] run data merge entity @s {NoAI:0b}
tag @s remove STS_NoAI

execute if entity @s[tag=STS_NoGra] run data merge entity @s {NoGravity:0b}
tag @s remove STS_NoGra
execute if entity @s[type=magma_cube,tag=STS_magmacube_NoAI] at @s run data merge entity @s {NoAI:0b}
tag @s remove STS_magmacube_NoAI
execute as @s[type=!minecraft:glow_item_frame,type=!minecraft:item_frame] if score @s STS_mot_x matches -999999999.. run execute store result entity @s Motion[0] double 0.000001 run scoreboard players get @s STS_mot_x
execute as @s[type=!minecraft:glow_item_frame,type=!minecraft:item_frame] if score @s STS_mot_y matches -999999999.. run execute store result entity @s Motion[1] double 0.000001 run scoreboard players get @s STS_mot_y
execute as @s[type=!minecraft:glow_item_frame,type=!minecraft:item_frame] if score @s STS_mot_z matches -999999999.. run execute store result entity @s Motion[2] double 0.000001 run scoreboard players get @s STS_mot_z

#タグ消し
tag @s remove STS_Fuse_Cre
tag @s remove STS_Fuse_TNT
tag @s remove STS_creeper
tag @s remove STS_stop
tag @s remove STS_creeper_2

#スコアボードリセット
scoreboard players reset @s STS_rot_x
scoreboard players reset @s STS_rot_y
scoreboard players reset @s STS_Fuse_Cre
scoreboard players reset @s STS_Fuse_TNT
scoreboard players reset @s STS_health

#時計
execute if entity @s[type=minecraft:player] run function sts:timestop/time_stop_watch_false
