# my music_shuffle is supposed to take the last file off of the original array,
# add it to a new array to be the first index,
# then add the remaining old array to the new array
def music_shuffle filenames
	filenames = filenames.sort
	len = filenames.length
	arr = []
	while true 
		thing = filenames.pop
		arr.push(thing)
		arr.push(filenames)
	end
end

songz = ['rr/eee', 'AAA/bbb', 'dog/cat', 'penguin/land']

puts(music_shuffle(songz))