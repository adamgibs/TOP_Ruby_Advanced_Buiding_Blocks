
def bubble_sort(array)
	swapped = true
	while swapped
		swapped = false
		n = array.length - 2
		for i in 0..n do
			if array[i + 1] < array[i]
				array[i + 1], array[i] = array[i], array[i + 1]
				swapped = true
			end
		end
	end
	array
end
p bubble_sort([4,32,6,5,4]) 
