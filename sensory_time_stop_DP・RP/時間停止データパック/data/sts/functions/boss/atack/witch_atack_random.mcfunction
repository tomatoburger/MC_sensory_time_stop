execute if score @s STS_boss_HP matches 51.. store result score @s STS_boss_random run random value 1..5
execute if score @s STS_boss_HP matches ..50 store result score @s STS_boss_random run random value 1..8
execute if score @s STS_boss_random matches 6..8 if score @s STS_timestop matches 1 store result score @s STS_boss_random run random value 1..5

execute if score @s STS_boss_random matches 1 run function sts:boss/atack/witch_straight_line
execute if score @s STS_boss_random matches 2 run function sts:boss/atack/witch_skelton_sumon
execute if score @s STS_boss_random matches 3 run function sts:boss/atack/witch_blinding
execute if score @s STS_boss_random matches 4 run function sts:boss/atack/witch_scattering
execute if score @s STS_boss_random matches 5 if score @s STS_stamina_gauge >= @s STS_stamina_gauge_limit run function sts:boss/atack/witch_time_stop
execute if score @s STS_boss_random matches 5 unless score @s STS_stamina_gauge >= @s STS_stamina_gauge_limit run function sts:boss/atack/witch_skelton_sumon
execute if score @s STS_boss_random matches 6..8 run function sts:boss/warp_escape_witch_1

#リセット
scoreboard players set @s STS_boss_timer_1 0