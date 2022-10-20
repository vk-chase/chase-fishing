local QBCore = exports['qb-core']:GetCoreObject()

--===================== BUYING MENUS =======================
RegisterNetEvent('chase-fishing:client:ShopMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Fishing Shop",
            isMenuHeader = true,
        },
        {
            header = "Fishing Rod",
            txt = "Price: <br> 185$",
            params = {
                event = "chase-fishing:client:BuyRod",
            }
        },
        {
            header = "Buy Anchor",
            txt = "Price: <br> 1800$",
            params = {
                event = "chase-fishing:client:anchor",
            }
        },
        {
            header = "Buy Ice Box",
            txt = "Price: <br> 3000$",
            params = {
                event = "chase-fishing:client:fishicebox",
            }
        },

        {
            header = "Rent a Boat",
            txt = "Price: <br> 250$",
            params = {
                event = "chase-fishing:client:RentBoat",
            }
        },
        {
            header = "Sell All Fish",
            txt = "You'll sell all fish that you have on you <br> Prices Per Item: <br> Tin Can - $12 <br> Fishing Key - $36 <br> Flounder - $18 <br> Stingray - $25 <br> Cod Fish - $28 <br> Mackerel - $31 <br> Bass - $35 <br> Hammerhead Shark - $188 <br> Tiger Shark - $205 <br> Killer Whale - $225 <br> Dolphins - $225 <br> Tiger Shark - $225 <br> Exotic Fish - $611 ",
            params = {
            event = "chase-fishing:client:SellFishies",
            }
        },
        {
            header = "< Close",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    })
end)
