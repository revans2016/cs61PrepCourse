def english_number number 
	if number < 0 
		return 'Please enter a number that isn\'t negative.'
	end
	if number == 0 
		return 'zero'
	end

	num_string =''
	ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
	thous = ['thousand']

	#left is what I still have left to rewrite
	#write is what I am currently working with 
	left = number 
	write = left/1000
	left = left - write*1000

	if write > 0 
		thousands = english_number write
		num_string = num_string + thousands + ' thousand'
		if left > 0
			num_string = num_string + ' '
		end
	end 

	write = left/100
	left = left - write*100

	if write >0 
		hundreds = english_number write
		num_string = num_string + hundreds + ' hundred'
		if left >0
			num_string = num_string + ' '
		end
	end

	write = left/10
	left = left-write*10

	if write >0 
		if ((write == 1 ) and (left>0))
			num_string = num_string + teenagers[left-1]
			left =0
		else
			num_string = num_string + tens_place[write-1]
		end

		if left >0 
			num_string = num_string + '-'
		end
	end

	write = left 
	left = 0 

	if write >0 
		num_string = num_string + ones_place[write-1]
	end
	num_string
end

starting_num = 5
current_number = starting_num
while current_number > 2
	puts english_number(current_number).capitalize + ' bottles of beer on the wall, ' + english_number(current_number) + ' bottles of beer!'
	current_number = current_number - 1 
	puts 'Take one down, pass it around, ' + english_number(current_number) + ' bottles of beet on the wall!'
end

puts 'Two bottles of beer on the wall, two bottles of beer!'
puts 'Take one down, pass it around, one bottle of beer on the wall!'
puts 'One bottle of beer on the wall, one bottle of beer!'
puts 'Take one down, pass it around no more bottles of beer on the wall!'
puts 'No more bottles of beer on the wall, no more bottles of beer.' 
puts 'Go to the store and buy some more, 5 bottles of beer on the wall.'