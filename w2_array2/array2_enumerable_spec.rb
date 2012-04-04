require_relative 'array2_enumerable'

describe Array2 do

  let(:array2) { Array2.new(1, 'a', 2, 'b', 3, 'c', 4, 8) }

  describe '#each' do
    it 'yields each element in the array' do 
      elements = []
      array2.each { |element| elements << element }
      elements.should eq array2.elements
    end
  end
end
