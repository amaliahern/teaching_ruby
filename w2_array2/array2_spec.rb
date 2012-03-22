require_relative 'array2'

describe Array2 do

  let(:array2) { Array2.new(1, 'a', 2, 'b', 3, 'c', 4, 8) }

  describe '::new' do
    it 'is created with a set of elements' do
      #Array2.new(1, 2, 3).elements.should eq [1, 2, 3]
       Array2.new(1, 2, 3).elements.should eq [1, 2, 3]
    end

    it 'is created with no elements if none specified' do
      Array2.new.elements.should eq []
    end

   it 'handles any number of elements' do
      Array2.new(1, 2, 3, 4, 5).elements.should eq [1, 2, 3, 4, 5]
    end
  end

  describe '#length' do
    it 'returns the length of the array' do
      array2.length.should eq 8
    end
  end

  describe '#at index' do
    it 'returns the element if there is an element with that index' do
      array2.at(-1).should eq 8
    end

    it 'returns nil if there is no element with that index' do
      array2.at(10).should be_nil
    end
  end

  describe '#insert index, element' do
    let(:object) { 'new element' }

    before{ array2.insert(7, object) }

    it 'inserts the object at the given position' do
      array2.at(7).should be object
    end

    it 'shifts the elements from index to the last one to the right' do
      array2.at(6).should eq 4
      array2.at(8).should eq 8
      array2.at(7).should eq 'new element'
    end

    it 'returns self' do
      array2.insert(7, object).should be array2
    end
  end

  describe '#delete_at index' do
    it 'deletes the element at given position if any' do
      array2.delete_at(0)
      array2.at(0).should eq 'a'
      array2.length.should eq 7
    end
    
    it 'returns the element if there was an element with that index' do
      array2.delete_at(0).should eq 1
    end

    it 'returns nil if ther was no element with that index 'do
      array2.delete_at(99).should eq nil
    end

  end

  describe '#empty' do
    it 'returns false if there are elements' do
      array2.empty?.should eq false
    end

    it 'returns true if no elements' do
      array2 = Array2.new()
      array2.empty?.should eq true
    end

  end 

  describe  '#include' do

    it 'return true if element given is in array' do
      array2.include('a').should eq true 
    end

    it 'return false if element given is not in array' do
      array2.include('d').should eq false
    end
  end

  describe '#index' do

    it 'return index if element given is in array' do
      array2.at(3).should eq 'b'
      array2.index('b').should eq 3 
    end

    it 'return nil if element given is not in array' do
      array2.index('z').should eq nil 
    end
  end

  describe '#clear' do
    it 'deletes all elements if array has got some elements' do
      array2.clear()
      array2.should be_empty
    end

    it 'returns self' do
      array2.clear.should be array2
    end
  end
  

  describe '#delete' do
    it 'deletes an element if array contains it' do
      array2.at(1).should eq 'a'
      array2.length.should eq 8
      array2.delete('a')
      array2.length.should eq 7
      array2.at(1).should eq 2
    end

    it 'returns nil if no exists element in array' do
      array2.delete('z').should eq nil
    end
  end


  describe '#concat' do
    it 'returns original array after append it in other object array' do
      other_array2 = Array2.new('z',9)
      array2.concat(other_array2).should eq array2
      array2.elements.should eq [1,'a',2,'b',3,'c',4,8,'z',9]
    end
  end


  describe '#drop' do
    it 'return original array without the first n elements have been deleted' do
      array2.drop(4).should eq array2
      array2.length.should eq 4
      array2.elements.should eq [3,'c',4,8]
    end
  end

  describe '#compact' do
  let(:array3) { Array2.new(nil, nil, nil, 4) }
     
    it 'return array without nil elements' do
      array3.compact
      array3.length.should eq 1 
      array3.elements.should eq [4]
    end
  end

  describe '#uniq' do
  let(:array2) { Array2.new(1,1,1,1) }
    it 'return new array without duplicate elements' do
      array2.uniq
      array2.length.should eq 1 
      array2.elements.should eq [1]
    end
  end

  describe '#reverse' do
    it 'return new array with elements in inverse orden' do
      array2.reverse.elements.should eq [8, 4,'c' ,3, 'b',2 ,'a', 1]
      array2.length.should eq 8
    end
  end


  describe '#joinseparator' do
    it 'return new string with elements array separated by separador' do
      array2.join_separator(",").should eq "1,a,2,b,3,c,4,8" 
    end
  end


  describe '#first' do
    let(:array3) {Array2.new()}
    it 'return nil if array is empty' do
      array3.first(1).should be nil
    end

    it 'return first element of array if array is not empty and n =1' do
      array2.first(1).should eq 1 
    end

    it 'return first elements of array if array is not empty' do
      array2.first(2).elements.should eq [1,'a']
    end
  end 


  describe '#last' do
    let(:array3) {Array2.new()}
    it 'return nil if array is empty' do
      array3.last(1).should be nil
    end

    it 'return last element of array if array is not empty and n =1' do
      array2.last(1).should eq 8 
    end

    it 'return last elements of array if array is not empty' do
      array2.last(2).elements.should eq [8,4]
    end
  end 


  describe '#rotate' do
    it 'return new array with elements n times shifted to left and append in the array' do
      array2.rotate(1).elements.should eq ['a',2,'b',3,'c',4,8,1]
    end

    let(:array3) {Array2.new()}
    it 'return nil if array is empty' do
      array3.rotate(1).should be nil
    end
  end

end
