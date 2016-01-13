
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

def bubble_sort_by(array)
	swapped = true
	while swapped
		swapped = false
		n = array.length - 2
		for i in 0..n do
			y = yield(array[i], array[i + 1]) 
			if y ad> 0
				array[i], array[i + 1] = array[i + 1], array[i]
				swapped = true
			end
			
		end
	end
	array
end
puts bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
	left.length - right.length
end

