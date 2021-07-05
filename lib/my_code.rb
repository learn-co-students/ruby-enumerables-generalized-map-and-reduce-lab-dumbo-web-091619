
def map(array,&block); 
  array.map(&block); 
  end

def reduce(array, starting_point = nil, &block)
  if starting_point.nil?
    array.reduce(&block)
  else
    array.reduce(starting_point, &block)
  end
end