#スコアボード読み込み
execute as @e[type=!minecraft:glow_item_frame,type=!minecraft:item_frame,scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s if score @s STS_rot_x matches -999999999.. run execute store result entity @s Rotation[0] float 1 run scoreboard players get @s STS_rot_x
execute as @e[type=!minecraft:glow_item_frame,type=!minecraft:item_frame,scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s if score @s STS_rot_y matches -999999999.. run execute store result entity @s Rotation[1] float 1 run scoreboard players get @s STS_rot_y
execute as @e[type=!minecraft:glow_item_frame,type=!minecraft:item_frame,scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s if score @s STS_mot_z matches -999999999.. if score @s STS_mot_y matches -999999999.. if score @s STS_mot_x matches -999999999.. run data merge entity @s {Motion:[0.0d, 0.0d, 0.0d]}

execute as @e[type=minecraft:creeper,scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s if score @s STS_Fuse_Cre matches -999999999.. run execute store result entity @s Fuse double 1 run scoreboard players get @s STS_Fuse_Cre
execute as @e[type=minecraft:tnt,scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s if score @s STS_Fuse_TNT matches -999999999.. run execute store result entity @s Fuse double 1 run scoreboard players get @s STS_Fuse_TNT
execute as @e[scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s if score @s STS_Fuse_Cre matches -999999999.. run scoreboard players add @s STS_Fuse_Cre 1

#スライム族専用フェーズ
effect give @e[type=slime,scores={STS_timestop=1},tag=!STS_dont_time_stop] minecraft:weakness 1 255 true

#エフェクト
execute as @e[type=!player,scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s run effect give @s minecraft:fire_resistance 1 1 true
execute as @a[tag=!STS_stop_owner,scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s run effect give @s minecraft:fire_resistance 1 1 true
#パーティクル
execute as @a[scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s run particle minecraft:instant_effect ~ ~0 ~ 4 4 4 0 4
execute as @a[scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s run particle minecraft:end_rod ~ ~0 ~ 7 7 7 0 5
execute as @e at @s run scoreboard players operation @s STS_health_calculation *= #STS_-1 STS_x
#体力調整
function sts:timestop/health_calculation

#終わったか検知
execute as @e[tag=STS_stop] at @s unless score @s STS_timestop matches 1 run function sts:timestop/time_stop_end
execute as @e[tag=STS_stop] at @s if entity @s[tag=STS_dont_time_stop] run function sts:timestop/time_stop_end