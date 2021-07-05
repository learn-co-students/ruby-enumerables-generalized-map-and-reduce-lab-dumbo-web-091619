# Your Code Here

def map(array)
  new_arr = array.map { |e| yield(e) }
  p new_arr
end

def reduce(array, start = 0)
  array.all? { |e| e.is_a?(Integer) } ? val = array.reduce(start) { |e, n| yield(e, n) } : val = array.reduce() { |e, n| yield(e, n) }
  p val
end
