require_relative 'fibonacci'

describe Fibonacci do
  let(:fibonacci){Fibonacci.new()}

  describe 'fibonacci seq' do
    it 'returns 1 if limit is 0' do
      seq_fib = ''
      fibonacci.seq_fibo(0){|seq| seq_fib= seq}
      seq_fib.should eq 1
    end

    it 'returns 1,1 if limit is 1' do
      seq_fib = ''
      fibonacci.seq_fibo(1){|seq| seq_fib<< seq.to_s  + ','}
      seq_fib.should eq "1,1,"
    end

    it 'returns 1,1,2 if limit is 2' do
      seq_fib = ''
      fibonacci.seq_fibo(2){|seq| seq_fib<< seq.to_s  + ','}
      seq_fib.should eq "1,1,2,"
    end

    it 'returns 1,1,2,3 if limit is 3' do
      seq_fib = ''
      fibonacci.seq_fibo(3){|seq| seq_fib<< seq.to_s  + ','}
      seq_fib.should eq "1,1,2,3,"
    end
    
    it 'returns 1,1,2,3,5 if limit is 4' do
      seq_fib = ''
      fibonacci.seq_fibo(4){|seq| seq_fib<< seq.to_s  + ','}
      seq_fib.should eq "1,1,2,3,4,"
    end

  end
end
