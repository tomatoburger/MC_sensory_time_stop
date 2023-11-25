#スコアボード作成
scoreboard objectives add STS_rot_x dummy
scoreboard objectives add STS_rot_y dummy
scoreboard objectives add STS_mot_x dummy
scoreboard objectives add STS_mot_y dummy
scoreboard objectives add STS_mot_z dummy
scoreboard objectives add STS_timestop dummy
scoreboard objectives add STS_i dummy
scoreboard objectives add STS_carrot_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add STS_using_knife dummy
scoreboard objectives add STS_knife_dis_des dummy
scoreboard objectives add STS_knife_copy dummy
scoreboard objectives add STS_knife_break dummy
scoreboard objectives add STS_use_bow minecraft.used:minecraft.bow
scoreboard objectives add STS_owner_UUID dummy
scoreboard objectives add STS_UUID dummy
scoreboard objectives add STS_knife_random_x dummy
scoreboard objectives add STS_knife_random_y dummy
scoreboard objectives add STS_knife_random_z dummy
scoreboard objectives add STS_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add STS_knife_random_Rot dummy
scoreboard objectives add STS_knife_Rot dummy
scoreboard objectives add STS_stamina_gauge dummy
scoreboard objectives add STS_stamina_gauge_limit dummy
scoreboard objectives add STS_stamina_gauge_limit_second dummy
scoreboard objectives add STS_level dummy
scoreboard objectives add STS_x dummy
scoreboard objectives add STS_y dummy
scoreboard objectives add STS_remainder dummy
scoreboard objectives add STS_remainder_check dummy
scoreboard objectives add STS_health dummy
scoreboard objectives add STS_health_100 dummy
scoreboard objectives add STS_tikuseki_damage dummy
scoreboard objectives add STS_realtime_health dummy
scoreboard objectives add STS_health_calculation dummy
scoreboard objectives add STS_max_health dummy
scoreboard objectives add STS_boss_timer_1 dummy
scoreboard objectives add STS_boss_random dummy
scoreboard objectives add STS_boss_time_stop dummy
scoreboard objectives add STS_boss_random_z dummy
scoreboard objectives add STS_boss_random_x dummy
scoreboard objectives add STS_boss_z dummy
scoreboard objectives add STS_boss_y dummy
scoreboard objectives add STS_boss_x dummy
scoreboard objectives add STS_boss_HP dummy
scoreboard objectives add STS_use_crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add STS_use_trident minecraft.used:minecraft.trident
scoreboard objectives add STS_stamina_gauge_display dummy
scoreboard objectives add STS_stamina_gauge_display_2 dummy
#スコアボード代入
scoreboard players set #STS_100 STS_x 100
scoreboard players set #STS_200 STS_x 200
scoreboard players set #STS_1000 STS_x 1000
scoreboard players set #STS_11112 STS_x 11112
scoreboard players set #STS_600 STS_x 600
scoreboard players set #STS_200 STS_x 200
scoreboard players set #STS_97 STS_x 97
scoreboard players set #STS_972 STS_x 972
scoreboard players set #STS_-1 STS_x -1
scoreboard players set #STS_time STS_i 0
execute unless score #STS_gamerule STS_knife_break matches -999999999.. run scoreboard players set #STS_gamerule STS_knife_break 1
tellraw @a {"text":"時間停止データパックby tomatoburger","color":"gold"}
tellraw @a {"text":"初期設定はこちらをクリック(OP権限保持者のみが実行できます)","clickEvent":{"action":"run_command","value":"/function sts:chat_config"},"color":"gold"}
#ボスバー
bossbar add sts_limit "精神力"

#他データパック実行
function score_to_health:load