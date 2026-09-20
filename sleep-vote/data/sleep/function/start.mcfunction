scoreboard players set #active sleep 1
scoreboard players set #ticks sleep 200
scoreboard players operation #percent sleep = #sleeping sleep
scoreboard players operation #percent sleep *= #hundred sleep
scoreboard players operation #percent sleep /= #total sleep
# Wenn alle schlafen, kommt stattdessen die Boost-Meldung
execute if score #all sleep matches 0 run tellraw @a ["", {"text":"[Schlafen] ","color":"gold"}, {"score":{"name":"#percent","objective":"sleep"},"color":"yellow"}, {"text":"% der Spieler schlafen. Tag in 10 Sekunden.","color":"yellow"}]
