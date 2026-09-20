# pi.hp = Vanilla-Gesundheit in halben Herzen, pi.ticks = Vanilla-Spielzeit (zaehlt ab dem Anlegen, siehe README)
scoreboard objectives add pi dummy
scoreboard objectives add pi.hp health
scoreboard objectives add pi.ticks minecraft.custom:minecraft.play_time
scoreboard objectives add pi.slot dummy
# Anzeige: Herzen unter dem Namen, Spielzeit in der Tab-Liste
scoreboard objectives add hearts dummy {"text":"❤","color":"red"}
scoreboard objectives add playtime dummy {"text":"Spielzeit"}
scoreboard objectives setdisplay below_name hearts
scoreboard objectives setdisplay list playtime

scoreboard players set #two pi 2
scoreboard players set #60 pi 60
scoreboard players set #1200 pi 1200
scoreboard players set #t pi 0
scoreboard players set #sec pi 0
execute unless score #next pi = #next pi run scoreboard players set #next pi 0
