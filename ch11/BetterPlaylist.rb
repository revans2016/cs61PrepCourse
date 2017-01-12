# dive array into two different arrays
# shuffle the two array individually
# join two new arrays
def shuffle arr
	shuf = []
	while arr.length>0
		rand_index = rand(arr.length)
		curr_index = 0
		new_arr = []
		arr.each do |item|
			if curr_index == rand_index
				shuf.push item
			else 
				new_arr.push item
			end
			curr_index = curr_index + 1
		end
		arr = new_arr
	end
	shuf
end


def music_shuffle filenames
	len = filenames.length
	new_array = []
	2.times do 
		thing = filenames.pop
		new_array.push(thing)
	end
	shuffle(filenames)
	shuffle(new_array)
	final_array = filenames + new_array
	filenames = final_array
end

songz = ['rr/eee', 'AAA/bbb', 'dog/cat', 'penguin/land']

puts(music_shuffle(songz))