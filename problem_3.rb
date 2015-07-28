# Project Euler
# Problem 3 - Largest prime factor
# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 
# 600851475143 ?



def find_factors(number)
	@number = number
	@divisor = 2
	@largest_prime = 1
	@prime_factors = []
	
	puts "\nfind_factors(#{number})"
	
	while @number > 1
		if @number % @divisor == 0
		
			@prime_factors.push(@divisor)
			@number = @number / @divisor
			
			if @divisor > @largest_prime
				@largest_prime = @divisor
			end
			@divisor = 2
		
		else 
			@divisor += 1
		end
	end
	puts "\t@largest_prime : #{@largest_prime}"
	puts "\t@prime_factors : #{@prime_factors}"
	puts "\tproduct  : #{ @prime_factors.inject(1) {|prod, num| prod*num} }"
end

find_factors(24)
find_factors(27)
find_factors(35)
find_factors(48)
find_factors(13195)
find_factors(600851475143)
