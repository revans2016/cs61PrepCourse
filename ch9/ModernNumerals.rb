def modern_roman_numerals integer
	thousands = (integer/1000)
	hundreds = (integer%1000/100)
	tens = (integer%100/10)
	ones = (integer%10)

	roman = 'M' * thousands
	if hundreds == 9
		roman = roman + 'CM'
	elsif hundreds == 4 
		roman = roman + 'CD'
	else
		roman = roman + 'D'*(integer%1000/500)
		roman = roman + 'C'*(integer%500/100)
	end

	if tens == 9 
		roman = roman + 'XC'
	elsif tens == 4
		roman = roman + 'XL'
	else
		roman = roman + 'X'*(integer%50/10)
		roman = roman + 'L'*(integer%100/50)
	end

	if ones == 9
		roman = roman + 'IX'
	elsif ones == 4
		roman = roman + 'IV'
	else
		roman = roman + 'V'*(integer%10/5)
		roman = roman + 'I'*(integer%5/1)
	end
	roman
end

puts (modern_roman_numerals(2017))
						
		