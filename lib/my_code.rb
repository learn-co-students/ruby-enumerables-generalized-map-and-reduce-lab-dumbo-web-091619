# Your Code Here

def map(array)
  
  new_array = []
  i = 0 
  
  while i < array.length do
    new_array.push(yield(array[i]))
    i += 1
  end
  return new_array
end


def reduce(array, value=nil)
  
  if value
    num = value
    i = 0 
    
  else
    num = array[0]
    i = 1 
    
  end
  
  while i < array.length 
    num = yield(num, array[i])
    i += 1 
    
  end
  
  num
  
end