# === Quest abgelaufen ===
# Bann-Papier entfernen, Scores löschen, Bossbar verstecken.

scoreboard players set @s smp.quest.active 0

# Quest-spezifisches Papier aus Inventar entfernen (per qtype-Makro)
execute store result storage smp:tmp expire.qtype int 1 run scoreboard players get @s smp.quest.type
function smp:quests/remove_paper_by_type with storage smp:tmp expire

# Scores zurücksetzen
scoreboard players set @s smp.quest.type 0
scoreboard players set @s smp.quest.stat 0
scoreboard players set @s smp.quest.target 0
scoreboard players set @s smp.quest.base 0
scoreboard players set @s smp.quest.progress 0
scoreboard players set @s smp.quest.expire 0

# Bossbar verstecken
function smp:quests/hide_bossbar

# Nachricht
tellraw @s ["",{text:"[Quest] ",color:"red",bold:1b},{text:"Deine Aufgabe ist abgelaufen (24h überschritten). Kein Herz erhalten. Beim nächsten Einloggen am nächsten Tag gibt es eine neue Quest.",color:"red"}]
