execute if entity @s[scores={STS_timestop=1},tag=STS_stop_owner] run function sts:timestop/time_stop_click_false

execute unless entity @s[scores={STS_timestop=1}] if score @s STS_stamina_gauge = @s STS_stamina_gauge_limit run function sts:timestop/time_stop_click_true

execute if entity @s[scores={STS_timestop=1,STS_stamina_gauge=1..},tag=!STS_stop_owner] run function sts:timestop/time_stop_click_true

scoreboard players set @s STS_carrot_click 0