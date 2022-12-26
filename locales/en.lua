local Translations = {
    error = {
        negative = 'Look i dont sell to you OK!',
        no_items = 'Not enough items',
    },
    success = {
        sold = 'You sold %{value} x %{value2} for $%{value3}',
        items_received = 'You received %{value} x %{value2}',
    },
    info = {
        title = 'Fish Shop',

        open_fish = 'Check out Fishing Shop',
        sell = 'Sell Items',
        sell_fish = 'Sell Items',
        sell_items = 'Value = $%{value}',
        back = '⬅ Go Back',
        max = 'Max Amount %{value}',

    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
