# Project Euler
# Problem 9 - Special pythagorean triplet
# A Pythagorean triplet is a set of three natural 
# numbers, a < b < c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet 
# for which a + b + c = 1000.
# Find the product abc.

def special_pythag_trip(target_sum)
	a = 1
	b = 1
	for a in (1..target_sum) do
		for b in (1..target_sum) do
			#puts "a : #{a}"
			#puts "b : #{b}"
			sum_of_squares = a*a + b*b
			c = Math.sqrt(sum_of_squares).to_i
			
			if c*c == sum_of_squares
				triple = [a,b,c] 
				sum = triple.inject(0) {|sum,num| sum + num}
				
				return triple[0]*triple[1]*triple[2] if sum == target_sum
			end
			
		end
	
	end
end

puts special_pythag_trip(1000)