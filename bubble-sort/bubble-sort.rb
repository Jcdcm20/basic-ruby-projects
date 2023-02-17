def bubble_sort(array) 
    sorted = false
    i = 0
    c = 0

    while i < (array.length - 1)
        if array[i] > array[i + 1]
            array[i], array[i + 1] = array[i + 1], array[i]
            c += 1
        end
           
        i += 1
    end
          
    if c == 0
        sorted = true
    else
        bubble_sort(array)
    end
    
    return array
end

sorted_array = bubble_sort([4, 3, 78, 2, 0, 2])

p sorted_array