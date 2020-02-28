def main(limit)
  str, num = "0", 1
  (str << num.to_s; num += 1) while str.size <= limit
  (0..6).inject(1) { |prod, num| prod * str[10**num].to_i }
end

t1 = Time.new
puts main 1000000
t1 = Time.new - t1
puts("Spent time: #{t1}")
