Config = {}

-- Notification system: "qb", "ox", "mythic", "okok" or "custom"
Config.Notify = "ox"

-- Locale setting: "en", "es", "fr", "it", "pt", "de",
Config.Locale = "en"

-- Success Messages
Config.SuccessConMSG = "GPS set to nearest convenience store."
Config.SuccessGasMSG = "GPS set to nearest gas station."
Config.SuccessBankMSG = "GPS set to nearest bank."
Config.SuccessClothingMSG = "GPS set to nearest clothing store."
Config.SuccessHairMSG = "GPS set to nearest barber store."
Config.SuccessTattooMSG = "GPS set to nearest tattoo parlor."

-- Error Messages
Config.ErrorConMSG = "Couldn't find a convenience store."
Config.ErrorGasMSG = "Couldn't find a gas station."
Config.ErrorBankMSG = "Couldn't find a bank."
Config.ErrorClothingMSG = "Couldn't find a clothing store."
Config.ErrorHairMSG = "Couldn't find a barber store."
Config.ErrorTattooMSG = "Couldn't find a tattoo parlor."

--[[

All the events. So you dont have to go through the client file.

quickgps:client:setClosestConWaypoint -- 24/7's and LTD's
quickgps:client:setClosestBankWaypoint -- Banks
quickgps:client:setClosestClothingWaypoint -- Clothing Stores
quickgps:client:setClosestHairWaypoint -- Barber/Hair Stores
quickgps:client:setClosestTatWaypoint -- Tattoo
quickgps:client:setClosestGasWaypoint -- Gas station

OX Radial Menu Preset:

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
]]