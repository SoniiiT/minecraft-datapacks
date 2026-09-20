# Herzen alle 10 Ticks, Spielzeit-Anzeige pro Spieler nur einmal pro Minute (auf verschiedene Sekunden verteilt)
scoreboard players add #t pi 1
execute if score #t pi matches 10 run function pinfo:hearts
execute if score #t pi matches 20.. run function pinfo:second
