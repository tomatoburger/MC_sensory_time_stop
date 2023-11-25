
execute if score @s STS_timestop matches 1 if entity @s[tag=STS_stop_owner] run scoreboard players remove @s STS_stamina_gauge 200
advancement revoke @s only sts:hurt_entity