require_relative 'array2'

class Array2
  def each
    for index in (0..length-1) do
      yield  at(index)
    end
  end

  def all?
   elements.each {|elem| return false unless yield elem }
   true
  end

  def any?
   elements.each {|elem| return true if yield elem }
   false 
  end

  def map
    arr = Array2.new
    elements.each {|elem| arr.append(yield elem) }
    arr
  end

  def flat_map
   flat_array = Array2.new 
   elements.each { |elem| elem.each{ |e| flat_array.append(yield elem)}}
   flat_array
  end

  def count
   total_count = 0 
   elements.each { |elem| total_count +=1 if yield elem }
   total_count
  end 

  def detect
   elements.each { |elem| return elem if yield elem } 
  end

  def drop_while
    arr = Array2.new
    elements.each { |elem| arr.append(elem) unless yield elem }  
    arr
  end

  def each_cons(size)
    
  end

end
