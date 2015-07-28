# Project Euler
# Problem 4 - Largest palindrome product
# A palindromic number reads the same both ways. The 
# largest palindrome made from the product of two 
# 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product 
# of two 3-digit numbers.

def is_palindrome?(number)
	return number.to_s.reverse == number.to_s
end

def max_palindrome(number)
	max_pal = 1
	
	for x in number.downto(1) do
		for y in number.downto(1) do
			prod = x * y
			if is_palindrome?(prod) && prod > max_pal
				max_pal = prod
			end
		end	
	end 
	puts "max_palindrome(#{number}) : #{max_pal}"
	return max_pal
end

max_palindrome(9)
max_palindrome(99)
max_palindrome(999)

#def make_palindrome(right_half,num_digits_is_even)
#	left_half = ''
#	right_half = right_half.to_s
#	i = 0
#	
#	while left_half.length != right_half.length
#		i -= 1
#		#puts "i = #{i}"
#		#puts "left_half : #{left_half}"
#		#puts "right_half: #{right_half}"
#		#puts "right_half[i] : #{right_half[i]}"
#		left_half << right_half[i]
#	end
#		
#	if  num_digits_is_even
#		palindrome = left_half << right_half
#	else
#		palindrome = left_half << right_half[1..-1]
#	end
#end


#def find_palindromes(min, max)
#	num_digits = min.to_s.length
#	index = 0
#	palindromes = []
#	if num_digits%2 == 0
#		right_half = Array.new(num_digits/2,0)
#		right_half[-1] = 1
#	else
#		right_half = Array.new(num_digits/2 +1,0)
#		right_half[-1] = 1
#	end
#
#	while palindromes[-1].to_i <= max
#		
#		puts "right_half : #{right_half}"
#		
#		new_pal = make_palindrome(right_half.join, num_digits % 2 == 0)
#		puts "new_pal : #{new_pal}"
#		palindromes.push(new_pal)
#		
#		if new_pal[-1].to_i == 9
#			puts "DEBUG DEBUG DEBUG"
#			num_digits += 1
#			index = 0
#			if num_digits%2 == 0
#				right_half = Array.new(num_digits/2,0)
#				right_half[-1] = 1
#			else
#				right_half = Array.new(num_digits/2 +1,0)
#				right_half[-1] = 1
#			end
#			
#			puts "num_digits : #{num_digits}"
#			puts "right_half : #{right_half}"
#			puts "index : #{index}"
#		end
#		
#		right_half[index] += 1
#		
#		if right_half[index] == 9
#			index += 1
#		end
#		
#	end
#	
#	if palindromes[-1].to_i > max
#		palindromes.pop 
#	end
#	
#	puts "palindromes : #{palindromes}"
#	return palindromes
#end

is_palindrome?(50)
is_palindrome?(101)

#make_palindrome(123,true)
#make_palindrome(123,false)
#make_palindrome(54321,true)
#make_palindrome(54321,false)

#find_palindromes(50,500)

first_num = 999
second_num = 999
max_product = first_num * second_num
min_product = 111 * 111



