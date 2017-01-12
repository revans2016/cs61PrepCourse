class Integer
	def fact 
		num = self
		if num <=1
			1
		else
			num*(num-1).fact
		end
	end
end

puts 5.fact