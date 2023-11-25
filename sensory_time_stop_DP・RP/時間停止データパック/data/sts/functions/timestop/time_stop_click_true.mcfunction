execute anchored eyes positioned ^ ^ ^0.8 run particle minecraft:flash ~ ~0 ~ 0 0 0 0 1
playsound minecraft:entity.experience_orb.pickup master @a[distance=..40] ~ ~ ~ 1 1
playsound minecraft:entity.wither.spawn master @a[distance=..40] ~ ~ ~ 0.6 1.7
scoreboard players set @s STS_timestop 1
tag @s add STS_stop_owner
