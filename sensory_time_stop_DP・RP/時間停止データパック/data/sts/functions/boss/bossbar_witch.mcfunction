execute store result bossbar minecraft:witch_hp value run data get entity @e[tag=STS_boss_witch,limit=1] Health 1
execute as @e[tag=STS_boss_witch_spawn] at @s run bossbar set minecraft:witch_hp players @a[distance=..70]
execute unless entity @e[tag=STS_boss_witch,limit=1] run bossbar set minecraft:witch_hp visible false
execute if entity @e[tag=STS_boss_witch,limit=1] run bossbar set minecraft:witch_hp visible true