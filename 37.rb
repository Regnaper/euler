def prime?(number)
  num_sqrt = Math.sqrt(number).floor
  (2..num_sqrt).each { |num| return false if number % num == 0 }
  true
end

def full_prime?(number)
  # miss numbers, that ends as not prime
  [1, 4, 6, 8, 9, 0].each { |num| return false if number[0] == num.to_s }
  # miss numbers, that starts as not prime
  [1, 2, 4, 5, 6, 8, 9, 0].each { |num| return false if number[-1] == num.to_s }
  return false if not prime? number.to_i # check main number for prime
  (1...number.size-1).each do |i| # check numbers inside main for prime
    return false if not prime? number[i..-1].to_i
    return false if not prime? number[0..-1-i].to_i
  end
  true
end

def main(limit)
  (11...limit).inject(0) { |sum, num| full_prime?(num.to_s) ? sum + num : sum }
end

t1 = Time.new
puts main 1000000
t1 = Time.new - t1
puts("Spent time: #{t1}")
