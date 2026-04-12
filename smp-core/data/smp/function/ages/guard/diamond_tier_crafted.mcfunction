# === Diamant-Tier: Erkannt ===
# Wird als @s (craftender Spieler) via Advancement aufgerufen
# Diamant ist erst im Diamant-Zeitalter (age=2) erlaubt

# Im Kupfer- oder Eisen-Zeitalter: Items konfiszieren und Materialien zurückgeben
execute if score #server smp.age matches 0..1 run function smp:ages/guard/confiscate_diamond_tier

# Advancement immer zurücksetzen (damit er beim nächsten Craft wieder feuert)
advancement revoke @s only smp:ages/guard/diamond_sword
advancement revoke @s only smp:ages/guard/diamond_pickaxe
advancement revoke @s only smp:ages/guard/diamond_axe
advancement revoke @s only smp:ages/guard/diamond_shovel
advancement revoke @s only smp:ages/guard/diamond_hoe
advancement revoke @s only smp:ages/guard/diamond_helmet
advancement revoke @s only smp:ages/guard/diamond_chestplate
advancement revoke @s only smp:ages/guard/diamond_leggings
advancement revoke @s only smp:ages/guard/diamond_boots
