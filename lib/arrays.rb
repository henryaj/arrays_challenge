class Array

	def injector(start, &block)
		mem = start
		self.each do |number|
			yield mem, number
			mem = mem
		end
		mem
	end

end