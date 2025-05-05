# quick-gps
QBCORE/QBOX | Quick GPS Script

## EVENTS
quickgps:client:setClosestConWaypoint -- 24/7's and LTD's
quickgps:client:setClosestBankWaypoint -- Banks
quickgps:client:setClosestClothingWaypoint -- Clothing Stores
quickgps:client:setClosestHairWaypoint -- Barber/Hair Stores
quickgps:client:setClosestTatWaypoint -- Tattoo
quickgps:client:setClosestGasWaypoint -- Gas station

## OX Radial Menu Preset
        {
            id = 'general',
            icon = 'rectangle-list',
            label = 'General',
            items = {
                {
                    id = 'gps',
                    icon = 'location-dot',
                    label = 'Quick GPS',
                    items = {
                        {
                            id = 'clothing',
                            icon = 'shirt',
                            label = 'Clothing Store',
                            event = 'quickgps:client:setClosestClothingWaypoint',
                        },
                        {
                            id = 'hair',
                            icon = 'scissors',
                            label = 'Barber Shop',
                            event = 'quickgps:client:setClosestHairWaypoint',
                        },
                        {
                            id = 'tattoo',
                            icon = 'syringe',
                            label = 'Tattoo Parlor',
                            event = 'quickgps:client:setClosestTatWaypoint',
                        },
                        {
                            id = 'gas',
                            icon = 'gas-pump',
                            label = 'Gas Station',
                            event = 'quickgps:client:setClosestGasWaypoint',

                        },
                        {
                            id = 'bank',
                            icon = 'vault',
                            label = 'Bank',
                            event = 'quickgps:client:setClosestBankWaypoint',
                        },
                        {
                            id = 'con',
                            icon = 'store',
                            label = 'Convenience Store',
                            event = 'quickgps:client:setClosestConWaypoint',
                        },
                    },
                },
            },
        },
    },
