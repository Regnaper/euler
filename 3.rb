def prime?(number)
  num_sqrt = Math.sqrt(number).floor
  (2..num_sqrt).each { |num| return false if number % num == 0 }
  true
end

def main(number)
  num = 2
  number % num == 0 && prime?(num) ? number /= num : num += 1 while num <= number
  num
end

t1 = Time.new
puts main(600851475143)
t1 = Time.new - t1
puts("Spent time: #{t1}")
