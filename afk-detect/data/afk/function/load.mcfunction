scoreboard objectives add afk dummy
scoreboard objectives add afk.x dummy
scoreboard objectives add afk.y dummy
scoreboard objectives add afk.z dummy
scoreboard objectives add afk.yaw dummy
scoreboard objectives add afk.pitch dummy
scoreboard objectives add afk.idle dummy
scoreboard objectives add afk.slot dummy
scoreboard players set #t afk 0
scoreboard players set #five afk 5
execute unless score #next afk = #next afk run scoreboard players set #next afk 0
# Timeout in Sekunden (Standard 5 Minuten). Aenderbar mit /scoreboard players set #timeout afk <sekunden>; bleibt nach /reload erhalten
execute unless score #timeout afk = #timeout afk run scoreboard players set #timeout afk 300
