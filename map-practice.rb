array1 = [1, 5, -1]

def map (array)
  new = []
  i = 0 
  while i < array.length do
    new.push(yield(array[i]))
    # puts new
    i += 1 
  end
  return new
end

def reduce (array, start = 0)
  new = 0 
  total = 0 
  i = 0 
  while i < array.length do
    new = (yield(array[i], total))
    total = new
    #puts new
    #puts total
    i += 1 
  end
  return new
end

#puts map(array1){|n| n * 2}

puts reduce([1, 2, 3, -15]){|memo, n| memo + n}
