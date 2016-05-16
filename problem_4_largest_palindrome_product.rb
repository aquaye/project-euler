# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome?(test_value)
  @test_value = test_value.to_s

  i = 0
  # puts "#{@test_value.to_s.length}"

  while i < @test_value.length do
    if @test_value[i] != @test_value[0 - i - 1]
      # puts "test_value = #{@test_value.to_s}. value at @test_value index = #{i}: #{@test_value[i]} is not equal to value at @test_value index = #{0 - i - 1}: #{@test_value[0 - i - 1]}"
      return false
    else
      # puts "@test_value = #{@test_value.to_s}. value at @test_value index = #{i}: #{@test_value[i]} is equal to value at @test_value index = #{0 - i - 1}: #{@test_value[0 - i - 1]}"
      i += 1
      # puts "i = #{i}"
      # puts "length = #{@test_value.to_s.length}"
    end
  end

  return true
end

# puts is_palindrome?("racecar").to_s.+(" # ~> true")
# puts is_palindrome?("booga").to_s.+(" # ~> false")

# puts "1221 is_palindrome?: #{is_palindrome?(1221)}"
# puts "1234 is_palindrome?: #{is_palindrome?(1234)}"

# puts "racecar is_palindrome?: #{is_palindrome?("racecar")}"
# puts "lambda is_palindrome?: #{is_palindrome?("lambda")}"

def generate_problem_set
  @array = []
  @problem_set = []

  multiple_1 = 999

  while multiple_1.to_s.length == 3 do
    multiple_2 = multiple_1

    while multiple_2.to_s.length == 3 do
      sum = multiple_1 * multiple_2

      @array << sum

      # puts @array.inspect

      multiple_2 -= 1

      # puts multiple_2
    end

    @array.each do |value|
      @problem_set << value
    end

    # puts @array.inspect

    multiple_1 -= 1

    # puts multiple_1
  end

  return @problem_set.uniq.sort.reverse
end

# puts generate_problem_set

# problem_set = generate_problem_set
# puts problem_set.length
# problem_set = problem_set.uniq
# puts problem_set.length
# problem_set = problem_set.sort.reverse
# puts problem_set.inspect
# puts problem_set.length

def test(problem_set)
  @solution = nil

  problem_set.each do |value|
    if is_palindrome?(value)
      @solution = value

      return @solution
    end
  end
end

puts test(generate_problem_set) # answer: 906609
