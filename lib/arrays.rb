class NewArray < Array

	def hello
		puts hello
	end

	def inject_new(start, operator)
		memo = start
		self.each do |x|
			puts x
			if operator == "+"
				memo = memo + x
			elsif operator == "-"
				memo = memo - x
			elsif operator == "*"
				memo = memo * x
			elsif operator == "/"
				memo = memo / x
			end
		end
	end

end