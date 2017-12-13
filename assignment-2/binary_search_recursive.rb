def binary_search(array, n, low=0, high=array.size-1)
    return nil if low > high
    
    mid = (low + high) / 2
    return mid if array[mid] == n 

    if array[mid] < n 
        low = mid + 1
        binary_search(array, n, low, high)
    else
        high = mid - 1
        binary_search(array, n, low, high) 
    end
end

arr = [2, 5, 6, 7, 8, 9, 10]

binary_search(arr, 5)
binary_search(arr, 0)
binary_search(arr, 6)
binary_search(arr, 10)


