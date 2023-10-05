def stock_picker(array_stock_prices)

  best_days = [0, 1]

  max_profit = array_stock_prices[1] - array_stock_prices[0]

  array_stock_prices.each_with_index do |price1, day1| 

    array_stock_prices.each_with_index do |price2, day2|

      if (day2 > day1) && (price2 - price1 > max_profit)
        best_days = [day1, day2]
        max_profit = price2 - price1
      end

    end

  end

  p best_days

end

stock_picker([17,3,6,9,15,8,6,1,10])