# === Quest zuweisen ===
# Würfelt einen zufälligen Quest-Typ (1-250), setzt Stat/Target und gibt das Papier-Item.

execute store result score @s smp.quest.type run random value 1..184
function smp:quests/setup_from_type
function smp:quests/give_paper