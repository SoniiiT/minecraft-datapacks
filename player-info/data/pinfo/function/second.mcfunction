scoreboard players set #t pi 0
function pinfo:hearts
scoreboard players add #sec pi 1
execute if score #sec pi matches 60.. run scoreboard players set #sec pi 0
# Neue Spieler bekommen sofort ihre Anzeige und einen Sekunden-Slot 0-59, danach aktualisiert sich jeder einmal pro Minute
execute as @a unless score @s pi.slot = @s pi.slot run function pinfo:assign
execute as @a if score @s pi.slot = #sec pi run function pinfo:playtime
