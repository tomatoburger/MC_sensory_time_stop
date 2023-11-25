scoreboard players add @s STS_using_knife 1
execute if score @s STS_using_knife matches 40 run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 0.5 2
advancement revoke @s only sts:using_knife

