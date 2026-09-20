# Nur Scoreboard-Rechnung, kein NBT. Halbe Herzen -> ganze Herzen (aufgerundet, ein lebender Spieler zeigt nie 0)
# Wer noch keinen Wert hat (z. B. nach dem ersten /reload), gilt als voll
execute as @a unless score @s pi.hp = @s pi.hp run scoreboard players set @s pi.hp 20
execute as @a run scoreboard players operation @s hearts = @s pi.hp
execute as @a run scoreboard players add @s hearts 1
execute as @a run scoreboard players operation @s hearts /= #two pi
