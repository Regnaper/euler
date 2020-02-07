def dividers_sum(number)
  sum = 1
  (2..Math.sqrt(number).floor).each { |num| sum += (num + number/num) if number % num == 0 }
  sum -= Math.sqrt(number) if Math.sqrt(number) == Math.sqrt(number).floor
  sum
end

def get_over_nums_array(limit)
  $over_nums = []
  (12..limit-12).each { |num| $over_nums << num if dividers_sum(num) > num }
end

def sum_of_two_overnums?(num)
  $over_nums.each do |over|
   return true if (num >= over + 12 && dividers_sum(num - over) > num - over)
  end
  false
end

def main(limit)
  sum = 0
  get_over_nums_array(limit)
  (1..limit).each { |num| sum += num unless sum_of_two_overnums?(num) }
  sum
end

t1 = Time.new
puts main 28123
t1 = Time.new - t1
puts("Spent time: #{t1}")
