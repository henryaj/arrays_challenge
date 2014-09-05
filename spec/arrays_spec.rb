require 'arrays'

describe Array do

	describe 'injector' do

		let(:array) { [1,2,3,4,5] }

		context 'using blocks' do

		it 'can be called as a method on an array' do
			expect(array.methods).to include(:injector)
		end

		it 'when given a block with +, should add the values and iterate' do
			expect(array.injector(0) { |mem,x| mem + x } ).to eq(array.inject(0) { |mem,x| mem + x } )
		end

		it 'when given a block with *, should multiply each value with mem and give the result' do
			expect(array.injector(1) { |mem,x| mem * x } ).to eq(array.inject(1) { |mem,x| mem * x } )
		end

		it 'when given a block with -, should subtract each value with mem and give the result' do
			expect(array.injector(0) { |mem,x| mem - x } ).to eq(array.inject(0) { |mem,x| mem - x } )
		end

		it 'when given a block with /, should divide each value with mem and give the result' do
			expect(array.injector(0) { |mem,x| mem / x } ).to eq(array.inject(0) { |mem,x| mem / x } )
		end

	end

	context 'using symbols' do

		it 'when given :+ as an argument, should add' do
			expect(array.injector(:+)).to eq(array.inject(:+))
		end

		it 'when given :- as an argument, should subtract' do
			expect(array.injector(:-)).to eq(array.inject(:-))
		end

		it 'when given :* as an argument, should multiply' do
			expect(array.injector(:*)).to eq(array.inject(:*))
		end

		it 'when given :/ as an argument, should divide' do
			expect(array.injector(:/)).to eq(array.inject(:/))
		end

	end

	end

end

