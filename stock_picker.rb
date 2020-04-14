def stock_picker(stock_array)
    array_length = stock_array.length
    x, buy, margin, sell = 0, 0, 0, 0
    
    while x < array_length
        check_to_buy = stock_array.shift
        stock_array.each do |might_sell|
            if((might_sell - check_to_buy ) > margin)
                sell = might_sell
                buy = check_to_buy
                margin = (might_sell - check_to_buy)
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