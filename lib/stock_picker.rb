def stock_picker(stock_array)
    x, buy, margin, sell = 0, 0, 0, 0
    
    while x < stock_array.length
        check_to_buy = stock_array.shift
        stock_array.each do |check_to_sell|
            if((check_to_sell - check_to_buy ) > margin)
                sell = check_to_sell
                buy = check_to_buy
                margin = (check_to_sell - check_to_buy)
            end
        end
        x += 1
    end

    puts "Margin #{margin}"
    puts "Buy at #{buy}"
    puts "Sell at #{sell}"

end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([1,2,3,4,5,6])
stock_picker([2,4,7,19,2,10,22,1,3,12])