# === Wochenchallenge: Neue Woche ===
# Wird aufgerufen wenn week_days 7 erreicht (nach 7 Tagen).
# Setzt Fortschritt zurück und startet neue Herausforderung.

scoreboard players set #server smp.week_days 0
scoreboard players set #server smp.week_progress 0
scoreboard players set #server smp.week_done 0
# Ziel bleibt fix – ggf. hier anpassen (Standard: 10 gemeinsame Quest-Abschlüsse)
execute unless score #server smp.week_goal matches 1.. run scoreboard players set #server smp.week_goal 10

tellraw @a ["",{text:"[SMP] ",color:"gold",bold:1b},{text:"Eine neue Wochenchallenge beginnt! Schließt gemeinsam ",color:"yellow"},{score:{name:"#server",objective:"smp.week_goal"},color:"white"},{text:" Quests ab – alle erhalten eine Belohnung!",color:"yellow"}]
