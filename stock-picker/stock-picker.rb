def stock_picker(stocks) 
    lowest = stocks[0]
    profit = 0
    low_index = 0
    high_index = 0
    days = []

    stocks.each_with_index do |price, index|
        if price < lowest
            lowest = price
            low_index = index         
        else
            if (price - lowest) > profit
                profit = price - lowest
                days = [low_index, index]
            end
        end
    end
    p days
end

stocks = [17, 3, 6, 9, 15, 8, 5, 1, 10]

stock_picker(stocks)
