tag @s add STS_knife_Calculating
tag @e[dx=0,dy=0,dz=0,limit=1,sort=nearest,type=!#sts:not_target] add STS_hit_knife
execute as @a if score @s STS_UUID = @e[tag=STS_knife_Calculating,limit=1,sort=nearest] STS_owner_UUID run tag @s add STS_knife_owner

execute unless score @s STS_owner_UUID = @e[tag=STS_hit_knife,sort=nearest,limit=1] STS_UUID run damage @e[tag=STS_hit_knife,sort=nearest,limit=1] 1 arrow by @a[tag=STS_knife_owner,limit=1,sort=nearest]
execute unless score @s STS_owner_UUID = @e[tag=STS_hit_knife,sort=nearest,limit=1] STS_UUID run kill @s

tag @s remove STS_knife_Calculating
tag @e remove STS_hit_knife
tag @a remove STS_knife_owner
