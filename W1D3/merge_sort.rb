# Merge sort aka divide and conqueri

# A = [2, 3, 1, 6, 5]
# Sort the left half of A and the right half of A, then combine them

def merge_sort(list)

	def merge(left, right)
		
		# create a resulting array 
		res = []

		# counters that move through the left and right arrays from 0..-1
		l = 0 
		r = 0		
		while true 
			break if r >= right.length and l >= left.length
			# step through the left list and compare it to th
			# first item in the right list
			if r >= right.length or (l < left.length and left[l] < right[r])
				res << left[l]
				l += 1
			else
				res << right[r]
				r += 1
			end
		end
		return res
	end

	def merge_sort_iteration(list)
		return list if list.length <= 1
		#split array into halves
		mid = list.length / 2 - 1
		l = merge_sort_iteration(list[0..mid])
		r =  merge_sort_iteration(list[mid+1..-1])
		return merge(l, r)
	end

	merge_sort_iteration(list)
end

merge_sort([2, 3, 1, 6, 5])
