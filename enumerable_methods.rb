module Enumerable
	def my_each
		n = self.length - 1
		for i in 0..n 
			yield (self[i])
		end
	end


	def my_each_with_index
		n = self.length
		ind = 0
		for i in 0...n 
			yield self[i], i
		end
	end

	def my_select
		array = []
		self.my_each{|i| array << i if yield(i)}
		array

	end

	def my_all?
		x = true
		self.my_each do |i|
			if yield(i)
				x = true
			else
				break x = false
			end
		end
		x
	end

	def my_any?
		x = false
		self.my_each do |i|
			if yield(i)
				break x = true
			end
		end
		x
	end

	def my_none?
		x = true
		self.my_each do |i|
			if yield(i)
				break x = false
			end
		end
		x
	end

	def my_count?
		c = 0
		self.my_each do |i|
			c += 1
		end
		c
	end

	def my_map?
	end

	def my_inject
	end



end

p [1,3,4,7].my_none? {|i| i % 2 == 0}