def prime?(number)
  return false if number < 2
  num_sqrt = Math.sqrt(number).floor
  (2..num_sqrt).each { |num| return false if number % num == 0 }
  true
end

def get_quantity_of_prime(a, b)
  n = 0
  while true do
    return n unless prime?(n**2 + a*n + b)
    n += 1
  end
end

def main(limit)
  max_a_b = [0, 0, 0]
  (-limit...limit).each do |a|
    (-limit..limit).each do |b|
      count = get_quantity_of_prime(a, b)
      max_a_b = count, a, b if max_a_b[0] < count
    end
  end
  max_a_b[1] * max_a_b[2]
end

t1 = Time.new
puts main(1000)
t1 = Time.new - t1
puts("Spent time: #{t1}")
