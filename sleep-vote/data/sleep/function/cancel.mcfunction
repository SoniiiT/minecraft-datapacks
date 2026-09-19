scoreboard players set #active sleep 0
scoreboard players set #ticks sleep 0
tellraw @a ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Zu wenige Spieler schlafen – Countdown abgebrochen.","color":"red"}]
