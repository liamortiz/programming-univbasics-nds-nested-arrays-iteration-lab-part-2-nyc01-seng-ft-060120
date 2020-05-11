def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  row = 0
  low_temps = []
  while row < src.length do
    col = 0
    prev_number = src[0][0]
    
    while col < src[row].length do
      next_number = src[row][col]
      if next_number < prev_number
        prev_number = next_number
      end
      col += 1
    end
    
    row += 1
    low_temps << prev_number
  end
  return low_temps
end