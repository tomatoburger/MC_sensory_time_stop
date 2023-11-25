effect give @s minecraft:invisibility 15 1 true
execute as @a[distance=..20] run effect give @s minecraft:blindness 3 1 false
execute as @a[distance=..20] run playsound minecraft:block.glass.break master @s ~ ~ ~ 1 1
execute as @a[distance=..20] run playsound minecraft:entity.illusioner.cast_spell master @s ~ ~ ~ 0.5 1.5
scoreboard players set @s STS_boss_timer_1 30
