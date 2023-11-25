#4秒後に召喚
kill @s[type=minecraft:witch]
summon minecraft:lightning_bolt
summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:amethyst_block"},transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,2.0f,1.5f,],translation:[-0.75f,0.0f,-0.75f]},brightness:{block:15,sky:15},Tags:["STS_boss_crystal"]}
execute as @e[type=minecraft:block_display,tag=STS_boss_crystal] at @s run particle minecraft:flash ~ ~0.5 ~ 0 0 0 0 1
execute as @e[type=minecraft:block_display,tag=STS_boss_crystal] at @s unless score @s STS_x matches -999999999.. run scoreboard players set @s STS_x 0
