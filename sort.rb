def funny_sort(array)
	include Enumerable

	@h = Hash.new
	
	array.each do |string|
		temp = 0
		flag = 0
		string.each_char do |i|
			if(/^[\d]+(\.[\d]+){0,1}$/ === i)
				temp = temp*10 + i.to_i
				flag = 1
			elsif temp != 0
				break;
			end	
		end
		if(temp == 0 && flag == 0)
			temp -= 1
		end
		
		@h[string] = temp
	end
	
	@a = Array.new
	@h = @h.sort_by { |key, value| value}.reverse
	@h.each do |key, value| 
		@a << key
	end

	return @a
	
end

def print_array(array)
	puts array
end

array = [ "asd123asd12","213asd21","sadasfa"]
puts "oooooooooooooooooooo"
print_array(array)
puts " "
puts "---------------"
print_array(funny_sort(array))
puts " "
