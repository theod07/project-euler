# Project Euler
# Problem 12 - Highly divisible triangular number
# The sequence of triangle numbers is generated 
# by adding the natural numbers. So the 7th 
# triangle number would be 
# 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. 

# The first ten terms would be:

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# Let us list the factors of the first seven 
# triangle numbers:

#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number 
# to have over five divisors.

# What is the value of the first triangle number 
# to have over five hundred divisors?


def find_factors(number)
	factors = 0
	num = 1
	
	while num <= number ** 0.5
		factors += 2 if number % num == 0
		num+=1
	end
	return factors
end

puts find_factors(6)
puts find_factors(15)
puts find_factors(28)

def hi_div_triangular_num(num_of_factors)
	tri_num = 1
	index = 1
	
	while find_factors(tri_num) <= num_of_factors
		index += 1
		tri_num = tri_num + index
	end
	puts "tri_num : #{tri_num}"
	puts "index : #{index}"
	puts "factors : #{find_factors(tri_num)}"
	return tri_num 
end

puts hi_div_triangular_num(500)

