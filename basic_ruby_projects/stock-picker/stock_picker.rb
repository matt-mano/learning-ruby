def stock_picker(prices)
  pair = [0,0]
  profit = 0
  prices.each_with_index do |price, i|
    buy = price
    max_sell = buy
    sell_idx = i

    #loop through to find best sell
    # this could be a 2 pointer instead
    prices.drop(i + 1).each_with_index do |price_2, j|
      if price_2 > max_sell
        max_sell = price_2
        sell_idx = j + i + 1
      end
    end

    #if this profit is better, store it
    if max_sell - buy > profit
      pair = [i, sell_idx]
      profit = max_sell - buy
    end
  end

  pair
end

stonks = stock_picker([17,3,6,9,15,8,6,1,10])
puts "Buy at #{stonks[0]} and sell at #{stonks[1]}"
