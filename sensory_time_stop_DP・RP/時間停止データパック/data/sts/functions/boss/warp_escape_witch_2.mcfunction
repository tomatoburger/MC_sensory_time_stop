execute on passengers run tag @s add STS_warpman_passengers
ride @e[tag=STS_warpman_passengers,limit=1,sort=nearest] dismount
execute as @e[tag=STS_warpman_passengers,limit=1,sort=nearest] run tp ~ ~ ~
tag @e[tag=STS_warpman_passengers] remove STS_warpman_passengers
tp ~ -200 ~
kill @s