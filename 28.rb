def main(limit)
  sum, n = 1, 1
  while n < limit do
    n += 2
    sum += 4*n*n - 6*n + 6
  end
  sum
end

t1 = Time.new
puts main(1001)
t1 = Time.new - t1
puts("Spent time: #{t1}")
