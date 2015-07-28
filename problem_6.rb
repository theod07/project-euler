# Project Euler
# Problem 6 - Sum square difference
# The sum of the squares of the first ten 
# natural numbers is,

# 1^2 + 2^ ... + 10^2 = 385
# The square of the sum of the first ten 
# natural numbers is,

# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the 
# squares of the first ten natural numbers and 
# the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the 
# squares of the first one hundred natural 
# numbers and the square of the sum.

def sum_of_squares(number)
	i = 1
	sum = 0
	
	while i <= number
		sum = sum + i*i
		i += 1
	end
	return sum
end

def square_of_sum(number)
	i = 1
	sum = 0
	
	while i <= number
		sum = sum + i
		i += 1
	end
	
	square = sum * sum
end



puts sum_of_squares(10)
puts square_of_sum(10)
puts "square_of_sum(100) - sum_of_squares(100) = #{square_of_sum(100) - sum_of_squares(100)}"
