# Pro Pruefung vergehen 5 Sekunden
execute if score @s afk.idle < #timeout afk run scoreboard players operation @s afk.idle += #five afk
execute if score @s afk.idle >= #timeout afk unless entity @s[tag=afk] run function afk:go
