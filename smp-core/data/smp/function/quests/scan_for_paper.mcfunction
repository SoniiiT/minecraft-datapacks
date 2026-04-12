# === Quest-Papier im Inventar erkennen ===
# Wird als @s ausgeführt wenn quest.active=0.
# Prüft ob ein Quest-Papier vorhanden ist und aktiviert die Quest.

execute if items entity @s inventory.* minecraft:paper[minecraft:custom_data~{smp_quest:1b}] run function smp:quests/read_paper_type
