# Your Code Here
def map (myarray)
  new_array = []
  i = 0
  while i < myarray.length do 
    new_array.push(yield(myarray[i]))
    i += 1
  end
  new_array
end

def reduce (myarray, starting = nil)
  if starting
    new_array = starting
    i = 0
  else
    new_array = myarray[0]
    i = 1
  end
  while i < myarray.length do
    new_array = yield(new_array, myarray[i])
    i += 1
  end
  new_array
end