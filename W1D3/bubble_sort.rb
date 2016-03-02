# Works by evaluating pairs of values [2, 1, 3, 4, 5]
# ex pair: (1, 2)
# Once the values have been compared ( 2 > 1 ) 
# the position of the largest value is swapped with the smaller value
# [1, 2, 3, 4, 5]
# continue until no more swaps to make

def bubble_sort(list)
	loop do
		# swapped
		swapped = false
		# iterator
		i = 0
		# loop
		while i < list.length - 1 
			# compare first pair of values
			if list[i] > list[i + 1]
				# swap values
				list[i], list[i + 1] = list[i + 1], list[i]
				# swapped
				swapped = true
			end
			i += 1
		end	
		break if not swapped
	end
	list
end

p bubble_sort([2, 1, -1, 9, -2, 5])
p bubble_sort([4, 0, 6, 1, 9, 3])

# Time
# best case: 	O(n)
# worst case:   O(n*2)

# Space complexity: O(1) 
