# Your Code Here
def map(array)
  new_array = []
  for i in array do
    new_array.push(yield(i))
  end
  new_array
end 

def reduce (array, starting_point = nil)
  if starting_point
    total = starting_point
    i = 0
  else 
    total = array.first 
    i = 1
  end
  while i < array.length do
    total = yield(total, array[i])
    i += 1
  end
  if total == nil 
    return false
  end 
  total
end 