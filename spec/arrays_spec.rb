require 'arrays'

describe NewArray do

	it 'should be a subclass of Array' do
		expect(NewArray.ancestors).to include(Array)
	end

	it 'should be a subclass of Array' do
		expect(NewArray).to inherit_from(Array)
	end
	
	xit 'should accept an array' do
		a = NewArray.new
		a << [1,2,3,4]
		expect(a.inject_new).to eq [1,2,3,4]
	end

end

