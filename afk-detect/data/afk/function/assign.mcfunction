scoreboard players operation @s afk.slot = #next afk
scoreboard players add #next afk 1
execute if score #next afk matches 100.. run scoreboard players set #next afk 0
