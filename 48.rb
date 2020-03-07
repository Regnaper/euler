def main(limit)
  ((1..limit).sum { |i| i**i }).to_s[-10..]
end

t1 = Time.new
puts main(1000)
puts("Spent time: #{Time.new - t1}")
