# === Tägliche Quest-Vergabe prüfen ===
# Wird als @s ausgeführt wenn last_day < smp.day und quest.active=0.

# Tages-Marker sofort setzen (verhindert erneute Prüfung heute)
scoreboard players operation @s smp.quest.last_day = #server smp.day

# Nur neue Quest geben wenn kein Papier im Inventar
# (Spieler könnte ein gehandeltes Papier haben)
execute unless items entity @s inventory.* minecraft:paper[minecraft:custom_data~{smp_quest:1b}] run function smp:quests/assign
