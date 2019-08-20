# Your Code Here
#map negative, same, double, squared
def map(arr)
  new = []
  i = 0
  while i < arr.length
    new.push(yield(arr[i]))
    i += 1
  end
  return new
end


#reduce total, all true, any true 
def reduce(arr, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = arr[0]
    i = 1
  end
  while i < arr.length
    accum = yield(accum, arr[i])
    i += 1
  end
  accum
end