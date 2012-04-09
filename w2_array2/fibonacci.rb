class Fibonacci 

  def seq_fibo(limit)
    yield 1
    yield 1
    aux_1 =1
    aux_2 = 1
    for index in (1..limit-1) do
      temp = aux_1
      aux_1 += aux_2
      aux_2 = temp
      yield aux_1
    end
  end
end

