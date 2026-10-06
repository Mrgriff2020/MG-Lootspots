Config = {}
Config.DefaultProgressDuration = 5000
Config.Locations = {
    {
        coords = vec3(1134.5121, -1528.4658, 35.4523),
        targetLabel = 'Search Shelf',
        progressLabel = 'Searching Shelf',
        progressTime = 5000,
        cooldown = 300,
    ---------------------------------------------------------------
    --                      Police Alert    
    ---------------------------------------------------------------
        policeAlert = true,
        alertChance = 35,
    ---------------------------------------------------------------
    --                       Loot Table
    ---------------------------------------------------------------
        lootTable = {
            {
                label = 'Scarp Metal',
                item = 'scrapmetal',
                amount = math.random(1, 3)
            },

            {
                label = 'Scarp Metal',
                item = 'scrapmetal',
                amount = math.random(1, 3)
            },

            {
                label = 'Scarp Metal',
                item = 'scrapmetal',
                amount = math.random(1, 3)
            }
        }
    },
    
    -- Add More Here!



    
    -- EXAMPLE!!!

    --{
    --    coords = vec3(1134.5121, -1528.4658, 35.4523),
    --    targetLabel = 'Search Shelf',
    --    progressLabel = 'Searching Shelf',
    --    progressTime = 5000,
    --    cooldown = 300,
    -----------------------------------------------------------------
    ----                      Police Alert    
    -----------------------------------------------------------------
    --    policeAlert = true,
    --    alertChance = 35,
    -----------------------------------------------------------------
    ----                       Loot Table
    -----------------------------------------------------------------
    --    lootTable = {
    --        {
    --            label = 'Scarp Metal',
    --            item = 'scrapmetal',
    --            amount = math.random(1, 3)
    --        },
    --
    --        {
    --            label = 'Scarp Metal',
    --            item = 'scrapmetal',
    --            amount = math.random(1, 3)
    --        },
    --
    --        {
    --            label = 'Scarp Metal',
    --            item = 'scrapmetal',
    --            amount = math.random(1, 3)
    --        }
    --    }
    --},
}