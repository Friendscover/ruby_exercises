def bubble_sort(array)
    i = 0
    #its always a n² iteration because I only increment i after every loop of array.each -> condition if first iteration is finished mmaybe pop elemment out of array to reduce iteration because the highest number is at the end
    while i < array.length
        array.each_with_index do |item, index|
            if(array[index + 1] != nil && item > array[index + 1])
                array[index] = array[index + 1]
                array[index + 1] = item
            end
        end
        i += 1
    end
    array
end

puts bubble_sort([4,3,78,2,0,2])
puts bubble_sort([8,7,6,5,4,3,2,0,1])