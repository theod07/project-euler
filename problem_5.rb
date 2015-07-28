# Project Euler
# Problem 5 - Smallest multiple
# 2520 is the smallest number that can be divided by 
# each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly 
# divisible by all of the numbers from 1 to 20?

def smallest_multiple(max_num)
	number = 1
	x = 1
	while x <= max_num
		if number % x == 0 && x == max_num
			puts "smallest_multiple(#{max_num}) : #{number}"
			return number
		elsif number % x == 0
			x += 1
		else 
			number += 1
			x = 1
		end
	end
end


smallest_multiple(10)
smallest_multiple(20)