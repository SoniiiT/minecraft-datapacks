# Auffangnetz (alle 2 s, nur nachts): tagt Schlafende, die das Advancement nicht erfasst hat, z. B. nach /reload
scoreboard players set #scan sleep 0
execute in minecraft:overworld store result score #clock sleep run time query time
scoreboard players operation #clock sleep %= #dayticks sleep
execute if score #clock sleep matches 12000.. as @a[gamemode=!spectator,tag=!in_bed] if data entity @s sleeping_pos run tag @s add in_bed
