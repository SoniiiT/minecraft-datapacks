scoreboard players set #active sleep 0
scoreboard players set #ticks sleep 0
scoreboard players set #cooldown sleep 100
# Alle, die gerade schlafen, wachen satt auf (Sofort-Saettigung, fuellt die Hungerleiste)
execute as @a[gamemode=!spectator,tag=in_bed] at @s if dimension minecraft:overworld run effect give @s minecraft:saturation 1 19 true
# Boost nur, wenn bis zum Schluss ALLE im Bett geblieben sind
execute if score #all sleep matches 1 run function sleep:boost
execute in minecraft:overworld run time set day
execute in minecraft:overworld run weather clear
tellraw @a ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Guten Morgen! Es ist Tag und der Regen hat aufgehört.","color":"green"}]
