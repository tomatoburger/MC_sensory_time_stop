#条件を満たした者にtagを与える
execute as @e[type=!player,type=!minecraft:text_display] at @s unless score @s STS_timestop matches 1 run tag @s add STS_tikuseki
execute as @a at @s unless score @s STS_timestop matches 1 run tag @s add STS_tikuseki
execute as @a[scores={STS_timestop=1}] at @s if entity @s[tag=STS_stop_owner] run tag @s add STS_tikuseki

#コマンド-エンドラ以外
execute as @e[tag=STS_tikuseki,type=!minecraft:ender_dragon] at @s if score @s STS_tikuseki_damage matches 1 run damage @s 1 minecraft:out_of_world
execute as @e[tag=STS_tikuseki,type=!minecraft:ender_dragon] at @s if score @s STS_tikuseki_damage matches 2.. run damage @s 2 minecraft:out_of_world
execute as @e[tag=STS_tikuseki,type=!minecraft:ender_dragon] at @s run scoreboard players remove @s STS_tikuseki_damage 2
execute as @e[tag=STS_tikuseki,type=!minecraft:ender_dragon] at @s if score @s STS_tikuseki_damage >= @s STS_max_health run effect give @s minecraft:weakness 2 255

#コマンド-エンドラ
execute as @e[tag=STS_tikuseki,type=minecraft:ender_dragon] at @s if score @s STS_tikuseki_damage matches 1 run damage @s 1 minecraft:arrow by @p
execute as @e[tag=STS_tikuseki,type=minecraft:ender_dragon] at @s if score @s STS_tikuseki_damage matches 2.. run damage @s 2 minecraft:arrow by @p
execute as @e[tag=STS_tikuseki,type=minecraft:ender_dragon] at @s run scoreboard players remove @s STS_tikuseki_damage 2
execute as @e[tag=STS_tikuseki,type=minecraft:ender_dragon] at @s if score @s STS_tikuseki_damage >= @s STS_max_health run effect give @s minecraft:weakness 2 255

#パーティクル
execute as @e[tag=STS_tikuseki] at @s if score @s STS_tikuseki_damage matches 1.. run particle minecraft:crit ~ ~0.5 ~ 1 1 1 1 5 normal
execute as @e[tag=STS_tikuseki] at @s if score @s STS_tikuseki_damage matches 1.. run particle minecraft:sweep_attack ~ ~0.5 ~ 1 1 1 1 3 normal
#蓄積ダメージが0以下になったらリセットさせる
execute as @e at @s if score @s STS_tikuseki_damage matches ..0 run scoreboard players reset @s STS_tikuseki_damage

#tagを奪う
tag @e remove STS_tikuseki