# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples_of_three_and_five(limit)
  arr = []
  i = 1

  while i < limit do
    if i % 5 == 0 || i % 3 == 0
      arr << i
      i += 1
    else
      i += 1
    end
    # puts $arr.inspect
  end

  arr_size = arr.count
  # puts arr_size
  total = 0
  i = 0

  while i < arr_size do
    total += arr[i]
    i += 1
  end

  return total
end

puts multiples_of_three_and_five(10)
puts multiples_of_three_and_five(1000)
