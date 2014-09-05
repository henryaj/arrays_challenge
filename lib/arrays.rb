class Array

	def injector(arg, &block)
		
		if !block_given? # assume that arg is an operator	
			mem = self.first
			self.each_with_index do |number, index|
				if index == 0
					next # skips the first number of the array
				else
					a = arg.to_proc # turns the symbol given into a proc, gets called on the next line
					mem = a.call(mem, number)
				end
			end
		
		else
			mem = arg
			self.each do |number|
				mem = yield mem, number
			end
		
		end
		
		mem
	end

end