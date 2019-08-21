# Your Code Here
#map negative, same, double, squared
def map(arr)
  new = []
  i = 0
  while i < arr.length do
    new.push(yield(arr[i]))
    i += 1
  end
  return new
end


#reduce total, all true, any true 
def reduce(arr, sp=nil)
  if sp
    total = sp
    i = 0
  else
    total = arr[0]
    i = 1
  end
  while i < arr.length
    total = yield(total, arr[i])
    i += 1
  end
  total
end