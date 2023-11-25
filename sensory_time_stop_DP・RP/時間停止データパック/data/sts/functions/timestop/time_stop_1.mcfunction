#額縁
execute as @e[type=minecraft:glow_item_frame,tag=!STS_dont_time_stop] at @s run tag @s add STS_dont_time_stop
execute as @e[type=minecraft:item_frame,tag=!STS_dont_time_stop] at @s run tag @s add STS_dont_time_stop

#スコアボードに代入
execute as @e[scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s unless score @s STS_rot_x matches -999999999.. store result score @s STS_rot_x run data get entity @s Rotation[0]
execute as @e[scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s unless score @s STS_rot_y matches -999999999.. store result score @s STS_rot_y run data get entity @s Rotation[1]
execute as @e[scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s unless score @s STS_mot_x matches -999999999.. store result score @s STS_mot_x run data get entity @s Motion[0] 1000000
execute as @e[scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s unless score @s STS_mot_y matches -999999999.. store result score @s STS_mot_y run data get entity @s Motion[1] 1000000
execute as @e[scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s unless score @s STS_mot_z matches -999999999.. store result score @s STS_mot_z run data get entity @s Motion[2] 1000000
execute as @e[scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s unless score @s STS_health matches -999999999.. store result score @s STS_health run data get entity @s Health 1


tag @e[type=magma_cube,nbt={NoAI:1b},scores={STS_timestop=1},tag=!STS_dont_time_stop] add STS_magmacube_NoAI

tag @e[scores={STS_timestop=1},tag=!STS_dont_time_stop,type=!player,type=!slime,type=!magma_cube,type=!minecraft:glow_item_frame,type=!minecraft:item_frame,nbt=!{NoGravity:0b}] add STS_NoGra
execute as @e[scores={STS_timestop=1},tag=!STS_dont_time_stop,tag=STS_NoGra] at @s run data merge entity @s {NoGravity:1b}

tag @e[scores={STS_timestop=1},tag=!STS_dont_time_stop,type=!player,type=!slime,type=!magma_cube,type=!minecraft:glow_item_frame,type=!minecraft:item_frame,type=!minecraft:creeper,nbt=!{NoAI:1b}] add STS_NoAI
execute as @e[scores={STS_timestop=1},tag=!STS_dont_time_stop,tag=STS_NoAI,type=!minecraft:creeper] at @s run data merge entity @s {NoAI:1b}

execute as @e[scores={STS_timestop=1},tag=!STS_dont_time_stop,type=magma_cube,tag=!STS_magmacube_NoAI] at @s run data merge entity @s {NoAI:1b}

execute as @e[type=tnt,scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s unless score @s STS_Fuse_TNT matches -999999999.. store result score @s STS_Fuse_TNT run data get entity @s Fuse
execute as @e[type=minecraft:creeper,nbt={ignited:1b},scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s unless score @s STS_Fuse_Cre matches -999999999.. store result score @s STS_Fuse_Cre run data get entity @s Fuse




#クリーパー専用フェーズ
execute as @e[type=minecraft:creeper] at @s if entity @a[distance=..10] facing entity @p feet run tag @s add STS_creeper

execute as @e[tag=STS_creeper,scores={STS_timestop=1},tag=!STS_dont_time_stop,tag=!STS_stop] at @s summon text_display run tag @s add STS_creeper_Pos
execute as @e[tag=STS_creeper,scores={STS_timestop=1},tag=!STS_dont_time_stop,tag=!STS_stop] at @s as @e[tag=STS_creeper_Pos,scores={STS_timestop=1},tag=!STS_stop] run tp ~ ~0.000001 ~
execute as @e[tag=STS_creeper,scores={STS_timestop=1},tag=!STS_dont_time_stop,tag=!STS_stop] at @s facing entity @p feet run tp ^ ^ ^-7
execute as @e[tag=STS_creeper,scores={STS_timestop=1},tag=!STS_dont_time_stop,tag=STS_stop,tag=!STS_creeper_2] at @s facing entity @p feet run tp ^ ^ ^7
execute as @e[tag=STS_creeper,scores={STS_timestop=1},tag=!STS_dont_time_stop,tag=STS_stop,tag=!STS_creeper_2] at @s run tp @s @e[limit=1,sort=nearest,type=minecraft:text_display,tag=STS_creeper_Pos]
execute as @e[tag=STS_creeper,scores={STS_timestop=1},tag=!STS_dont_time_stop,tag=!STS_stop] at @s if entity @a[distance=..10] run effect give @e minecraft:resistance 1 255 true

tag @e[type=minecraft:creeper,scores={STS_timestop=1},tag=!STS_dont_time_stop,tag=STS_stop,tag=!STS_creeper_2,nbt=!{NoAI:1b}] add STS_NoAI
execute as @e[scores={STS_timestop=1},tag=!STS_dont_time_stop,tag=STS_NoAI,type=minecraft:creeper] at @s run data merge entity @s {NoAI:1b}
kill @e[type=text_display,tag=STS_creeper_Pos,scores={STS_timestop=1},tag=!STS_dont_time_stop,tag=STS_stop]

#shader用
execute as @a[scores={STS_timestop=1}] at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 0.0039215686274509803921568627451 1 0 force @s

#時計
execute as @a[scores={STS_timestop=1},tag=!STS_stop] at @s run function sts:timestop/time_stop_watch_true

#タグ
execute as @e[type=creeper,scores={STS_timestop=1},tag=!STS_dont_time_stop,tag=STS_stop] at @s run tag @s add STS_creeper_2
#順番大事
execute as @e[scores={STS_timestop=1},tag=!STS_dont_time_stop,tag=!STS_stop] at @s run tag @s add STS_stop


#その他
