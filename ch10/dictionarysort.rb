def dictionary_sort arr
	dict_sort arr, []
end
def dict_sort unsorted, sorted
	if unsorted.length <= 0
		return sorted
	end
	smallest = unsorted.pop
	keep_sorting = []

	unsorted.each do |tester|
		if tester.downcase < smallest.downcase
			keep_sorting.push smallest
			smallest = tester
		else
			keep_sorting.push tester
		end
	end
	sorted.push smallest
	dict_sort keep_sorting, sorted 
end

puts(dictionary_sort(['hi', 'bye', 'trees', 'dogs', 'cats']))