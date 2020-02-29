def main(limit)
  fib = [1, 1]
  fib << fib[-1] + fib[-2] while fib[-1] < limit - fib[-2]
  (fib.find_all { |num| num % 2 == 0 }).inject(0, :+)
end

t1 = Time.new
puts main(2000*2000)
t1 = Time.new - t1
puts("Spent time: #{t1}")
