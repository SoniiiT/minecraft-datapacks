# === Rang-Aufstieg ankündigen ===
# Neuer Rang steht in smp.tmp2

execute if score @s smp.tmp2 matches 1 run tellraw @a ["",{text:"[SMP] ",color:"gold",bold:1b},{selector:"@s",color:"white"},{text:" ist jetzt ",color:"white"},{text:"Abenteurer",color:"green"},{text:" ⭐",color:"green"}]
execute if score @s smp.tmp2 matches 2 run tellraw @a ["",{text:"[SMP] ",color:"gold",bold:1b},{selector:"@s",color:"white"},{text:" ist jetzt ",color:"white"},{text:"Krieger",color:"aqua"},{text:" ⚔",color:"aqua"}]
execute if score @s smp.tmp2 matches 3 run tellraw @a ["",{text:"[SMP] ",color:"gold",bold:1b},{selector:"@s",color:"white"},{text:" ist jetzt ",color:"white"},{text:"Veteran",color:"gold"},{text:" 🛡",color:"gold"}]
execute if score @s smp.tmp2 matches 4 run tellraw @a ["",{text:"[SMP] ",color:"gold",bold:1b},{selector:"@s",color:"white"},{text:" ist jetzt eine ",color:"white"},{text:"Legende",color:"light_purple",bold:1b},{text:" 👑",color:"light_purple"}]

title @s title {text:"Rang-Aufstieg!",color:"gold",bold:1b}
execute if score @s smp.tmp2 matches 1 run title @s subtitle {text:"Abenteurer ⭐",color:"green",bold:1b}
execute if score @s smp.tmp2 matches 2 run title @s subtitle {text:"Krieger ⚔",color:"aqua",bold:1b}
execute if score @s smp.tmp2 matches 3 run title @s subtitle {text:"Veteran 🛡",color:"gold",bold:1b}
execute if score @s smp.tmp2 matches 4 run title @s subtitle {text:"Legende 👑",color:"light_purple",bold:1b}

playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 0
