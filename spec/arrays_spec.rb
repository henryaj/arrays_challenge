require 'arrays'

describe Array do

	describe 'injector' do

		let(:array) { [1,2,3] }

		it 'can be called as a method on an array' do
			expect(array.methods).to include(:injector)
		end

		it 'when given a block with a +, should add the values and iterate' do
			expect(array.injector(0) { |mem,x| mem + x } ).to eq 6
		end

		it 'when given a block with *, should multiply each value with mem and give the result' do
			expect(array.injector(1) { |mem,x| mem * x } ).to eq 6
		end

		it 'when given a block with -, should subtract each value with mem and give the result' do
			expect(array.injector(1) { |mem,x| mem * x } ).to eq 6
		end

	end

end

