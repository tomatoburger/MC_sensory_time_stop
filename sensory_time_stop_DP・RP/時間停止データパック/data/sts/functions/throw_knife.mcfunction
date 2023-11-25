execute if entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:infinity"}]}}}] run tag @s add STS_infinity
execute if entity @s[gamemode=creative] run tag @s add STS_infinity

execute if score @s STS_timestop matches 1 run scoreboard players remove @s STS_stamina_gauge 50

execute anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife_first
execute if score @s STS_using_knife matches 10.. anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife
execute if score @s STS_using_knife matches 15.. anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife
execute if score @s STS_using_knife matches 20.. anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife
execute if score @s STS_using_knife matches 25.. anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife
execute if score @s STS_using_knife matches 30.. anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife
execute if score @s STS_using_knife matches 35.. anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife
execute if score @s STS_using_knife matches 35.. anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife
execute if score @s STS_using_knife matches 40.. anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife
execute if score @s STS_using_knife matches 40.. anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife

execute if score @s STS_using_knife matches 35.. if score @s STS_timestop matches 1 anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife
execute if score @s STS_using_knife matches 35.. if score @s STS_timestop matches 1 anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife
execute if score @s STS_using_knife matches 40.. if score @s STS_timestop matches 1 anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife
execute if score @s STS_using_knife matches 40.. if score @s STS_timestop matches 1 anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife

execute if score @s STS_sneak matches 1 if score @s STS_using_knife matches 40.. anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife
execute if score @s STS_sneak matches 1 if score @s STS_using_knife matches 40.. anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife
execute if score @s STS_sneak matches 1 if score @s STS_using_knife matches 40.. anchored eyes positioned ^ ^ ^ summon minecraft:item_display run tag @s add STS_knife

execute as @e[type=minecraft:item_display,tag=STS_knife_first] at @s run tag @s add STS_knife
execute as @e[type=minecraft:item_display,tag=STS_knife] at @s run data merge entity @s {item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:31310004}}}

execute as @e[tag=STS_knife] at @s store result score @s STS_owner_UUID run data get entity @p UUID[0]

execute as @e[tag=STS_knife] at @s store result entity @s Rotation[0] float 1 run execute as @p at @s run data get entity @s Rotation[0]
execute as @e[tag=STS_knife] at @s store result entity @s Rotation[1] float 1 run execute as @p at @s run data get entity @s Rotation[1]

execute as @a at @s if score @s STS_sneak matches 0 run function sts:knife_random {"x":"-5..5","y":"-5..5","z":"0..7"}
execute as @a at @s if score @s STS_sneak matches 1 run function sts:knife_random {"x":"0","y":"0","z":"10"}
execute as @a at @s if score @s STS_sneak matches 3.. run tellraw tomatoburger "STS:エラー(throw_knifeのSTS_sneakが2以上の値になっています)"

execute as @e[tag=STS_knife,tag=!STS_knife_first] at @s run tp ^ ^ ^



execute as @e[tag=STS_knife_first] at @s if entity @a[tag=STS_infinity] run tag @s add STS_knife_infinity
tag @e[tag=!STS_knife_first,tag=STS_knife] add STS_knife_infinity
 #ここでKnife_throwになる
execute as @e[type=minecraft:item_display,tag=STS_knife] at @s run tag @s add STS_knife_throw
execute as @e[type=minecraft:item_display,tag=STS_knife_throw] at @s run tag @s remove STS_knife
execute as @e[type=minecraft:item_display,tag=STS_knife_first] at @s run tag @s remove STS_knife_first

execute if score @s STS_using_knife matches ..2 unless entity @s[tag=STS_infinity] run clear @s minecraft:arrow 1
execute if score @s STS_using_knife matches ..2 run playsound minecraft:entity.arrow.shoot player @s ~ ~ ~ 1 1
execute if score @s STS_using_knife matches ..2 run playsound minecraft:entity.arrow.shoot player @s ~ ~ ~ 1 1.5
scoreboard players set @s STS_using_knife 0
scoreboard players set @s STS_knife_copy 0
tag @a remove STS_infinity