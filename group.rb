module Enumerable
	def each_group_by_first_letter
		chars = []
		
		self.map { |value| chars << value[0,1] }
		chars = chars.uniq
		
		array = []
		chars.each do |c|
			self.each do |string|
				if(c == string[0,1])
					array << string
				end
			end
			yield c, array
			array = []
		end
	end
end


x = ["abcd", "axyz", "able", "xyzab", "qrst"]

x.each_group_by_first_letter do |letter, words|
	printf("%s: %s\n", letter, words.join(" "));
end
