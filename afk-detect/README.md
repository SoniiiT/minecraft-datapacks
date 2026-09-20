# AFK Detect

Datapack für Minecraft 26.3.

Wer 5 Minuten lang weder Position noch Blickrichtung ändert, bekommt den Tag `afk` und im Chat steht `<Name> ist jetzt AFK.` Sobald sich der Spieler wieder bewegt oder umschaut, wird der Tag entfernt und es steht `<Name> ist wieder da.` im Chat. Spieler im Bett und Spectator gelten nie als AFK.

- **Serverlast:** Jeder Spieler wird nur alle 5 Sekunden geprüft, verteilt auf verschiedene Ticks, weil das Lesen von Spieler-NBT teuer ist. Dadurch tritt AFK bis zu 5 Sekunden später ein, und der Timeout zählt in 5-Sekunden-Schritten.
- **Timeout ändern:** `/scoreboard players set #timeout afk <Sekunden>` (Standard 300; bleibt nach `/reload` erhalten).
- **Zusammenspiel mit `sleep-vote`:** AFK-Spieler zählen dort nicht mit, weder für die 50-%-Regel noch für „alle schlafen“, und bekommen keinen Boost. Ohne dieses Pack ändert sich bei `sleep-vote` nichts, der Tag existiert dann einfach nie.
- Der Tag lässt sich auch für eigene Regeln nutzen: `@a[tag=afk]` bzw. `@a[tag=!afk]`.

Installation: Ordner `afk-detect` in `<welt>/datapacks/` kopieren, dann `/reload`.
