def main(degree)
  number = 2 ** degree
  number.to_s.split(//).inject(0) { |sum, n| sum + n.to_i }
end

t1 = Time.new
puts main 1000
t1 = Time.new - t1
puts("Spent time: #{t1}")
