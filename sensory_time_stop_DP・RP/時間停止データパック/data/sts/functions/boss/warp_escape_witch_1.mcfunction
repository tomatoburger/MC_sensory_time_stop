execute as @a[distance=..20] run playsound block.amethyst_cluster.break master @s ~ ~ ~ 1 0.5
execute as @a[distance=..20] run playsound block.amethyst_cluster.break master @s ~ ~ ~ 1 0.5
execute anchored eyes positioned ^ ^ ^0.8 run particle minecraft:flash ~ ~0 ~ 0 0 0 0 1
summon minecraft:enderman ~ ~ ~ {NoAI:1,PortalCooldown:1,Tags:["STS_warpman"]}
ride @s mount @e[tag=STS_warpman,limit=1,sort=nearest]
damage @e[tag=STS_warpman,limit=1,sort=nearest] 1 minecraft:arrow
effect give @s minecraft:slowness 1 10 true
effect give @s minecraft:invisibility 3 1 true
effect give @s minecraft:regeneration 3 3 true