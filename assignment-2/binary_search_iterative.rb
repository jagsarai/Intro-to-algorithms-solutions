def binary_search(array, n)
    low = 0
    high = array.size - 1

    while low <= high do 
        mid = (low + high) / 2

        if array[mid] < n 
            low = mid + 1
        elsif array[mid] > n 
            high = mid - 1
        else
            return mid
        end
    end
    return nil
end

arr = [2, 5, 6, 7, 8, 9, 10]

binary_search(arr, 5)
binary_search(arr, 0)
binary_search(arr, 6)
binary_search(arr, 10)
