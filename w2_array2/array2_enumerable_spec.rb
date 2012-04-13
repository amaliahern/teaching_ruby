require_relative 'array2_enumerable'

describe Array2 do

  let(:array2) { Array2.new(1, 'a', 2, 'b', 3, 'c', 4, 8) }
  let(:array3) { Array2.new(1, 2, 3, 4, 5, 6, 7, 8, 9) }
  let(:array4) { Array2.new(1, 2, 3, 4, 5, 7, 8, 11,12) }
    
  describe '#each' do
    it 'yields each element in the array' do 
      elements = []
      array2.each { |element| elements << element }
      elements.should eq array2.elements
    end
  end

  describe '#all?' do
    it 'returns true if yield evaluates to true for all values' do
      array3.all?{ |element| element < 10 }.should eq true
    end

    
    it 'return false if some element is not true' do
      array4.all?{ |element| element < 10 }.should eq false 
    end
  end

  describe '#any?' do
    it 'return true if at least one yield is evaluates to true ' do
      array4.any?{ |element| element > 10 }.should eq true
    end

    it 'return false if no one in the collection is true' do
      array3.any? { |element| element > 10 }.should eq false
    end

    #let(:array2) { Array2.new(1, nil) }
    #it 'return false if someone in the collection is nil' do
    #  array2.any?{ |element| element == nil }.should eq false
    #end
  end

  describe '#map' do
    it 'return a new array with the result of running yield' do
      new_array=[]
      new_array = array3.map { |element|  element + 1 }
      new_array.elements.should eq [2, 3, 4, 5, 6, 7, 8, 9, 10]
    end
  end

  describe '#flat_map' do
    it 'return a new array with the concatenated results of running block' do
      flat_array=[]
      flat_array = [[1,2],[3,4]].flat_map{ |element| element }
      #I can't use elements :S
      flat_array.should eq [1, 2, 3, 4]
    end
  end

  describe '#count' do
    it 'return the number of elements yielding a true value' do
      array3.count { |element| element % 2 == 0 }.should eq 4
    end
  end

  describe '#detect' do
    it 'return the first yield that is true' do
      array3.detect { |element| element % 5 == 0 }.should eq 5 
    end
  end

  describe '#drop_while' do
    it 'return new array with yields are false' do
      array3.drop_while {|element| element < 4 }.elements.should eq [4, 5, 6, 7, 8, 9]
    end
  end

  describe '#each_cons' do
    it 'returns consecutive arrays with length given as parameter' do
    end
  end

  describe '#each_with_index' do
    it 'returns a new hash with item and index' do
      hash = Hash.new
      array3.each_with_index { |item, index| 
        hash[item] = index 
      }
      hash.first[0].should eq 1
    end
  end

  describe '#each_with_object' do
    it 'returns without object new array with the result yield' do
      array_object = []
      array_object = array3.each_with_object([]) { |element| element  + 1 }
      array_object.elements.should eq [ 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
    end

    it 'returns with object new array with object plus the result yield' do
      array_object = []
      array_object = array3.each_with_object(['a','b']) { |element| element  + 1 }
      array_object.elements.should eq [ 'a', 'b', 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
    end
  end

  describe '#select' do
    it 'returns new array with result yield true' do
      array_select = []
      array_select = array3.select { |element| element % 5 == 0 }
      array_select.elements.should eq [5]
    end
  end

  describe '#find_index' do
    it 'returns nil if yield results false' do
      array3.find_index { |element| element % 7 == 0 and element % 5 == 0 }.should eq nil
    end

    it 'returns index for the first yield results true' do
      array3.find_index { |element|  element % 5 == 0 }.should eq 4 
    end
  end

  describe '#grep' do
    it 'returns empty array if pattern does not find' do
      array_grep = []
      array_grep =  array3.grep(20) { |element| element == 20 }
      array3.grep(20).elements.should eq []
    end 

    it 'returns array with the elements are in the pattern' do
      array_grep = []
      array_grep =  array3.grep(5) { |element| element == 5 }
      array_grep.elements.should eq [5]
    end
  end
end
