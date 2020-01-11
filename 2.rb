def main(limit)
  sum = 0
  first = 1
  second = 2
  flag = true
  while second < limit
    sum += second if flag
    first, second = second, first + second
    flag = flag ? false : true
  end
  sum
end

t1 = Time.new
puts main(2000*2000)
t1 = Time.new - t1
puts("Spent time: #{t1}")
