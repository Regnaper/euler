def prime?(number)
  num_sqrt = Math.sqrt(number).floor
  (2..num_sqrt).each { |num| return false if number % num == 0 }
  true
end

def main(limit)
  num = 2
  sum = 0
  while num < limit
    sum += num if prime?(num)
    num += 1
  end
  sum
end

t1 = Time.new
puts main(2000000)
t1 = Time.new - t1
puts("Spent time: #{t1}")
