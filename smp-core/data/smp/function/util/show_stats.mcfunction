# === Statistiken anzeigen ===
# Wird über /trigger smp.stats aufgerufen

tellraw @s {text:"═══════ Deine Statistiken ═══════",color:"gold",bold:1b}
tellraw @s ["",{text:"❤ Leben: ",color:"red"},{score:{name:"@s",objective:"smp.lives"},color:"white"},{text:"  ",color:"gray"},{text:"☠ Tode: ",color:"gray"},{score:{name:"@s",objective:"smp.deaths"},color:"white"}]
tellraw @s ["",{text:"⚔ PvP-Kills: ",color:"yellow"},{score:{name:"@s",objective:"smp.pvp_kills"},color:"white"}]
tellraw @s ["",{text:"📜 Quests gesamt: ",color:"aqua"},{score:{name:"@s",objective:"smp.quests_done"},color:"white"}]
tellraw @s ["",{text:"🔥 Quest-Streak: ",color:"gold"},{score:{name:"@s",objective:"smp.streak"},color:"white"},{text:" Tage",color:"white"}]

execute if score @s smp.rank matches 0    run tellraw @s ["",{text:"🏅 Rang: ",color:"yellow"},{text:"Neuling",color:"gray"}]
execute if score @s smp.rank matches 1    run tellraw @s ["",{text:"🏅 Rang: ",color:"yellow"},{text:"Abenteurer ⭐",color:"green"}]
execute if score @s smp.rank matches 2    run tellraw @s ["",{text:"🏅 Rang: ",color:"yellow"},{text:"Krieger ⚔",color:"aqua"}]
execute if score @s smp.rank matches 3    run tellraw @s ["",{text:"🏅 Rang: ",color:"yellow"},{text:"Veteran 🛡",color:"gold"}]
execute if score @s smp.rank matches 4..  run tellraw @s ["",{text:"🏅 Rang: ",color:"yellow"},{text:"⭐ Legende 👑",color:"light_purple",bold:1b}]

tellraw @s {text:"─── Wochenchallenge ───",color:"gold"}
execute if score #server smp.week_done matches 1 run tellraw @s {text:"✓ Diese Woche abgeschlossen!",color:"green"}
execute if score #server smp.week_done matches 0 run tellraw @s ["",{text:"Fortschritt: ",color:"white"},{score:{name:"#server",objective:"smp.week_progress"},color:"yellow"},{text:" / ",color:"gray"},{score:{name:"#server",objective:"smp.week_goal"},color:"yellow"},{text:" Quests",color:"white"}]
tellraw @s {text:"═══════════════════════",color:"gold"}
