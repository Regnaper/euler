def main(limit)
  ((0...limit).find_all { |num| num%3 == 0 or num%5 == 0 }).inject(0, :+)
end

t1 = Time.new
puts main(1000)
t1 = Time.new - t1
puts("Spent time: #{t1}")
