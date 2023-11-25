execute as @s[predicate=sts:have_knife] anchored eyes positioned ^ ^ ^ run kill @e[distance=..1,type=arrow,limit=1,sort=nearest]
#execute if entity @s[predicate=sts:have_knife] if entity @s[gamemode=!creative] unless entity @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:infinity"}]}}}] run summon item ~ ~ ~ {Item:{id:"minecraft:arrow",Count:1b}}
scoreboard players set @s STS_use_bow 0

execute unless entity @s[predicate=sts:have_knife] if score @s STS_timestop matches 1 run scoreboard players remove @s STS_stamina_gauge 100

execute if score @s STS_using_knife matches 3.. run playsound minecraft:entity.arrow.shoot player @s ~ ~ ~ 1 1.5