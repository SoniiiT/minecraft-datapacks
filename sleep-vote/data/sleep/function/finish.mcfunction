scoreboard players set #active sleep 0
scoreboard players set #ticks sleep 0
scoreboard players set #cooldown sleep 100
# Boost nur, wenn bis zum Schluss ALLE im Bett geblieben sind
execute if score #all sleep matches 1 run function sleep:boost
execute in minecraft:overworld run time set day
execute in minecraft:overworld run weather clear
tellraw @a ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Guten Morgen! Es ist Tag und der Regen hat aufgehört.","color":"green"}]
