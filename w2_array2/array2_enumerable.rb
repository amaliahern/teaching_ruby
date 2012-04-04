require_relative 'array2'

class Array2
  def each
    for index in (0..length-1) do
      yield  at(index)
    end
  end
end
