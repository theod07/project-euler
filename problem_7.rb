# Project Euler
# Problem 7 - 10001st Prime
# By listing the first six prime numbers: 
# 2, 3, 5, 7, 11, and 13, 
# we can see that the 6th prime is 13.

# What is the 10 001st prime number?

def find_primes(number)
	primes = []
	try_num = 2
	x = 2
	factors = []
	
	while primes.length != number
		#puts "primes : #{primes}"
		#puts "try_num : #{try_num}"
		#puts "x : #{x}"
		#puts "factors : #{factors}"
		
		if factors.length >= 1 && factors[0] != try_num
			#puts "#{try_num} is not prime"
			try_num += 1
			x = 2
			factors = []
		 
		elsif try_num % x == 0 && x == try_num
			#puts "#{try_num} is prime"
			primes << try_num
			try_num += 1
			x = 1
		
		elsif try_num % x == 0
			#puts "#{x} is factor of #{try_num}"
			factors << x
		else
		
		end
		
		x += 1
	end
	puts primes
	return primes
end


find_primes(10001)