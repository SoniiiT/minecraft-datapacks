scoreboard players set #active sleep 0
scoreboard players set #ticks sleep 0
# Bei allen Schlafenden beendet Vanilla die Nacht selbst -> dann ist es schon Tag und es gibt keine Abbruch-Meldung
execute in minecraft:overworld store result score #clock sleep run time query time
scoreboard players operation #clock sleep %= #dayticks sleep
execute if score #clock sleep matches 12000.. run tellraw @a ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Zu wenige Spieler schlafen – abgebrochen.","color":"red"}]
