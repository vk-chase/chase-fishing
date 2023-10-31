
--- if you wanna translate, use this and make your own in the locales folder, cheers

local Translations = {
    error = {
        -- sell shop
        negative = 'Trying to sell a negative amount?',
        no_items = 'Not enough items',
        no_license = 'You do not have %{value} license',

        --lost fish 
        okokcaughtfishtitle = 'Fishing', -- the title of the notificaiton if you use okok (now also used for RTX header Notifications)
        lostfish = 'Fish got away!..',

        --lures missing
        missingchub = 'You dont have a Chub Shiner!...',
        missingfrog = 'You dont have a Plastic Frog!...',
        missingspook = 'You dont have a Super Spook TopWater!...',
        missingtwitch = 'You dont have a InShore Twitch Lure!...',
        missingeel = 'You dont have a Blue Eel!...',
        missingsquid = 'You dont have a Squid Lure!...',
        missingstinger = 'You dont have any Stinger Bait!...',
        missingswolfy = 'You dont have a Swolfy Big Fish!...',
        missingskipper = 'You dont have a Yellow Skipper!...',
        missingsnakehead = 'You dont have a Snakehead Peche Iscas!...',
        missingdryfly = 'You dont have a Dry Fly Lure!...',

        notwading = 'Make sure you are wading, try a shoreline or in a creek!...',
        checkyoself = 'Make sure you face water and are on a sturdy surface!...',

        --errors for broke bitches
        notenoughmoneybank = 'You dont have enough money in your bank for this!..',
        notenoughmoneycash = 'You dont have enough cash on you for this!..',

        polebreak = 'Your Fishing Rod just snapped!...',

    },
    success = {
        --sell shop
        sold = 'You have sold %{value} x %{value2} for $%{value3}',

        --anchor
        gettinganchor = 'Retrieving Anchor!...',
        stowanchor = 'Anchor Disabled and Stowed!...',
        dropanchor = 'Dropping Anchor!...',
        lockedanchor = 'Anchor is locked in!...',

        tackleboxopen = 'Grabbing Bait..',
        savedbait = 'Managed to save the bait off that cast!...',
        rentalheader = 'Outdoor Rentals',-- only for okok / rtx notifications
        rentalreturned = 'Success, Rental Returned',

    },
    bait = {-- this is the menu when you use the angler pole 
            -- all the other menus / target locations are in the open source in client folder
        header = 'Angeler Pole',
        headertext = 'Choose the Lure/Bait to Attach!',
        chub ='Chub Shiner',
        frog ='Plastic Frog',
        spook ='Super Spook Top Water',
        twitch ='Inshore Twitch Lure',
        eel ='Blue Eel',
        squid ='Squid Lure',
        stinger ='Stinger Bait',
        swolfy ='Swolfy Big Fish',
        skipper ='Yellow Skipper',
        snakehead ='Snakehead Peche Iscas',
        closemenu ='< Close',
        
    },
    info = { 
        -- sell shop
        title = 'Sell Goods',
        open_return = 'Open the Goods Shop',
        sell = 'Sell Goods',
        sell_return = 'Sell Goods to Shop',
        fish_closed = 'Store is closed. Come back between %{value}:00 AM - %{value2}:00 PM',
        sell_items = 'Selling Price $%{value}',
        back = '⬅ Go Back',
        max = 'Max Amount %{value}',
        okoksoldfishtitle = 'Sold',
        okoknotsoldfishtitle = 'Could Not Sell',

        -- catching fish success
        okokcaughtfishtitle = 'Fishing', -- the title of the notificaiton if you use okok 
        caughtfish = 'Fish Caught..',
        
        --misc
        boatrentheader = 'Boat Rental',
        boatreturnheader = 'Return Boat Rental',
        atvrentalheader = 'ATV Rental',
        atvreturnheader = 'Return ATV Rental',

        atvreturntomenu = 'Return to Main Menu',
        boatreturnheader = 'Return Boat Rental',




    },


}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})