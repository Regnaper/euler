def get_5_degree(number)
  num = number.digits(10).inject(0) { |sum, n| sum + n.to_i**5 }
end

def main(limit)
  (2..limit).inject(0) { |sum, n| get_5_degree(n) == n ? sum + n : sum }
end

t1 = Time.new
puts main(200000)
t1 = Time.new - t1
puts("Spent time: #{t1}")
