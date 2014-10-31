class Array

	def injector(arg)	
		copy = self.dup
		mem = arg.is_a?(Symbol) ? copy.shift : arg
		if block_given? 
			copy.each { |number| mem = yield(mem, number) }
		else	
			copy.each { |number| mem = mem.send(arg, number) }
		end
		mem
	end
end