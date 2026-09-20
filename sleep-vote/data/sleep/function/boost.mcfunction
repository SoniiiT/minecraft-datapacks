# Wird von finish aufgerufen, solange noch alle im Bett liegen
execute as @a[gamemode=!spectator] at @s if dimension minecraft:overworld run function sleep:give_effect
