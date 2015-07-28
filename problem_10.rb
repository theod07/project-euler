# Project Euler
# Problem 10 - Summation of primes
# The sum of the primes below 10 is 
# 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

def is_prime?(number)
	int = 2
	
	while int <= (number ** 0.5) + 1
		return false if number % int == 0 && int != number
		int += 1
	end
	return true
end

def sum_of_primes(upbound)
	primes_sum = 0
	num = 2
	
	while num < upbound
		primes_sum = primes_sum + num if is_prime?(num)
		num += 1
	end
	
	return primes_sum
end


puts is_prime?(5)
puts is_prime?(7)
puts is_prime?(2000000)
puts sum_of_primes(2000000)
