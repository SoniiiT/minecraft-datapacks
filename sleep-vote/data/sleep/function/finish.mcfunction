scoreboard players set #active sleep 0
scoreboard players set #ticks sleep 0
scoreboard players set #cooldown sleep 100
execute in minecraft:overworld run time set day
execute in minecraft:overworld run weather clear
tellraw @a ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Guten Morgen! Es ist Tag und der Regen hat aufgehört.","color":"green"}]
