# MG-Lootspots

A standalone FiveM loot-searching resource built with ox_target, ox_lib, and ox_inventory.

FEATURES
- Standalone resource
- Uses ox_target interactions
- Uses ox_lib progress bars
- Uses ox_lib context menus
- Uses ox_lib notifications
- Server-side reward validation
- Server-side cooldown protection
- Per-location cooldown timers
- Configurable loot tables
- Configurable progress bar text
- Configurable progress bar duration
- Configurable target labels
- Optional police alerts per location
- Configurable police alert chances
- Shared cooldowns between all players

DEPENDENCIES
ensure ox_lib
ensure ox_target
ensure ox_inventory
ensure ox_lootspots

INSTALLATION
1. Place the resource in your resources folder.
2. Ensure all dependencies are installed.
3. Add the ensures above to server.cfg.
4. Restart the server.

LOCATION EXAMPLE
coords = vec3(...)
targetLabel = 'Search Shelf'
progressLabel = 'Searching Shelf'
progressTime = 5000
cooldown = 300
policeAlert = true
alertChance = 35

LOOT TABLE EXAMPLE
lootTable = {
 {label='Scrap Metal', item='scrapmetal', amount=5},
 {label='Electronics', item='electronics', amount=2}
}

COOLDOWNS
Cooldowns are handled server-side and shared between all players.
Cooldown notifications display remaining time in minutes and seconds.