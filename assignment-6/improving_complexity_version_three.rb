def optimized_sort(*arrays)
    combined_array = arrays[0]
    for val in arrays[1]
        combined_array.push(val)
    end
 
    selection_sort(combined_array)
end

def selection_sort(collection)
    length = collection.length

    for i in 0..length - 2
      min_index = i
      for j in (i + 1)...length
        if collection[j] < collection[min_index]
          min_index = j  
        end
      end
 
      tmp = collection[i]
      collection[i] = collection[min_index]
      collection[min_index] = tmp
    end
    collection
end

optimized_sort([30,10,40,13,49,13,45,12,56], [12,53,643,678,122,4543,1213])