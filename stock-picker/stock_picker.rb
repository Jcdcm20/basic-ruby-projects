# frozen_string_literal: true

def stock_picker(prices)
  lowest = prices[0]
  profit = low_index = high_index = 0

  prices.each_with_index do |price, index|
    if price < lowest
      lowest = index
      low_index = index
    elsif (price - lowest) > profit
      profit = price - lowest
      high_index = index
    end
  end

  [low_index, high_index]
end

stocks = [17, 3, 6, 9, 15, 8, 5, 1, 10]

puts stock_picker(stocks)
