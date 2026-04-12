# === Verbleibende Zeit in H/M/S umrechnen ===
# Input:  smp.timeout_total_s (@s) = verbleibende Sekunden gesamt
# Output: smp.timeout_h / smp.timeout_m / smp.timeout_s (@s)

# --- Stunden ---
scoreboard players operation @s smp.timeout_h = @s smp.timeout_total_s
scoreboard players operation @s smp.timeout_h /= #3600 smp.const

# Sekunden nach Stunden-Abzug (total_s mod 3600)
scoreboard players operation @s smp.tmp2 = @s smp.timeout_h
scoreboard players operation @s smp.tmp2 *= #3600 smp.const
scoreboard players operation @s smp.tmp = @s smp.timeout_total_s
scoreboard players operation @s smp.tmp -= @s smp.tmp2

# --- Minuten ---
scoreboard players operation @s smp.timeout_m = @s smp.tmp
scoreboard players operation @s smp.timeout_m /= #60 smp.const

# Sekunden nach Minuten-Abzug (tmp mod 60)
scoreboard players operation @s smp.tmp2 = @s smp.timeout_m
scoreboard players operation @s smp.tmp2 *= #60 smp.const
scoreboard players operation @s smp.tmp -= @s smp.tmp2

# --- Sekunden ---
scoreboard players operation @s smp.timeout_s = @s smp.tmp
