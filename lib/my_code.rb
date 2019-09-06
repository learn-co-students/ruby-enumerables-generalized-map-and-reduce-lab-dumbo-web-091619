class my_own_map
  def map_to_negativize(source_array)
    new = []

    i = 0
    while i < source_array.length do
      new.push( source_array[i] * -1 )
      yield source_array[i]
      i += 1
    end
    return new
  end

  def map_to_no_change(source_array)
    new = []

    i = 0
    while i < source_array.length do
      new.push(source_array[i])
      yield source_array[i]
        i += 1
      end
      return new
    end

  def map_to_double(source_array)
    new = []

    i = 0
    while i < source_array.length do
      new.push( source_array[i] * 2 )
      yield source_array[i]
      i += 1
    end
    return new
  end

def map_to_square(source_array)
  new = []

  i = 0
  while i < source_array.length do
    new.push( source_array[i] * source_array[i] )
    yield source_array[i]
    i += 1
  end
  return new
end

class my_own_reduce
  def reduce_to_total(source_array, starting_point)
