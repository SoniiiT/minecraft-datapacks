# Laeuft als der Spieler (alle 5 s). Position und Blickrichtung ganzzahlig skaliert (Position auf 1 cm, Blick auf 0,1 Grad)
execute store result score #x afk run data get entity @s Pos[0] 100
execute store result score #y afk run data get entity @s Pos[1] 100
execute store result score #z afk run data get entity @s Pos[2] 100
execute store result score #yaw afk run data get entity @s Rotation[0] 10
execute store result score #pitch afk run data get entity @s Rotation[1] 10

# Aktiv = irgendetwas hat sich seit der letzten Pruefung geaendert (ein noch leerer Vergleichswert zaehlt auch als Aenderung)
scoreboard players set #moved afk 0
execute unless score #x afk = @s afk.x run scoreboard players set #moved afk 1
execute unless score #y afk = @s afk.y run scoreboard players set #moved afk 1
execute unless score #z afk = @s afk.z run scoreboard players set #moved afk 1
execute unless score #yaw afk = @s afk.yaw run scoreboard players set #moved afk 1
execute unless score #pitch afk = @s afk.pitch run scoreboard players set #moved afk 1
# Wer schlaeft, ist nicht AFK (nur noch pruefen, wenn sonst nichts auf Bewegung hindeutet)
execute if score #moved afk matches 0 if data entity @s sleeping_pos run scoreboard players set #moved afk 1

scoreboard players operation @s afk.x = #x afk
scoreboard players operation @s afk.y = #y afk
scoreboard players operation @s afk.z = #z afk
scoreboard players operation @s afk.yaw = #yaw afk
scoreboard players operation @s afk.pitch = #pitch afk

execute if score #moved afk matches 1 run function afk:active
execute if score #moved afk matches 0 run function afk:idle
