#スポーン直後は無敵だけど、クリエ中なら殺せます

summon minecraft:witch ~ ~ ~ {PersistenceRequired:1b,DeathLootTable:"sts:boss_witch",Tags:["STS_boss_witch_spawn"],CustomName:'{"text":"時間魔法:古代の魔女"}'}

execute as @e[tag=STS_boss_witch_spawn] at @s as @a[distance=..100] run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.6 1.7
execute as @e[tag=STS_boss_witch_spawn] at @s facing entity @p eyes run tp ~ ~ ~
execute as @e[tag=STS_boss_witch_spawn] at @s store result entity @s Rotation[1] float 0.0 run tell @s 0.0
execute as @e[tag=STS_boss_witch_spawn] at @s run particle minecraft:flash ~ ~0.5 ~ 0 0 0 0 1
execute as @e[tag=STS_boss_witch_spawn] at @s run scoreboard players set @s STS_stamina_gauge_limit 100
execute as @e[tag=STS_boss_witch_spawn] at @s run scoreboard players set @s STS_stamina_gauge 100
#体力変更
attribute @e[tag=STS_boss_witch_spawn,limit=1] minecraft:generic.max_health base set 100
attribute @e[tag=STS_boss_witch_spawn,limit=1] minecraft:generic.movement_speed base set 1
attribute @e[tag=STS_boss_witch_spawn,limit=1] minecraft:generic.armor base get 1.8
effect give @e[tag=STS_boss_witch_spawn,limit=1] minecraft:instant_health 10 1

#ボスバー
bossbar add witch_hp "時間魔法:古代の魔女"
execute as @e[tag=STS_boss_witch_spawn] at @s run bossbar set minecraft:witch_hp players @a[distance=..70]
bossbar set minecraft:witch_hp max 100
bossbar set minecraft:witch_hp style notched_6

#先制攻撃
execute as @e[tag=STS_boss_witch_spawn] at @s run function sts:boss/atack/witch_time_stop
#タグ更新
tag @e[tag=STS_boss_witch_spawn] add STS_boss_witch
tag @e[tag=STS_boss_witch] remove STS_boss_witch_spawn


#クリスタル破壊
execute if entity @s[type=minecraft:block_display,tag=STS_boss_crystal] run kill @s
