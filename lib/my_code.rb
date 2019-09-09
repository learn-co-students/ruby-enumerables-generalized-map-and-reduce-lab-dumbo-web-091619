# Your Code Here
def map(array)
  new_array = []
  i = 0 
  while i < array.length 
    new_array.push(yield(array[i]))
    i += 1 
    end
    new_array 
end

def reduce(array, sp=nil)
  if sp
    sum = sp
    i = 0 
  else
    sum = array[0]
    i = 1 
  end
  while i < array.length
  sum = yield(sum, array[i])
  i += 1 
end
sum
end



#sp = starting point. we make second argument optional by giving it  a default value of nil.that means that by default the starting value will not exist.not until we explicitly give it a value.

