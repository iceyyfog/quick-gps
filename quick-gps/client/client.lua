local resourceName = GetCurrentResourceName()
local utils = _G[resourceName].utils

-- NORMAL STORES --
local conStores = {
    vector3(25.7, -1347.3, 29.5),
    vector3(-3038.9, 585.95, 7.91),
    vector3(-3241.9, 1001.4, 12.8),
    vector3(1728.0, 6416.1, 35.0),
    vector3(1697.4, 4923.2, 42.06),
    vector3(1961.4, 3740.6, 32.34),
    vector3(2678.9, 3280.6, 55.24),
    vector3(546.43, 2671.71, 42.16),
    vector3(2557.4, 382.2, 108.6),
    vector3(373.9, 325.8, 103.56),
    vector3(161.6, 6641.7, 31.7),
    vector3(-48.52, -1757.52, 29.42),
    vector3(-707.5, -914.3, 19.22),
    vector3(-1820.5, 792.5, 138.1),
    vector3(1163.4, -323.8, 69.2),
    vector3(1135.8, -982.2, 46.4),
}

RegisterNetEvent('quickgps:client:setClosestConWaypoint', function()
    local playerCoords = GetEntityCoords(PlayerPedId())
    local closestDist = nil
    local closestCoords = nil

    for _, gasCoord in pairs(conStores) do
        local dist = #(playerCoords - gasCoord)
        if not closestDist or dist < closestDist then
            closestDist = dist
            closestCoords = gasCoord
        end
    end

    if closestCoords then
        SetNewWaypoint(closestCoords.x, closestCoords.y)
        utils.Notify(Config.SuccessConMSG, "success")
    else
        utils.Notify(Config.ErrorConMSG, "error")
    end
end)

-- BANKS
local bankStores = {
    -- Fleeca Banks
    vector3(151.7181, -1035.3784, 29.3392),
    vector3(313.5582, -271.8541, 53.9358),
    vector3(-348.4770, -40.2843, 49.5330),
    vector3(-1213.6951, -320.8552, 38.3405),
    vector3(-2968.3650, 480.5246, 15.5123),
    vector3(1172.9327, 2694.9370, 37.8660),
    vector3(-113.17, 6470.39, 31.63),
    vector3(232.96, 214.53, 106.29),
}

RegisterNetEvent('quickgps:client:setClosestBankWaypoint', function()
    local playerCoords = GetEntityCoords(PlayerPedId())
    local closestDist = nil
    local closestCoords = nil

    for _, gasCoord in pairs(bankStores) do
        local dist = #(playerCoords - gasCoord)
        if not closestDist or dist < closestDist then
            closestDist = dist
            closestCoords = gasCoord
        end
    end

    if closestCoords then
        SetNewWaypoint(closestCoords.x, closestCoords.y)
        utils.Notify(Config.SuccessBankMSG, "success")
    else
        utils.Notify(Config.ErrorBankMSG, "error")
    end
end)

-- CLOTHING STORES --
local clothingStores = {
    vector3(72.3, -1399.1, 29.4),
    vector3(-703.8, -152.3, 37.4),
    vector3(-167.9, -299.0, 39.7),
    vector3(428.7, -800.1, 29.5),
    vector3(-829.4, -1073.7, 11.3),
    vector3(-1449.1, -238.3, 49.8),
    vector3(11.6, 6514.2, 31.9),
    vector3(123.6, -219.4, 54.6),
    vector3(1696.3, 4829.3, 42.1),
    vector3(618.1, 2759.6, 42.1),
    vector3(1190.6, 2713.4, 38.2),
    vector3(-1193.4, -772.3, 17.3),
    vector3(-3172.5, 1048.1, 20.9),
    vector3(-1108.4, 2708.9, 19.1),
}

RegisterNetEvent('quickgps:client:setClosestClothingWaypoint', function()
    local playerCoords = GetEntityCoords(PlayerPedId())
    local closestDist = nil
    local closestCoords = nil

    for _, gasCoord in pairs(clothingStores) do
        local dist = #(playerCoords - gasCoord)
        if not closestDist or dist < closestDist then
            closestDist = dist
            closestCoords = gasCoord
        end
    end

    if closestCoords then
        SetNewWaypoint(closestCoords.x, closestCoords.y)
        utils.Notify(Config.SuccessClothingMSG, "success")
    else
        utils.Notify(Config.ErrorClothingMSG, "error")
    end
end)

-- HAIR STORES --
local hairStores = {
    vector3(-1282.0, -1117.1, 6.0),
    vector3(1931.5, 3729.7, 32.8),
    vector3(1212.8, -472.9, 66.2),
    vector3(-32.9, -152.3, 57.1),
    vector3(-278.1, 6228.5, 31.7),
}

RegisterNetEvent('quickgps:client:setClosestHairWaypoint', function()
    local playerCoords = GetEntityCoords(PlayerPedId())
    local closestDist = nil
    local closestCoords = nil

    for _, gasCoord in pairs(hairStores) do
        local dist = #(playerCoords - gasCoord)
        if not closestDist or dist < closestDist then
            closestDist = dist
            closestCoords = gasCoord
        end
    end

    if closestCoords then
        SetNewWaypoint(closestCoords.x, closestCoords.y)
        utils.Notify(Config.SuccessHairMSG, "success")
    else
        utils.Notify(Config.ErrorHairMSG, "error")
    end
end)

-- TATTO PARLOR --
local tattooStores = {
    vector3(1322.6, -1651.9, 52.3),
    vector3(-1153.6, -1425.6, 4.9),
    vector3(322.1, 180.4, 103.6),
    vector3(-3170.0, 1075.0, 20.8),
    vector3(1864.6, 3747.7, 33.0),
    vector3(-293.7, 6200.0, 31.4),
}

RegisterNetEvent('quickgps:client:setClosestTatWaypoint', function()
    local playerCoords = GetEntityCoords(PlayerPedId())
    local closestDist = nil
    local closestCoords = nil

    for _, gasCoord in pairs(tattooStores) do
        local dist = #(playerCoords - gasCoord)
        if not closestDist or dist < closestDist then
            closestDist = dist
            closestCoords = gasCoord
        end
    end

    if closestCoords then
        SetNewWaypoint(closestCoords.x, closestCoords.y)
        utils.Notify(Config.SuccessTattooMSG, "success")
    else
        utils.Notify(Config.ErrorTattooMSG, "error")
    end
end)

-- GAS STATIONS --
local gasStations = {
    vector3(49.4187, 2778.793, 58.043),
    vector3(263.894, 2606.463, 44.983),
    vector3(1039.958, 2671.134, 39.550),
    vector3(1207.26, 2660.175, 37.899),
    vector3(2539.685, 2594.192, 37.944),
    vector3(2679.858, 3263.946, 55.240),
    vector3(2005.055, 3773.887, 32.403),
    vector3(1687.156, 4929.392, 42.078),
    vector3(1701.314, 6416.028, 32.763),
    vector3(179.857, 6602.839, 31.868),
    vector3(-94.4619, 6419.594, 31.489),
    vector3(-2554.996, 2334.402, 33.078),
    vector3(-1800.375, 803.661, 138.651),
    vector3(-1437.622, -276.747, 46.207),
    vector3(-2096.243, -320.286, 13.168),
    vector3(-724.619, -935.1631, 19.213),
    vector3(-526.019, -1211.003, 18.184),
    vector3(-70.2148, -1761.792, 29.534),
    vector3(265.648, -1261.309, 29.292),
    vector3(819.653, -1028.846, 26.403),
    vector3(1208.951, -1402.567, 35.224),
    vector3(1181.381, -330.847, 69.316),
    vector3(620.843, 269.100, 103.089),
    vector3(2581.321, 362.039, 108.468),
    vector3(1785.321, 3330.201, 41.381),
}

RegisterNetEvent('quickgps:client:setClosestGasWaypoint', function()
    local playerCoords = GetEntityCoords(PlayerPedId())
    local closestDist = nil
    local closestCoords = nil

    for _, gasCoord in pairs(gasStations) do
        local dist = #(playerCoords - gasCoord)
        if not closestDist or dist < closestDist then
            closestDist = dist
            closestCoords = gasCoord
        end
    end

    if closestCoords then
        SetNewWaypoint(closestCoords.x, closestCoords.y)
        utils.Notify(Config.SuccessGasMSG, "success")
    else
        utils.Notify(Config.ErrorGasMSG, "error")
    end
end)