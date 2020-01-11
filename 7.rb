def prime?(number)
  num_sqrt = Math.sqrt(number).floor
  (2..num_sqrt).each { |num| return false if number % num == 0 }
  true
end

def main(limit)
  num = 1
  count = 0
  while count < limit
    num += 1
    count += 1 if prime?(num)
  end
  num
end

t1 = Time.new
puts main(10001)
t1 = Time.new - t1
puts("Spent time: #{t1}")
