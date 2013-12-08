def filter(array_nums, h = 0)
	p array_nums
	puts h
	puts "-----------------------------------------"

	array_nums.each do |num|
		if(h == 0)
			yield num
		else
			ok = false
			h.each do |key, value|
				ok = false
				
				break if (key.to_s == "min" && num < value)
				
				break if (key.to_s == "max" && num > value)
				
				break if (key.to_s == "odd" && (num % 2 == 0))
				
				break if (key.to_s == "even" && (num % 2 != 0))
				
				if(key.to_s == "scale")
					num *= value
				end
				
				ok = true
			end
			if ok
				yield num
			end
		end
	end

end

nums = [6, -5, 319, 400, 18, 94, 11]

filter(nums, :min => 10, :max => 350, :odd => 1, :scale => 2) do |n| puts n end

#filter(nums, :max => 0) {|n| puts n}

#filter(nums) {|n| puts n}
