scoreboard players remove #ticks sleep 1
execute if score #ticks sleep matches 40 run tellraw @a ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Tag in ","color":"yellow"}, {"text":"2","color":"green","bold":true}, {"text":" ...","color":"yellow"}]
execute if score #ticks sleep matches 20 run tellraw @a ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Tag in ","color":"yellow"}, {"text":"1","color":"green","bold":true}, {"text":" ...","color":"yellow"}]
execute if score #ticks sleep matches ..0 run function sleep:finish
