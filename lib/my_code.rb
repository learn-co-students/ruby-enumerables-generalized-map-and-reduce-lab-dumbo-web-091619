# Your Code Here

def map(array)
  newarray = []
  array.length.times do |index|
    newarray << yield(array[index])
  end
  return newarray
  
end


def reduce(array, start=nil)
  if start
    final = start
  else 
  final =array[0]
  array.shift
  end
  array.length.times do |index|
  final  = yield(final, array[index])
  end
  return final
end

