# Jeder Spieler wird nur alle 100 Ticks (5 s) geprueft, und zwar auf verschiedene Ticks verteilt (Slot 0-99),
# damit nie viele Spieler im selben Tick das teure NBT lesen muessen
scoreboard players add #t afk 1
execute if score #t afk matches 100.. run scoreboard players set #t afk 0
execute as @a unless score @s afk.slot = @s afk.slot run function afk:assign
execute as @a[gamemode=!spectator] if score @s afk.slot = #t afk run function afk:check
