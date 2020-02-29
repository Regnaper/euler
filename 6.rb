def main(limit)
  sum, sum_of_square = 0, 0
  (1..limit).each { |num| (sum += num; sum_of_square += num**2) }
  sum**2 - sum_of_square
end

t1 = Time.new
puts main(100)
t1 = Time.new - t1
puts("Spent time: #{t1}")
