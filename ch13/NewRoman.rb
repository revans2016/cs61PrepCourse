class Integer
	def old_roman_numerals
		integer = self
		roman = ''
		roman = roman + 'M'*(integer/1000)
		roman = roman + 'D'*(integer%1000/500)
		roman = roman + 'C'*(integer%500/100)
		roman = roman + 'L'*(integer%100/50)
		roman = roman + 'X'*(integer%50/10)
		roman = roman + 'V'*(integer%10/5)
		roman = roman + 'I'*(integer%5/1)
		roman
	end
end
puts 2017.old_roman_numerals
