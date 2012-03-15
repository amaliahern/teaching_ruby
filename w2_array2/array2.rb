class Array2
  attr_reader :elements

  def initialize(*elements)
    @elements = elements
  end

  def length
    @elements.length
  end

  def at(index)
    @elements.at(index)
  end

  def insert(index, object)
    @elements.insert(index, object)
    self
  end

  def delete_at(index)
    @elements.delete_at(index)
  end
  
  def empty
    @elements.length == 0    
  end

  def include(object)
    for i in 0..length - 1
     return true  if at(i) == object 
    end 
    false
  end

  def index(object)
    indice = 0
    while indice < length
      return indice if at(indice) == object
      indice +=1
    end
  end
  
  def clear
    indice = length   
    until indice < 0 
       delete_at(indice)
       indice -=1
    end
   #no return nil!! Return object [] :(  
  end

  def delete(object)
   return nil unless include(object)  

   delete_at(index(object))
   object
  end

  def append(object)
    insert(length, object)
  end

  def concat(other_array) 
    for index in (0..other_array.length-1) do
      self.append(other_array.at(index))
    end    
    self
  end

  def drop_head
    delete_at(0)
  end

  def drop(num_elements)
    index = 0
    while index < num_elements do
      drop_head
      index +=1
    end 
    self
  end

  def compact
    return self unless include(nil)
    index = length 
    until index < 0 
      delete(nil) if at(index) == nil
      index -=1
    end 
  end

  def uniq
    for index in (0..length-1) do
      for index2 in (index..length-1) do
        delete(at(index2)) if at(index) == at(index2)
      end
    end  
    self
  end

  def reverse(reverse_array)
    index =  length - 1
    while index > 0  do
      reverse_array.insert(reverse_array.length,self.at(index))
      index -=1
    end
    reverse_array
  end

end
