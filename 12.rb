def count_of_denominators(number)
  count = 0
  (1..Math.sqrt(number).floor).each do |num|
    count += 2 if number % num == 0
  end
  count -= 1 if Math.sqrt(number).floor == Math.sqrt(number)
  count
end

def main(count_of_denominators)
  number = 0
  sum = 0
  until count_of_denominators(sum) > count_of_denominators
    number += 1
    sum += number
  end
  sum
end

t1 = Time.new
puts main(500)
t1 = Time.new - t1
puts("Spent time: #{t1}")
