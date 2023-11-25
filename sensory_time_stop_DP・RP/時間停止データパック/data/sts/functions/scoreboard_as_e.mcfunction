execute if score @s STS_use_bow matches 1.. as @s run function sts:destroy_arrow
execute if score @s STS_sneak matches 0 run tag @s remove STS_sneaking
execute if score @s STS_sneak matches 1.. run function sts:score_sneak

execute store result score @s STS_max_health run attribute @s generic.max_health get

execute if score @s STS_deathCount matches 1.. run scoreboard players set @s STS_tikuseki_damage 0
execute if score @s STS_deathCount matches 1.. run scoreboard players set @s STS_deathCount 0