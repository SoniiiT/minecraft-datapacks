# Sperre nach dem Tageswechsel runterzaehlen
execute if score #cooldown sleep matches 1.. run scoreboard players remove #cooldown sleep 1

# Auffangnetz fuer Schlafende, die kein Advancement ausgeloest haben (siehe scan)
scoreboard players add #scan sleep 1
execute if score #scan sleep matches 40.. run function sleep:scan

# Leerlauf: niemand liegt im Bett und kein Countdown laeuft -> nichts zu tun (haelt den Serverlast im Normalbetrieb bei fast null)
execute unless entity @a[tag=in_bed] unless score #active sleep matches 1 run return run scoreboard players set #announced sleep 0

# Wer nicht mehr schlaeft, verliert das Tag. Die teure NBT-Pruefung laeuft nur fuer die wenigen Getaggten
execute as @a[tag=in_bed] unless data entity @s sleeping_pos run tag @s remove in_bed

# Zaehlt Spieler in der Overworld (Spectator und AFK ignoriert) und wie viele davon schlafen
scoreboard players set #total sleep 0
execute as @a[gamemode=!spectator,tag=!afk] at @s if dimension minecraft:overworld run scoreboard players add #total sleep 1
scoreboard players set #sleeping sleep 0
execute as @a[gamemode=!spectator,tag=!afk,tag=in_bed] at @s if dimension minecraft:overworld run scoreboard players add #sleeping sleep 1

# Genug, wenn schlafende * 2 >= alle (also mindestens 50 %)
scoreboard players set #enough sleep 0
scoreboard players operation #double sleep = #sleeping sleep
scoreboard players operation #double sleep *= #two sleep
execute if score #sleeping sleep matches 1.. if score #double sleep >= #total sleep run scoreboard players set #enough sleep 1

# Alle schlafen: Countdown wird verkuerzt (siehe all_asleep). Die Meldung kommt einmal, bis niemand mehr schlaeft
scoreboard players set #all sleep 0
execute if score #sleeping sleep matches 1.. if score #sleeping sleep = #total sleep run scoreboard players set #all sleep 1
execute if score #sleeping sleep matches 0 run scoreboard players set #announced sleep 0

execute if score #enough sleep matches 1 if score #active sleep matches 0 if score #cooldown sleep matches 0 run function sleep:start
execute if score #enough sleep matches 0 if score #active sleep matches 1 run function sleep:cancel
execute if score #all sleep matches 1 if score #active sleep matches 1 run function sleep:all_asleep
execute if score #active sleep matches 1 run function sleep:countdown
