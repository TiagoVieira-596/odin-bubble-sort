def bubble_sort (unnorganized_array)
  sorted = false
  until sorted == true
    sorted = true
    organized_array = unnorganized_array.each_with_index do |element, index| 
    next_element = unnorganized_array[index + 1]
      if next_element && element > next_element
        temp_element = element
        unnorganized_array[index] = next_element
        unnorganized_array[index + 1] = temp_element
        sorted = false
      end
    end
  end
  organized_array
end
p bubble_sort([63, 38294, 293, 483, 239, 12, 4, 0, 1, 2, 544, 3, 45, 53, 32])