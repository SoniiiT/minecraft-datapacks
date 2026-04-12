# === Quest-Typ aus Papier-NBT lesen ===
# Wird als @s ausgeführt wenn ein Quest-Papier im Inventar ist.
# Liest qtype aus custom_data und übergibt an Makro-Funktion.

data modify storage smp:tmp quest_paper set from entity @s Inventory[{components:{"minecraft:custom_data":{smp_quest:1b}}}].components."minecraft:custom_data"
execute if data storage smp:tmp quest_paper{smp_quest:1b} run function smp:quests/apply_paper_type with storage smp:tmp quest_paper
