# === Quest-Ablauf prüfen ===
# Wird als @s ausgeführt für Spieler mit aktiver, nicht abgeschlossener Quest.
# 24h Verfallzeit wird mit aktuellem Gametime verglichen.

execute if score #server smp.gametime >= @s smp.quest.expire run function smp:quests/do_expire
