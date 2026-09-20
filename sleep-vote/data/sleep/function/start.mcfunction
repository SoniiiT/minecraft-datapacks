scoreboard players set #active sleep 1
scoreboard players set #ticks sleep 120
tellraw @a ["", {"text":"[Schlafen] ","color":"gold"}, {"score":{"name":"#sleeping","objective":"sleep"},"color":"yellow"}, {"text":"/","color":"yellow"}, {"score":{"name":"#total","objective":"sleep"},"color":"yellow"}, {"text":" Spieler schlafen. Tag in ","color":"yellow"}, {"text":"6","color":"green","bold":true}, {"text":" ...","color":"yellow"}]
