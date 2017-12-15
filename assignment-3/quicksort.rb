require 'benchmark'
include Benchmark  

def quicksort(array, p=0, r=array.length-1)
    if p < r
       q = partition(array, p, r);
       quicksort(array, p, q-1);
       quicksort(array, q+1, r);
    end
end

def partition(array, p, r)
    q = p
    for i in (p...r)
        if array[i] <= array[r] 
           swap(array, i, q)
            q += 1
        end
    end
    swap(array, r, q);
    return q;
end

def swap (array, firstIndex, secondIndex)
    temp = array[firstIndex]
    array[firstIndex] = array[secondIndex]
    array[secondIndex] = temp
end

quicksort([2,1,0,4,10,8,6,7,3])