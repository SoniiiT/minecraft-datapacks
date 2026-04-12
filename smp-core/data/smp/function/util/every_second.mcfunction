# === Sekunden-Logik ===
# Wird jede Sekunde (20 Ticks) aufgerufen

# Tick-Zähler zurücksetzen
scoreboard players set #server smp.tick_counter 0

# Gametime aktualisieren (wird von check_timeout_kick benötigt)
execute store result score #server smp.gametime run time query gametime

# Neue Spieler initialisieren
execute as @a unless score @s smp.initialized matches 1.. run function smp:util/init_player

# Todes-Erkennung via Snapshot-Vergleich (gebannte Spieler ausschließen)
execute as @a[gamemode=survival] if score @s smp.deaths > @s smp.deaths.prev unless score @s smp.unban_time matches 1.. run function smp:lives/on_death

# Snapshot aktualisieren (alle Spieler)
execute as @a run scoreboard players operation @s smp.deaths.prev = @s smp.deaths

# Gebannte Spieler: kicken oder Bann aufheben wenn Zeit abgelaufen
execute as @a if score @s smp.unban_time matches 1.. run function smp:lives/check_timeout_kick

# Tages-Countdown (Server-weit)
scoreboard players remove #server smp.day_timer 1
execute if score #server smp.day_timer matches ..0 run function smp:quests/daily_reset

# Quest-Logik
# Tägliche Quest-Vergabe: eingeloggt, neuer Tag, noch kein aktives Quest
execute as @a[gamemode=survival] if score @s smp.initialized matches 1.. unless score @s smp.quest.active matches 1.. if score @s smp.quest.last_day < #server smp.day run function smp:quests/check_daily_quest

# Quest-Papier aktivieren: Papier im Inventar, kein aktives Quest
execute as @a[gamemode=survival] if score @s smp.initialized matches 1.. unless score @s smp.quest.active matches 1.. run function smp:quests/scan_for_paper

# Quest-Fortschritt berechnen
execute as @a[gamemode=survival] if score @s smp.initialized matches 1.. if score @s smp.quest.active matches 1.. unless score @s smp.quest.done matches 1.. run function smp:quests/check_progress

# Bossbar aktualisieren
execute as @a[gamemode=survival] if score @s smp.initialized matches 1.. if score @s smp.quest.active matches 1.. unless score @s smp.quest.done matches 1.. run function smp:quests/update_bossbar

# Quest-Ablauf prüfen
execute as @a[gamemode=survival] if score @s smp.initialized matches 1.. if score @s smp.quest.active matches 1.. unless score @s smp.quest.done matches 1.. run function smp:quests/expire_quest

# Papier weggegeben/verloren = Quest deaktivieren
execute as @a[gamemode=survival] if score @s smp.initialized matches 1.. if score @s smp.quest.active matches 1.. unless score @s smp.quest.done matches 1.. unless items entity @s inventory.* minecraft:paper[minecraft:custom_data~{smp_quest:1b}] run function smp:quests/deactivate_quest

# Actionbar-Anzeige aktualisieren
execute as @a run function smp:lives/display

# Statistik-Trigger verarbeiten
execute as @a[scores={smp.stats=1..}] run function smp:util/show_stats
execute as @a[scores={smp.stats=1..}] run scoreboard players set @s smp.stats 0
execute as @a if score @s smp.initialized matches 1.. run scoreboard players enable @s smp.stats
