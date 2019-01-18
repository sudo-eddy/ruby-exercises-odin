def stock_picker(stocks)
  buy_now = nil
  sell_now = nil
  max_profit = 0
  buy_constrain = stocks[-2]

  (0..buy_constrain).each do |buy|
    ((buy + 1)..stocks[-1]).each do |sell|
      price_diff = stocks[sell].to_i - stocks[buy].to_i

      if price_diff > max_profit
        buy_now = buy
        sell_now = sell
        max_profit = price_diff
      end
    end
  end
  puts "day #{buy_now}: buy at #{stocks[buy_now]}"
  puts "day #{sell_now}: sell at #{stocks[sell_now]}"
  puts "profit of #{max_profit}"

  return [buy_now, sell_now]
end

stock_picker([17,3,6,9,15,8,6,1,10])
