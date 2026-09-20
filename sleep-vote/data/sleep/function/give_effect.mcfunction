# Laeuft als der Spieler: wuerfelt einen guten Effekt (20 Minuten = 1200 Sekunden)
execute store result score @s sleep run random value 0..9
execute if score @s sleep matches 0 run effect give @s minecraft:strength 1200 0
execute if score @s sleep matches 0 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.strength","color":"green"}]
execute if score @s sleep matches 1 run effect give @s minecraft:regeneration 1200 0
execute if score @s sleep matches 1 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.regeneration","color":"green"}]
execute if score @s sleep matches 2 run effect give @s minecraft:speed 1200 0
execute if score @s sleep matches 2 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.speed","color":"green"}]
execute if score @s sleep matches 3 run effect give @s minecraft:haste 1200 0
execute if score @s sleep matches 3 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.haste","color":"green"}]
execute if score @s sleep matches 4 run effect give @s minecraft:resistance 1200 0
execute if score @s sleep matches 4 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.resistance","color":"green"}]
execute if score @s sleep matches 5 run effect give @s minecraft:jump_boost 1200 0
execute if score @s sleep matches 5 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.jump_boost","color":"green"}]
execute if score @s sleep matches 6 run effect give @s minecraft:fire_resistance 1200 0
execute if score @s sleep matches 6 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.fire_resistance","color":"green"}]
execute if score @s sleep matches 7 run effect give @s minecraft:night_vision 1200 0
execute if score @s sleep matches 7 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.night_vision","color":"green"}]
execute if score @s sleep matches 8 run effect give @s minecraft:water_breathing 1200 0
execute if score @s sleep matches 8 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.water_breathing","color":"green"}]
execute if score @s sleep matches 9 run effect give @s minecraft:health_boost 1200 1
execute if score @s sleep matches 9 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.health_boost","color":"green"}]
scoreboard players reset @s sleep
