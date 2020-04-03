require 'prime'

def main(limit)
  primes = Prime.take_while { |p| p < limit/22 } # из условий задачи очевидно,
  # что слагаемых больше 21 (минимум 22), а значит каждое из них не больше 1000000/22
  primes.size.downto(1).each do |i|
    (0..primes.size-i).each do |j|
      sum = primes[j, i].sum
      break if sum > limit
      return sum if sum.prime?
    end
  end
end

time = Time.new
puts main 1000000
print("Spent time: #{Time.new - time}")
