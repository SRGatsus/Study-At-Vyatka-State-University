require 'prime'

def divisor(number)
  answer = []
  i = number
  while i > 0
    if number % i == 0
      answer.push( i )
    end
    i -= 1
  end
  answer
end

def divisor_by_factorization(number)  
  primes, powers = number.prime_division.transpose
  exponents = powers.map{|i| (0..i).to_a}
  divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
  end
  divisors.sort
end


begin_time = Time.now
  for num in 1..2792599493716575
    divisor( num )
  end
puts Time.now - begin_time

begin_time = Time.now
  for num in 1..2792599493716575
    divisor_by_factorization( num )
  end
puts Time.now - begin_time