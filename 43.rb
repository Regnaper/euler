require 'prime'

def pan_div_prime?(num)
  return false if num[5] != 0 && num[5] != 5 # исключаем числа в которых d4d5d6 не делится на 5 без остатка
  7.downto(1).each do |n|
    return false if num[n, 3].join.to_i % $primes[n-1] != 0
  end
  true
end

def main()
  $primes = Prime.first(7)
  perms = (0..9).to_a.permutation.to_a.map { |num| num.join.to_i if pan_div_prime?(num) }
  perms.compact.sum
end

t1 = Time.new
puts main
t1 = Time.new - t1
puts("Spent time: #{t1}")
