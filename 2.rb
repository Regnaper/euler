def main(limit)
  sum = 0
  first = 1
  second = 1
  while second < limit
    sum += second if second % 2 == 0
    first, second = second, first + second
  end
  sum
end

t1 = Time.new
puts main(2000*2000)
t1 = Time.new - t1
puts("Spent time: #{t1}")
