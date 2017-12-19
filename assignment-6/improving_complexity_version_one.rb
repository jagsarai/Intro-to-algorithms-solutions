def poorly_written_ruby(*arrays)
    combined_array = arrays[0]
    for val in arrays[1]
        combined_array.push(val)
    end
 
    sorted_array = [combined_array.delete_at(combined_array.length-1)]
 
    for val in combined_array
      i = 0
      while i < sorted_array.length
        if val <= sorted_array[i]
          sorted_array.insert(i, val)
          break
        elsif i == sorted_array.length - 1
          sorted_array << val
          break
        end
        i+=1
      end
    end
    sorted_array
end

poorly_written_ruby([30,10,40,13,49,13,45,12,56], [12,53,643,678,122,4543,1213])