# === Eisen/Gold-Tier: Erkannt ===
# Wird als @s (craftender Spieler) via Advancement aufgerufen

# Im Kupfer-Zeitalter: Items konfiszieren und Materialien zurückgeben
execute if score #server smp.age matches 0 run function smp:ages/guard/confiscate_iron_tier

# Advancement immer zurücksetzen (damit er beim nächsten Craft wieder feuert)
advancement revoke @s only smp:ages/guard/iron_sword
advancement revoke @s only smp:ages/guard/iron_pickaxe
advancement revoke @s only smp:ages/guard/iron_axe
advancement revoke @s only smp:ages/guard/iron_shovel
advancement revoke @s only smp:ages/guard/iron_hoe
advancement revoke @s only smp:ages/guard/iron_helmet
advancement revoke @s only smp:ages/guard/iron_chestplate
advancement revoke @s only smp:ages/guard/iron_leggings
advancement revoke @s only smp:ages/guard/iron_boots
advancement revoke @s only smp:ages/guard/golden_sword
advancement revoke @s only smp:ages/guard/golden_pickaxe
advancement revoke @s only smp:ages/guard/golden_axe
advancement revoke @s only smp:ages/guard/golden_shovel
advancement revoke @s only smp:ages/guard/golden_hoe
advancement revoke @s only smp:ages/guard/golden_helmet
advancement revoke @s only smp:ages/guard/golden_chestplate
advancement revoke @s only smp:ages/guard/golden_leggings
advancement revoke @s only smp:ages/guard/golden_boots
