def optimized_sort(*arrays)
    combined_array = arrays[0]
    for val in arrays[1]
        combined_array.push(val)
    end
 
    merge_sort (combined_array)
end

def merge_sort(collection)
    if collection.length <= 1
      collection
    else
      mid = (collection.length / 2).floor
      left = merge_sort(collection[0..mid - 1])
      right = merge_sort(collection[mid..collection.length])
      merge(left, right)
    end
end
 
def merge(left, right)
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left.first < right.first
      [left.first] + merge(left[1..left.length], right)
    else
      [right.first] + merge(left, right[1..right.length])
    end
end
 
optimized_sort([30,10,40,13,49,13,45,12,56], [12,53,643,678,122,4543,1213])