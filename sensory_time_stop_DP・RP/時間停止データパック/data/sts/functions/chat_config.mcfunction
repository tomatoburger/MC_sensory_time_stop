tellraw @a {"text":"■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■","color":"black"}
tellraw @a {"text":""}
tellraw @a {"text":"ナイフによる地形破壊・作物回収","color":"gold"}
tellraw @a {"text":""}
tellraw @a {"text":"「有効」","clickEvent":{"action":"run_command","value":"/scoreboard players set #STS_gamerule STS_knife_break 1"},"color":"green"}
tellraw @a {"text":"「無効」","clickEvent":{"action":"run_command","value":"/scoreboard players set #STS_gamerule STS_knife_break 0"},"color":"red"}
tellraw @a {"text":""}
tellraw @a {"text":"「設定をデフォルトに戻す」","clickEvent":{"action":"run_command","value":"/function sts:gamerule/config_default"},"color":"gold"}
tellraw @a {"text":"■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■","color":"black"}

playsound minecraft:block.note_block.bell player @a ~ ~ ~