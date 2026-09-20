scoreboard players operation @s pi.slot = #next pi
scoreboard players add #next pi 1
execute if score #next pi matches 60.. run scoreboard players set #next pi 0
function pinfo:playtime
