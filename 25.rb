def thousand_digit(number)
  return true if number.to_s.size >= 1000
  false
end

def main()
  count = 1
  first = 1
  second = 1
  while not thousand_digit(first)
    first, second = second, first + second
    count += 1
  end
  count
end

t1 = Time.new
puts main
t1 = Time.new - t1
puts("Spent time: #{t1}")
