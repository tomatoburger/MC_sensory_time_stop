#クリック停止
execute as @a[tag=!STS_stop_owner,scores={STS_timestop=1}] at @s if score @s STS_sneak matches 0 run summon minecraft:armor_stand ~ ~0.7 ~ {PortalCooldown:1,NoGravity:1b,Small:1b,NoAI:1b,Invisible:1b,Tags:["STS_player_stop_stand"],DisabledSlots:2039583}
execute as @a[tag=!STS_stop_owner,scores={STS_timestop=1}] at @s if score @s STS_sneak matches 1 run summon minecraft:armor_stand ~ ~0.5 ~ {PortalCooldown:1,NoGravity:1b,Small:1b,NoAI:1b,Invisible:1b,Tags:["STS_player_stop_stand"],DisabledSlots:2039583}
execute as @e[tag=STS_player_stop_stand,nbt={PortalCooldown:0}] run tp ~ -200 ~
kill @e[tag=STS_player_stop_stand,nbt={PortalCooldown:0}]
#座標停止
execute as @a[tag=!STS_stop_owner,scores={STS_timestop=1},tag=!STS_player_stop_save] at @s summon minecraft:text_display run function sts:player_pos_save

execute as @a[tag=!STS_stop_owner,scores={STS_timestop=1}] at @s run tp @s @e[tag=STS_player_Pos_save,limit=1,sort=nearest]

#シフト中に時計を持ってたら時間停止に割り込める
execute as @a[tag=!STS_stop_owner,scores={STS_timestop=1},predicate=sts:have_watch] at @s if score @s STS_sneak matches 1 run function sts:timestop/time_stop_click

#初回判定と退去時のアレ
execute as @a[tag=!STS_stop_owner,scores={STS_timestop=1}] at @s run tag @s add STS_player_stop_save
execute as @a[tag=STS_player_stop_save] at @s unless score @s STS_timestop matches 1 run tag @s remove STS_player_stop_save
execute as @a[tag=STS_player_stop_save,tag=STS_stop_owner] at @s run tag @s remove STS_player_stop_save

execute as @e[tag=STS_player_Pos_save] at @s unless entity @a[distance=..2,tag=STS_player_stop_save] run tp ~ -200 ~
execute as @e[tag=STS_player_Pos_save] at @s unless entity @a[distance=..2,tag=STS_player_stop_save] run kill @s