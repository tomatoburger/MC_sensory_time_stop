#タグとか
execute as @a at @s if score @s STS_timestop matches 1 summon minecraft:text_display run tag @s add STS_Pos_player

execute as @a at @s if score @s STS_timestop matches 1 unless entity @e[type=minecraft:text_display,tag=STS_Pos_player_D,distance=..0.001] run tag @s add STS_player_move
execute as @a at @s if score @s STS_timestop matches 1 if entity @e[type=minecraft:text_display,tag=STS_Pos_player_D,distance=..0.001] run tag @s remove STS_player_move
execute as @a at @s unless score @s STS_timestop matches 1 run tag @s remove STS_player_move


kill @e[type=minecraft:text_display,tag=STS_Pos_player_D]
execute as @e[type=minecraft:text_display,tag=STS_Pos_player] at @s run tag @s add STS_Pos_player_D


#本編
execute as @a at @s unless score @s STS_timestop matches 1 run scoreboard players add @s STS_stamina_gauge 10

execute as @a at @s if score @s STS_timestop matches 1 if entity @s[tag=STS_player_move,tag=!STS_sneaking,tag=STS_stop_owner] run scoreboard players remove @s STS_stamina_gauge 10
execute as @a at @s if score @s STS_timestop matches 1 if entity @s[tag=STS_player_move,tag=STS_sneaking,tag=STS_stop_owner] run scoreboard players remove @s STS_stamina_gauge 5

execute as @a at @s if score @s STS_timestop matches 1 unless entity @s[tag=STS_player_move] if entity @s[tag=STS_stop_owner] run scoreboard players remove @s STS_stamina_gauge 2

#オーナーはく奪
execute as @a at @s if score @s STS_timestop matches 1 if score @s STS_stamina_gauge matches ..0 run tag @s remove STS_stop_owner 


#リミット計算
function sts:timestop/stamina_gauge_calculation
execute as @a at @s run scoreboard players operation @s STS_stamina_gauge_limit_second = @s STS_stamina_gauge_limit
execute as @a at @s run scoreboard players operation @s STS_stamina_gauge_limit_second /= #STS_200 STS_x
#上限適応
execute as @a at @s if score @s STS_stamina_gauge > @s STS_stamina_gauge_limit run scoreboard players operation @s STS_stamina_gauge = @s STS_stamina_gauge_limit
execute as @a at @s if score @s STS_stamina_gauge matches ..-1 run scoreboard players set @s STS_stamina_gauge 0