# === Zeitalter-Fortschritt: Diamant-Zeitalter ===
# Admin-Befehl: /function smp:ages/advance_to_diamond

scoreboard players set #server smp.age 2
execute as @a run function smp:ages/apply_restrictions
tellraw @a {text:"[SMP] Das Diamant-Zeitalter hat begonnen! Alle Ausrüstungen sind nun erlaubt.",color:"aqua",bold:1b}
title @a title {text:"💎 Diamant-Zeitalter",color:"aqua",bold:1b}
title @a subtitle {text:"Alle Ausrüstungen freigeschaltet!",color:"white"}

# Zeitalter-Ereignis: Feuerwerk & Klang
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 10 1.2 0
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10 1 0
playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 10 1 0
execute at @a run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 3 force
execute at @a run particle minecraft:firework ~ ~2 ~ 0.5 1 0.5 0.05 150 force
