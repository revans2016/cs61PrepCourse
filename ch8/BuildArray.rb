puts 'Enter a word:'
word = []
while true
	if word == ''
		break
	end
	word.push word
end

puts 'Here are the words you entered:'
puts word.sort