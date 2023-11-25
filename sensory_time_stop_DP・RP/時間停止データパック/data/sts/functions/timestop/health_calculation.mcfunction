#計算 これによりSTS_health_calculationは現在の体力-記録された体力になった(体力がプラスになっている場合は0にする)

execute as @e at @s if score @s STS_health matches -999999999.. run scoreboard players operation @s STS_health_calculation = @s STS_realtime_health
execute as @e at @s if score @s STS_health matches -999999999.. run scoreboard players operation @s STS_health_calculation -= @s STS_health
execute as @e at @s if score @s STS_health_calculation matches 0.. run scoreboard players set @s STS_health_calculation 0
execute as @e at @s unless score @s STS_health matches -999999999.. run scoreboard players set @s STS_health_calculation 0
execute as @e at @s if score @s STS_health matches 0 run scoreboard players reset @s STS_health
#反転術式
execute as @e at @s run scoreboard players operation @s STS_health_calculation *= #STS_-1 STS_x

#STS_healthの100倍版
execute as @a at @s run scoreboard players operation @s STS_health_100 = @s STS_health
execute as @a at @s run scoreboard players operation @s STS_health_100 *= #STS_100 STS_x
execute as @e at @s if score @s STS_health matches 0 run scoreboard players reset @s STS_health
#体力調整「プレイヤ―以外」
execute as @e[type=!player,scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s if score @s STS_health_calculation matches 0.. run scoreboard players operation @s STS_tikuseki_damage += @s STS_health_calculation
execute as @e[type=!player,scores={STS_timestop=1},tag=!STS_dont_time_stop] at @s if score @s STS_health_calculation matches 0.. store result entity @s Health int 1 run scoreboard players get @s STS_health

#体力調整「プレイヤ―」
execute as @a[tag=!STS_stop_owner,scores={STS_timestop=1}] at @s if score @s STS_health_calculation matches 0.. run scoreboard players operation @s STS_tikuseki_damage += @s STS_health_calculation
execute as @a[tag=!STS_stop_owner,scores={STS_timestop=1}] at @s if score @s STS_health_calculation matches 0.. run scoreboard players operation @s ScoreToHealth = @s STS_health_100