require 'benchmark'
include Benchmark  

def heapsort(a)
    build_max_heap(a)
    x = []
    size = a.size - 1
    (size).downto(0) do |i|
        a[0], a[i] = a[i], a[0]
        x << a.pop()
        max_heapify(a, 0)
    end
    return x
end

def max_heapify(a, i)
    left = (2*i) + 1
    right = (2*i) + 2

    if left <= a.size - 1 and a[left] > a[i]
        max = left
    else
        max = i 
    end
    if right <= a.size - 1 and a[right] > a[max]
        max = right
    end 
    if max != i
        a[i], a[max] = a[max], a[i]
        max_heapify(a, max)
    end
end

def build_max_heap(a)
    # we know leaves on a tree will always be greater than size/2 so we conclude that they will satisfy the condition of the max heap therefore index 
    start = (a.size/2).floor
    (start).downto(0) do |i|
        max_heapify(a, i)
    end
end


heapsort([5,13,2,25,7,17,20,8,4])
heapsort([4,10,46,56,22,10,5,8,15,28,18,8,8])
heapsort([52,5,23,56,78,12,34,56,12])
heapsort([5,2])
heapsort([5,123,234,2123,44543,1232])
heapsort([5])
