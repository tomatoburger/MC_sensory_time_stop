summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:31310002,display:{Name:"{\"text\":\"時を止める時計\"}"}}}}
advancement revoke @s only sts:crafted_time_stop_watch
clear @s minecraft:knowledge_book 1
playsound block.enchantment_table.use master @s
playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~ 0.5 0.7
playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 0.5 1.2