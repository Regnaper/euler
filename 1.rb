def main(number)
  sum = 0
  (0...number).each { |num| sum += num if num%3 == 0 or num%5 == 0 }
  sum
end

t1 = Time.new
puts main(1000)
t1 = Time.new - t1
puts("Spent time: #{t1}")
