require 'prime'

def denominators_by_factorization(number)  
  primes, powers = number.prime_division.transpose
  exponents = powers.map{|i| (0..i).to_a}
  denominators = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
  end
  denominators.size
end

def main(count_of_denominators)
  number = 2
  sum = 3
  until denominators_by_factorization(sum) > count_of_denominators
    number += 1
    sum += number
  end
  sum
end

t1 = Time.new
puts main(500)
t1 = Time.new - t1
puts("Spent time: #{t1}")
