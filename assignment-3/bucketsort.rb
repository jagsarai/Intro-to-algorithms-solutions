require_relative 'node'
require_relative 'linked_list'
require 'benchmark'
include Benchmark  

def bucketsort(arr)
    max = arr.max
    n = arr.size 
    bucket_array = Array.new(n)
    divider = ((max + 1)/bucket_array.size.to_f).ceil

    for i in (0..(arr.size - 1)) 
        j = (arr[i]/divider).floor
        if bucket_array[j] != nil
            value = Node.new(arr[i])
            bucket_array[j].add_to_tail(value)
        else
            value = Node.new(arr[i])
            bucket_array[j] = LinkedList.new()
            bucket_array[j].add_to_tail(value)
        end
    end
    arr = []
    for k in (0..(bucket_array.size - 1))
        if bucket_array[k] != nil 
            sort(bucket_array[k])
            add(bucket_array[k], arr)
        end
    end
    arr
end

def sort(list)
    current = list.head
    while current.next != nil 
        if current.next.data && current.data > current.next.data
            temp = current.next.data
            current.next.data = current.data 
            current.data = temp
        end
        current = current.next
    end
end

def add(list, arr)
    current = list.head
    while current != nil 
        arr << current.data
        current = current.next
    end
end

bucketsort([22,45,12,8,10,6,72,81,33,18,50,14])
bucketsort([6,5,4,3,1])
bucketsort([1])
bucketsort([30,45,12,8,21,6,72,81,33,18,50,14,19,3,5,6,7,8,8,8,8])

