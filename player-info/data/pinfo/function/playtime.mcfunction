# Laeuft als der Spieler: Ticks -> Stunden und Minuten. Der Score selbst enthaelt die Gesamtminuten,
# angezeigt wird der Text "12 h 34 min" (Zahlenformat), damit man in der Tab-Liste ohne Beschriftung versteht, was es ist
execute unless score @s pi.ticks = @s pi.ticks run scoreboard players set @s pi.ticks 0
scoreboard players operation #m pi = @s pi.ticks
scoreboard players operation #m pi /= #1200 pi
scoreboard players operation @s playtime = #m pi
scoreboard players operation #h pi = #m pi
scoreboard players operation #h pi /= #60 pi
scoreboard players operation #m pi %= #60 pi
execute store result storage pinfo:tmp h int 1 run scoreboard players get #h pi
execute store result storage pinfo:tmp m int 1 run scoreboard players get #m pi
function pinfo:show with storage pinfo:tmp
