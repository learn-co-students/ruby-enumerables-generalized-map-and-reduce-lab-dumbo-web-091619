# Your Code Here
def map(array)
  arr = []
  i = 0 
  while i < array.length 
  arr << yield(array[i])
  i += 1 
end
arr
end

def reduce(array, start = nil)
  if !start  
    n = array[0]
    i = 1
  else 
    n = start
    i = 0 
  end
  while i < array.length
  n = yield(n, array[i])
  i += 1 
end
n
end