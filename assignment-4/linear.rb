def find(n, arr)
    iterations = 0
    for i in (0..arr.length - 1)
        iterations += 1
        if arr[i] == n 
            break 
        end
    end
    p 'total iterations: ' + iterations.to_s
end

arr = [1]
arr = [1,2]
arr = [1,2,3]
arr = [1,2,3,4]
arr = [1,2,3,4,5]
arr = [1,2,3,4,5,6]
arr = [1,2,3,4,5,6,7]
arr = [1,2,3,4,5,6,7,8]
arr = [1,2,3,4,5,6,7,8,9]
arr = [1,2,3,4,5,6,7,8,9,10]

find(1, arr)
find(2, arr)
find(3, arr)
find(4, arr)
find(5, arr)
find(6, arr)
find(7, arr)
find(8, arr)
find(9, arr)
find(10, arr)