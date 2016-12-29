puts 'Enter a starting year:'
starting = gets.chomp.to_i
puts 'Enter an ending year:'
ending = gets.chomp.to_i

puts "These are leap years:"
year = starting 
while year <= ending
	if year % 4 == 0 
		if year % 100 != 0 || year % 400 == 0
		puts year
		end
	end
	year = year + 1  	
end
puts 'Wasn\'t that cool?!'