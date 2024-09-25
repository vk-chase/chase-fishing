local blipData = {
    {coords = Config.OutdoorShop.Location, sprite = 141, name = "Fishing Shop"},
    {coords = Config.BoatRentals.PedLocation, sprite = 404, name = "Boat Rentals"},
    {coords = Config.SellFish.Blip, sprite = 405, name = "Fish Market"}
}

local function CreateBlip(data)
    local blip = AddBlipForCoord(data.coords.x, data.coords.y, data.coords.z)
    SetBlipSprite(blip, data.sprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 1.0)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, 25)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(data.name)
    EndTextCommandSetBlipName(blip)
    return blip
end

Citizen.CreateThread(function()
    for _, data in ipairs(blipData) do
        CreateBlip(data)
    end
end)
