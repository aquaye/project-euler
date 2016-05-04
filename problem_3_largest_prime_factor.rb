# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

public

def is_prime?(number)
  i = 2

  while i < number do
    if number % i == 0
      puts "#{number} is divisible by #{i}"
      return false
    else
      puts "#{number} is not divisible by #{i}"
      i += 1
    end
  end

  return true
end

# puts "is_prime? test"

# puts "13.is_prime?: #{is_prime?(13)}"
# puts "25.is_prime?: #{is_prime?(25)}"
# puts "29.is_prime?: #{is_prime?(29)}"
# puts "763.is_prime?: #{is_prime?(763)}"
# puts "4007.is_prime?: #{is_prime?(4007)}"
# puts "7919.is_prime?: #{is_prime?(7919)}"
# puts "9167.is_prime?: #{is_prime?(9167)}"

def is_factor?(multiple, factor)
  if multiple % factor == 0
    return true
  else
    return false
  end
end

# puts "is_factor? test"

# puts "3 is_factor? 9: #{is_factor?(9,3)}"
# puts "4 is_factor? 14: #{is_factor?(14,4)}"
# puts "25 is_factor? 1985734598734857348573948677250: #{is_factor?(1985734598734857348573948677250,25)}"

def ultimate_test(test_value)
  i = (test_value ** 0.5).to_i + 1

  puts "initial i value: #{i}"

  while i > 0 do
    if is_factor?(test_value, i)
      puts "is_factor?: true. i = #{i}"
      if is_prime?(i)
        puts "is_prime?: true. i = #{i}"
        return i
      else
        puts "is_prime?: false. i = #{i}"
      end

      i -= 1
      puts "decrement i. i = #{i}"
    else
      puts "is_factor?: false. i = #{i}"
      i -= 1
      puts "decrement i. i = #{i}"
    end
  end
end

puts "ultimate_test ... test"

# puts ultimate_test(100)
# # puts ultimate_test(360000)
# puts ultimate_test(123456789)
puts ultimate_test(600851475143)