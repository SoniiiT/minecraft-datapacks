# === Quest deaktivieren (Papier weggegeben) ===
# Wird als @s ausgeführt wenn quest.active=1 aber kein Papier mehr im Inventar.
# Spieler hat das Papier an jemanden übergeben oder verloren.

scoreboard players set @s smp.quest.active 0
scoreboard players set @s smp.quest.type 0
scoreboard players set @s smp.quest.stat 0
scoreboard players set @s smp.quest.target 0
scoreboard players set @s smp.quest.base 0
scoreboard players set @s smp.quest.progress 0
scoreboard players set @s smp.quest.expire 0

function smp:quests/hide_bossbar

tellraw @s ["",{text:"[Quest] ",color:"gold",bold:1b},{text:"Du hast dein Aufgaben-Papier weitergegeben. Morgen bekommst du eine neue Aufgabe.",color:"gold"}]
