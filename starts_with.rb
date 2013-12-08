def each_starts_with(array, value)
	array.each do |string|
		if(string[0..(value.length-1)] == value)
			yield string if block_given?
		end
	end
end

#each_starts_with(["abcd", "axyz", "able", "xyzab", "qrst"], "ab") { |s| puts s }

each_starts_with(["abcd", "axyz", "able", "xyzab", "qrst"], "ab") do |s| puts s end
