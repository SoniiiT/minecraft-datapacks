# Deinstallieren: erst diese Funktion ausfuehren (function pinfo:remove), dann den Ordner aus world/datapacks loeschen.
# Ohne das bleiben Anzeige und Scoreboards nach dem Entfernen des Packs bestehen.
scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay list
scoreboard objectives remove hearts
scoreboard objectives remove playtime
scoreboard objectives remove pi.hp
scoreboard objectives remove pi.ticks
scoreboard objectives remove pi.slot
scoreboard objectives remove pi
