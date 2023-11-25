scoreboard players operation @s STS_stamina_gauge_display = @s STS_stamina_gauge
scoreboard players operation @s STS_stamina_gauge_display *= #STS_100 STS_x
scoreboard players operation @s STS_stamina_gauge_display /= @s STS_stamina_gauge_limit

execute if score @s STS_stamina_gauge_display matches ..0 run title @s actionbar [{"text":"精神力:","color":"red"},{"text":"████████████████████","color":"black"}]
execute if score @s STS_stamina_gauge_display matches 1..9 run title @s actionbar [{"text":"精神力:██","color":"red"},{"text":"██████████████████","color":"black"}]
execute if score @s STS_stamina_gauge_display matches 10..19 run title @s actionbar [{"text":"精神力:████","color":"red"},{"text":"████████████████","color":"black"}]
execute if score @s STS_stamina_gauge_display matches 20..29 run title @s actionbar [{"text":"精神力:██████","color":"yellow"},{"text":"██████████████","color":"black"}]
execute if score @s STS_stamina_gauge_display matches 30..39 run title @s actionbar [{"text":"精神力:████████","color":"yellow"},{"text":"████████████","color":"black"}]
execute if score @s STS_stamina_gauge_display matches 40..49 run title @s actionbar [{"text":"精神力:██████████","color":"yellow"},{"text":"██████████","color":"black"}]
execute if score @s STS_stamina_gauge_display matches 50..59 run title @s actionbar [{"text":"精神力:████████████","color":"green"},{"text":"████████","color":"black"}]
execute if score @s STS_stamina_gauge_display matches 60..69 run title @s actionbar [{"text":"精神力:██████████████","color":"green"},{"text":"██████","color":"black"}]
execute if score @s STS_stamina_gauge_display matches 70..79 run title @s actionbar [{"text":"精神力:████████████████","color":"green"},{"text":"████","color":"black"}]
execute if score @s STS_stamina_gauge_display matches 80..89 run title @s actionbar [{"text":"精神力:██████████████████","color":"green"},{"text":"██","color":"black"}]
execute if score @s STS_stamina_gauge_display matches 90..97 run title @s actionbar {"text":"精神力:████████████████████","color":"green"}
execute if score @s STS_stamina_gauge_display matches 98..99 run title @s actionbar {"text":"精神力:████████████████████","color":"aqua"}