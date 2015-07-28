# Project Euler
# Problem 2 - Even Fibonacci numbers
# Each new term in the Fibonacci sequence is generated 
# by adding the previous two terms. By starting with 1 
# and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence 
# whose values do not exceed four million, find the sum 
# of the even-valued terms.

fibonacci = [1,2,3,5,8,13,21,34,55,89]
while fibonacci[-1] <= 4000000
	fibonacci << fibonacci[-1] + fibonacci[-2]
end

puts "fibonacci.length : #{fibonacci.length}"

even_fibonacci = []

for num in fibonacci
	if num % 2 == 0
	even_fibonacci << num
	end
end

puts "even_fibonacci : #{even_fibonacci}"

even_sum = even_fibonacci.inject(0) {|sum, num| sum + num}

puts "even_sum : #{even_sum}"
