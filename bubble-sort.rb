def bubble_sort (array)
    i = 0
    moved = 0
    while (i < array.length-1) do
        if array[i] > array[i+1]
            moved = 1
            array[i], array[i+1] = array[i+1], array[i]
        end
        i += 1
    end
    if moved == 1
        array[0...-1] = bubble_sort(array[0...-1])
    end
    return array
end

bubble_sort([3,2,1]) # Should be [1,2,3]
bubble_sort([1]) # Should be [1]
bubble_sort([0,9,8,4,5,7,9]) # Should be [0,4,5,7,8,9,9]
bubble_sort([4,3,78,2,0,2]) # Should be [0,2,2,3,4,78]

def bubble_sort_by (array)
    i = 0
    while i < (array.length - 1)
        yield(array[i],array[i+1])
        i+=1
    end
end

output = []

bubble_sort_by(["hi","hello","hey"]) do |left,right|
    if left.length - right.length > 0
        output += [right,left]
    else
        output.push(left)
    end
end
output
# Should be ["hi", "hey", "hello"]
