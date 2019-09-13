# Your Code Here
def map(array)
    new_array = []
    array.each do |ele|
        new_array << yield(ele)
    end
    new_array
end

def reduce(array, starting_value = nil)
    if starting_value
        sum = starting_value
    else
        sum = array[0]
    end
    if starting_value
        array.each do |ele|
            sum = yield(sum, ele)
        end
    else
        array[1..-1].each do |ele|
            sum = yield(sum, ele)
        end
    end

    sum
end