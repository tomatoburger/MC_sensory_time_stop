#スタミナゲージ上下
execute if score @s STS_timestop matches 1 run scoreboard players remove @s STS_stamina_gauge 1
execute unless score @s STS_timestop matches 1 run scoreboard players add @s STS_stamina_gauge 1
#タイムストップ
execute if score @s STS_boss_time_stop matches 1 unless score @s STS_stamina_gauge matches ..0 as @e[distance=..70] run scoreboard players set @s STS_timestop 1
execute if score @s STS_boss_time_stop matches 1 if score @s STS_stamina_gauge matches ..0 run scoreboard players set @s STS_boss_time_stop 0
#上限設定
execute if score @s STS_stamina_gauge > @s STS_stamina_gauge_limit run scoreboard players set @s STS_stamina_gauge 100
execute if score @s STS_stamina_gauge matches ..0 run scoreboard players set @s STS_stamina_gauge 0
#動けるか
execute if score @s STS_timestop matches 1 if score @s STS_stamina_gauge matches 1.. run tag @s add STS_dont_time_stop
execute if score @s STS_timestop matches 1 unless score @s STS_stamina_gauge matches 1.. run tag @s remove STS_dont_time_stop

#HP
execute store result score @s STS_boss_HP run data get entity @s Health