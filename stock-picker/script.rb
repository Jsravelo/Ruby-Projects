def stock_picker(prices)

    max_profit = 0 
    min_price = prices.first 
    buy_day = 0
    sell_day = 0
    best_day = 0

    prices.each_with_index do |price, day|

        # Checks for the lowest price excluding the last element, and records that day as a potential buy day
        if price < min_price && day != prices.length-1
            min_price = price
            buy_day = day
        end

        # Calculates the profit of selling if bought at current price minus the minimum price so far
        profit = price - min_price
        
        # If profit is greater than the maximum profit so far, record that profit and record as potential sell day
        if profit > max_profit
            max_profit = profit
            sell_day = day
            
            # The best day will be when the last max_profit has been assigned
            best_day = buy_day
        end

    end

    [best_day, sell_day]

end

p stock_picker([17,3,6,9,15,8,6,1,10])

