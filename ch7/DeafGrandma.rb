words = ''
while words != 'BYE'
	puts 'HI THERE MY DEAREST GRANDCHILD! GIVE GRANDMA A HUG!'
	words = gets.chomp 
	if words == words.upcase && words != 'BYE'
		puts 'NO, NOT SINCE ' + (rand(1950-1930)+1930).to_s + '!'
	else 
		if words != 'BYE'
			puts 'HUH?! SPEAK UP, SONNY!'
		else
		end
	end
end
puts 'adios!'
