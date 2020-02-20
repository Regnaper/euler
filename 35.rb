def circle_prime?(str)
  str.chars.each do |i|
    number = str.to_i
    num_sqrt = Math.sqrt(number).floor
    (2..num_sqrt).each { |num| return false if number % num == 0 }
    str = str[1..-1] + str[0]
  end
  true
end

def main(limit)
  (2...limit).count { |num| circle_prime?(num.to_s) }
end

t1 = Time.new
puts main 1000000
t1 = Time.new - t1
puts("Spent time: #{t1}")
