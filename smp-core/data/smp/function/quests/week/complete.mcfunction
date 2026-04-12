# === Wochenchallenge: Ziel erreicht! ===
# Wird einmalig aufgerufen wenn week_progress >= week_goal.

scoreboard players set #server smp.week_done 1

tellraw @a ["",{text:"[SMP] ",color:"gold",bold:1b},{text:"🏆 Wochenchallenge abgeschlossen! Alle Spieler erhalten eine Belohnung!",color:"yellow",bold:1b}]
title @a title {text:"🏆 Wochenchallenge!",color:"gold",bold:1b}
title @a subtitle {text:"Gemeinsames Ziel erreicht!",color:"yellow"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 10 1 0

# Belohnungen für alle Online-Spieler
give @a minecraft:diamond 3
give @a minecraft:experience_bottle 5
