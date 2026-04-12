# === Zeitalter-Fortschritt: Eisen-Zeitalter ===
# Admin-Befehl: /function smp:ages/advance_to_iron

scoreboard players set #server smp.age 1
execute as @a run function smp:ages/apply_restrictions
tellraw @a {text:"[SMP] Das Eisen-Zeitalter hat begonnen! Eisen & Gold Ausrüstung ist nun erlaubt.",color:"gray",bold:1b}
title @a title {text:"⚙ Eisen-Zeitalter",color:"gray",bold:1b}
title @a subtitle {text:"Eisen & Gold Ausrüstung freigeschaltet!",color:"white"}

# Zeitalter-Ereignis: Feuerwerk & Klang
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 10 1.2 0
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 10 1 0
execute at @a run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
execute at @a run particle minecraft:firework ~ ~2 ~ 0.5 1 0.5 0.05 80 force
