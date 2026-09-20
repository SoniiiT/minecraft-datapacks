# Alle schlafen: Countdown auf hoechstens 3 Sekunden kuerzen (kommt vor Vanillas eigenem Nachtsprung nach 100 Ticks)
execute if score #ticks sleep matches 61.. run scoreboard players set #ticks sleep 60
execute if score #announced sleep matches 0 run tellraw @a ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Alle Spieler schlafen! Tag in 3 Sekunden, danach gibt es einen Boost für die nächsten 20 Minuten.","color":"light_purple"}]
scoreboard players set #announced sleep 1
