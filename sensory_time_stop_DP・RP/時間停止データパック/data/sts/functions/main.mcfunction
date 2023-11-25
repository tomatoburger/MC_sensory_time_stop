#普通に実行されるコマンド群(時間停止より優先)
execute as @e at @s store result score @s STS_realtime_health run data get entity @s Health 1
function sts:player_stop
function sts:tikuseki_damage
execute as @e at @s if score @s STS_use_crossbow matches 1.. run function sts:crossbow_control
execute as @e at @s if score @s STS_use_trident matches 1.. run function sts:trident_control

#時間停止のために実行するコマンド群　ーー貴様、見ているな！！
function sts:timestop/time_stop_1
function sts:timestop/time_stop_2

#時間停止ではない時に実行するコマンド群
execute if entity @e[type=minecraft:item_display,tag=STS_knife_throw] run function sts:knife_advance_5

execute as @e[type=minecraft:item_display,tag=STS_knife_throw] at @s unless entity @a[distance=..70,scores={STS_timestop=1}] run scoreboard players add @s STS_knife_dis_des 1
execute as @e[type=minecraft:item_display,tag=STS_knife_throw] at @s if score @s STS_knife_dis_des matches 60.. run function sts:destroy_knife
execute as @e[type=minecraft:item_display,tag=STS_knife_throw] at @s unless entity @a[distance=..70,scores={STS_timestop=1}] run particle minecraft:instant_effect ^ ^ ^-1 0 0 0 0 1
execute as @a at @s unless entity @s[scores={STS_timestop=1}] run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9921568627450980392156862745098 1 1 0 force @s

#一度だけ実行するコマンド群
execute as @a at @s unless score @s STS_UUID matches -999999999.. store result score @s STS_UUID run data get entity @s UUID[0] 

#時間停止時計を持っていて、かつクリックされている場合、ファンクションを実行する
execute as @a[predicate=sts:have_watch] at @s if score @s STS_carrot_click matches 1.. run function sts:timestop/time_stop_click

#クリックされているときに、もし時間停止時計を持っていなかった場合、変数を0にする。
execute as @a at @s if score @s STS_carrot_click matches 1.. unless entity @s[predicate=sts:have_watch] run scoreboard players set @s STS_carrot_click 0

execute as @e[type=minecraft:item_display,tag=STS_knife_dis] at @s store result score @s STS_knife_dis_des on vehicle if entity @s
kill @e[scores={STS_knife_dis_des=0}]

#ナイフの長押しが終わったか検知するコマンド
execute as @a at @s if score @s STS_knife_copy matches 1.. if score @s STS_knife_copy = @s STS_using_knife run function sts:throw_knife
#コピーと元が同じ値なら元を0にする
execute as @a at @s run scoreboard players operation @s STS_knife_copy = @s STS_using_knife
#値をコピー

#普通に実行されるコマンド群
execute as @a at @s run function sts:scoreboard_as_e
function sts:timestop/stamina_gauge
function sts:timestop/time_stop_calculation
function sts:boss/bossbar_witch

#ボスクリスタル
execute as @e[type=minecraft:block_display,tag=STS_boss_crystal] at @s run function sts:boss/witch_crystal

#ボスの攻撃制御
execute if entity @e[tag=STS_boss_witch] run function sts:boss/witch_boss_attack_control
#ボスのワープ制御
execute as @e[tag=STS_warpman,nbt={PortalCooldown:0}] at @s run function sts:boss/warp_escape_witch_2
execute as @e[tag=witch_minion,type=#minecraft:skeletons] at @s unless entity @e[tag=STS_boss_witch,distance=..50] run kill @s
#ボスの出現条件
execute as @e[name="古代の魔女",type=minecraft:witch,nbt={active_effects:[{id:"minecraft:weakness"}]},tag=!STS_boss_witch] at @s run function sts:boss/awake_time_stop_witch
#スタミナゲージ
execute as @a at @s run function sts:stamina_gauge_display
