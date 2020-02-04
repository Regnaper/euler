def main(num)
  (2..num).reduce(1, :*).to_s.split(//).inject(0) { |sum, n| sum + n.to_i } 
end

t1 = Time.new
puts main 100
t1 = Time.new - t1
puts("Spent time: #{t1}")
