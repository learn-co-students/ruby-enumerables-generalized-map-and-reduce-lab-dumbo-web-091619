# Your Code Here
def map(array)
  arr = []
  array.each do |n|
    arr << yield(n)
  end
  arr
end

def reduce (array, starting_point = 0)
  val = starting_point
  array.each do |n|
    val = yield(n,val)
    if val == true
      return true
    end
  end
  
  if val == nil
    return false
  else 
    return val
  end
end
