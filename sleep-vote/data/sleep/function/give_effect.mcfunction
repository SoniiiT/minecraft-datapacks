# Laeuft als der Spieler: wuerfelt erst den Effekt, dann dessen Staerke (10 Minuten = 600 Sekunden).
# Effekte ohne Stufen (Feuerresistenz, Nachtsicht, Wasseratmung, Langsamer Fall, Delfins Gnade) haben nur Stufe I.
execute store result score @s sleep run random value 0..14
# strength I-III
execute if score @s sleep matches 0 store result score #lvl sleep run random value 1..3
execute if score @s sleep matches 0 if score #lvl sleep matches 1 run effect give @s minecraft:strength 600 0
execute if score @s sleep matches 0 if score #lvl sleep matches 1 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.strength","color":"green"}, {"text":" I","color":"green"}]
execute if score @s sleep matches 0 if score #lvl sleep matches 2 run effect give @s minecraft:strength 600 1
execute if score @s sleep matches 0 if score #lvl sleep matches 2 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.strength","color":"green"}, {"text":" II","color":"green"}]
execute if score @s sleep matches 0 if score #lvl sleep matches 3 run effect give @s minecraft:strength 600 2
execute if score @s sleep matches 0 if score #lvl sleep matches 3 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.strength","color":"green"}, {"text":" III","color":"green"}]
# regeneration I-III
execute if score @s sleep matches 1 store result score #lvl sleep run random value 1..3
execute if score @s sleep matches 1 if score #lvl sleep matches 1 run effect give @s minecraft:regeneration 600 0
execute if score @s sleep matches 1 if score #lvl sleep matches 1 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.regeneration","color":"green"}, {"text":" I","color":"green"}]
execute if score @s sleep matches 1 if score #lvl sleep matches 2 run effect give @s minecraft:regeneration 600 1
execute if score @s sleep matches 1 if score #lvl sleep matches 2 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.regeneration","color":"green"}, {"text":" II","color":"green"}]
execute if score @s sleep matches 1 if score #lvl sleep matches 3 run effect give @s minecraft:regeneration 600 2
execute if score @s sleep matches 1 if score #lvl sleep matches 3 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.regeneration","color":"green"}, {"text":" III","color":"green"}]
# speed I-III
execute if score @s sleep matches 2 store result score #lvl sleep run random value 1..3
execute if score @s sleep matches 2 if score #lvl sleep matches 1 run effect give @s minecraft:speed 600 0
execute if score @s sleep matches 2 if score #lvl sleep matches 1 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.speed","color":"green"}, {"text":" I","color":"green"}]
execute if score @s sleep matches 2 if score #lvl sleep matches 2 run effect give @s minecraft:speed 600 1
execute if score @s sleep matches 2 if score #lvl sleep matches 2 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.speed","color":"green"}, {"text":" II","color":"green"}]
execute if score @s sleep matches 2 if score #lvl sleep matches 3 run effect give @s minecraft:speed 600 2
execute if score @s sleep matches 2 if score #lvl sleep matches 3 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.speed","color":"green"}, {"text":" III","color":"green"}]
# haste I-III
execute if score @s sleep matches 3 store result score #lvl sleep run random value 1..3
execute if score @s sleep matches 3 if score #lvl sleep matches 1 run effect give @s minecraft:haste 600 0
execute if score @s sleep matches 3 if score #lvl sleep matches 1 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.haste","color":"green"}, {"text":" I","color":"green"}]
execute if score @s sleep matches 3 if score #lvl sleep matches 2 run effect give @s minecraft:haste 600 1
execute if score @s sleep matches 3 if score #lvl sleep matches 2 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.haste","color":"green"}, {"text":" II","color":"green"}]
execute if score @s sleep matches 3 if score #lvl sleep matches 3 run effect give @s minecraft:haste 600 2
execute if score @s sleep matches 3 if score #lvl sleep matches 3 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.haste","color":"green"}, {"text":" III","color":"green"}]
# resistance I-III
execute if score @s sleep matches 4 store result score #lvl sleep run random value 1..3
execute if score @s sleep matches 4 if score #lvl sleep matches 1 run effect give @s minecraft:resistance 600 0
execute if score @s sleep matches 4 if score #lvl sleep matches 1 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.resistance","color":"green"}, {"text":" I","color":"green"}]
execute if score @s sleep matches 4 if score #lvl sleep matches 2 run effect give @s minecraft:resistance 600 1
execute if score @s sleep matches 4 if score #lvl sleep matches 2 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.resistance","color":"green"}, {"text":" II","color":"green"}]
execute if score @s sleep matches 4 if score #lvl sleep matches 3 run effect give @s minecraft:resistance 600 2
execute if score @s sleep matches 4 if score #lvl sleep matches 3 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.resistance","color":"green"}, {"text":" III","color":"green"}]
# jump_boost I-III
execute if score @s sleep matches 5 store result score #lvl sleep run random value 1..3
execute if score @s sleep matches 5 if score #lvl sleep matches 1 run effect give @s minecraft:jump_boost 600 0
execute if score @s sleep matches 5 if score #lvl sleep matches 1 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.jump_boost","color":"green"}, {"text":" I","color":"green"}]
execute if score @s sleep matches 5 if score #lvl sleep matches 2 run effect give @s minecraft:jump_boost 600 1
execute if score @s sleep matches 5 if score #lvl sleep matches 2 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.jump_boost","color":"green"}, {"text":" II","color":"green"}]
execute if score @s sleep matches 5 if score #lvl sleep matches 3 run effect give @s minecraft:jump_boost 600 2
execute if score @s sleep matches 5 if score #lvl sleep matches 3 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.jump_boost","color":"green"}, {"text":" III","color":"green"}]
# fire_resistance
execute if score @s sleep matches 6 run effect give @s minecraft:fire_resistance 600 0
execute if score @s sleep matches 6 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.fire_resistance","color":"green"}]
# night_vision
execute if score @s sleep matches 7 run effect give @s minecraft:night_vision 600 0
execute if score @s sleep matches 7 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.night_vision","color":"green"}]
# water_breathing
execute if score @s sleep matches 8 run effect give @s minecraft:water_breathing 600 0
execute if score @s sleep matches 8 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.water_breathing","color":"green"}]
# health_boost I-III
execute if score @s sleep matches 9 store result score #lvl sleep run random value 1..3
execute if score @s sleep matches 9 if score #lvl sleep matches 1 run effect give @s minecraft:health_boost 600 0
execute if score @s sleep matches 9 if score #lvl sleep matches 1 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.health_boost","color":"green"}, {"text":" I","color":"green"}]
execute if score @s sleep matches 9 if score #lvl sleep matches 2 run effect give @s minecraft:health_boost 600 1
execute if score @s sleep matches 9 if score #lvl sleep matches 2 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.health_boost","color":"green"}, {"text":" II","color":"green"}]
execute if score @s sleep matches 9 if score #lvl sleep matches 3 run effect give @s minecraft:health_boost 600 2
execute if score @s sleep matches 9 if score #lvl sleep matches 3 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.health_boost","color":"green"}, {"text":" III","color":"green"}]
# absorption I-IV
execute if score @s sleep matches 10 store result score #lvl sleep run random value 1..4
execute if score @s sleep matches 10 if score #lvl sleep matches 1 run effect give @s minecraft:absorption 600 0
execute if score @s sleep matches 10 if score #lvl sleep matches 1 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.absorption","color":"green"}, {"text":" I","color":"green"}]
execute if score @s sleep matches 10 if score #lvl sleep matches 2 run effect give @s minecraft:absorption 600 1
execute if score @s sleep matches 10 if score #lvl sleep matches 2 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.absorption","color":"green"}, {"text":" II","color":"green"}]
execute if score @s sleep matches 10 if score #lvl sleep matches 3 run effect give @s minecraft:absorption 600 2
execute if score @s sleep matches 10 if score #lvl sleep matches 3 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.absorption","color":"green"}, {"text":" III","color":"green"}]
execute if score @s sleep matches 10 if score #lvl sleep matches 4 run effect give @s minecraft:absorption 600 3
execute if score @s sleep matches 10 if score #lvl sleep matches 4 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.absorption","color":"green"}, {"text":" IV","color":"green"}]
# slow_falling
execute if score @s sleep matches 11 run effect give @s minecraft:slow_falling 600 0
execute if score @s sleep matches 11 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.slow_falling","color":"green"}]
# luck I-III
execute if score @s sleep matches 12 store result score #lvl sleep run random value 1..3
execute if score @s sleep matches 12 if score #lvl sleep matches 1 run effect give @s minecraft:luck 600 0
execute if score @s sleep matches 12 if score #lvl sleep matches 1 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.luck","color":"green"}, {"text":" I","color":"green"}]
execute if score @s sleep matches 12 if score #lvl sleep matches 2 run effect give @s minecraft:luck 600 1
execute if score @s sleep matches 12 if score #lvl sleep matches 2 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.luck","color":"green"}, {"text":" II","color":"green"}]
execute if score @s sleep matches 12 if score #lvl sleep matches 3 run effect give @s minecraft:luck 600 2
execute if score @s sleep matches 12 if score #lvl sleep matches 3 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.luck","color":"green"}, {"text":" III","color":"green"}]
# dolphins_grace
execute if score @s sleep matches 13 run effect give @s minecraft:dolphins_grace 600 0
execute if score @s sleep matches 13 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.dolphins_grace","color":"green"}]
# hero_of_the_village I-V
execute if score @s sleep matches 14 store result score #lvl sleep run random value 1..5
execute if score @s sleep matches 14 if score #lvl sleep matches 1 run effect give @s minecraft:hero_of_the_village 600 0
execute if score @s sleep matches 14 if score #lvl sleep matches 1 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.hero_of_the_village","color":"green"}, {"text":" I","color":"green"}]
execute if score @s sleep matches 14 if score #lvl sleep matches 2 run effect give @s minecraft:hero_of_the_village 600 1
execute if score @s sleep matches 14 if score #lvl sleep matches 2 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.hero_of_the_village","color":"green"}, {"text":" II","color":"green"}]
execute if score @s sleep matches 14 if score #lvl sleep matches 3 run effect give @s minecraft:hero_of_the_village 600 2
execute if score @s sleep matches 14 if score #lvl sleep matches 3 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.hero_of_the_village","color":"green"}, {"text":" III","color":"green"}]
execute if score @s sleep matches 14 if score #lvl sleep matches 4 run effect give @s minecraft:hero_of_the_village 600 3
execute if score @s sleep matches 14 if score #lvl sleep matches 4 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.hero_of_the_village","color":"green"}, {"text":" IV","color":"green"}]
execute if score @s sleep matches 14 if score #lvl sleep matches 5 run effect give @s minecraft:hero_of_the_village 600 4
execute if score @s sleep matches 14 if score #lvl sleep matches 5 run tellraw @s ["", {"text":"[Schlafen] ","color":"gold"}, {"text":"Dein Boost: ","color":"light_purple"}, {"translate":"effect.minecraft.hero_of_the_village","color":"green"}, {"text":" V","color":"green"}]
scoreboard players reset @s sleep
