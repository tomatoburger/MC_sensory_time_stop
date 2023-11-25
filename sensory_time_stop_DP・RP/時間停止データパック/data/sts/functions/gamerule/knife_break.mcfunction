#初期設定:1
scoreboard players add #STS_gamelule STS_knife_break 1
execute if score #STS_gamelule STS_knife_break matches 2 run scoreboard players set #STS_gamelule STS_knife_break 0
#STS_gameluleは自分で作った名前なので予測が出なくてもいきなり入れてOK

#設定変更のログ
execute if score #STS_gamelule STS_knife_break matches 1 run tellraw @s "時間停止データパック:ナイフの地形破壊をONにしました"
execute if score #STS_gamelule STS_knife_break matches 0 run tellraw @s "時間停止データパック:ナイフの地形破壊をOFFにしました"