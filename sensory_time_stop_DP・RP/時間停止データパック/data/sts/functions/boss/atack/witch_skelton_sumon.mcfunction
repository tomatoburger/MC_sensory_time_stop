summon minecraft:wither_skeleton ~1 ~ ~1 {Tags:["witch_minion"],Health:7b,DeathLootTable:"minecraft:empty",Attributes:[{Base: 0.2d , Name:"minecraft:generic.movement_speed"}]}
summon minecraft:wither_skeleton ~-1 ~ ~-1 {Tags:["witch_minion"],Health:7b,DeathLootTable:"minecraft:empty",Attributes:[{Base: 0.2d , Name:"minecraft:generic.movement_speed"}]}
summon minecraft:skeleton ~-1 ~ ~1 {Tags:["witch_minion"],HandItems:[{id:"minecraft:bow", Count:1b}],Health:30b,DeathLootTable:"minecraft:empty",Attributes:[{Base: 0.3d , Name:"minecraft:generic.movement_speed"}]}
summon minecraft:skeleton ~1 ~ ~-1 {Tags:["witch_minion"],HandItems:[{id:"minecraft:bow", Count:1b}],Health:30b,DeathLootTable:"minecraft:empty",Attributes:[{Base: 0.3d , Name:"minecraft:generic.movement_speed"}]}
execute as @a[distance=..20] run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
execute as @a[distance=..20] run playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~ 0.5 1.5
particle minecraft:flame ~ ~ ~ 1 1 1 0 10