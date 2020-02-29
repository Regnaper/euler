def div_check(number)
  $div_range.each { |num| return false unless number % num == 0 }
  true
end

def main(limit)
  number = limit * (limit - 1)
  $div_range = (limit-1).downto(2)
  while true
    return number if div_check(number)
    number += limit * (limit - 1)
  end
end

t1 = Time.new
puts main(20)
t1 = Time.new - t1
puts("Spent time: #{t1}")
