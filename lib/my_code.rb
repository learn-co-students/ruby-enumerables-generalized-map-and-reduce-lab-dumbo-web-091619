# Your Code Here
def map(source_array)
  dest_array = []
  for element in source_array
    dest_array << yield(element)
  end
  
  return dest_array
end

def reduce(source_array, starting_point = 0)
  for element in source_array
   starting_point = yield(element, starting_point)
  end
  
  return !starting_point ? !!starting_point : starting_point
end