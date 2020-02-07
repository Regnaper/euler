def dividers_sum(number)
  sum = 1
  (2..Math.sqrt(number).ceil).each { |num| sum += (num + number/num) if number % num == 0 }
  sum
end

def main(limit)
  sum = 0
  (1...limit).each do |num|
    friend_num = dividers_sum(num)
    sum += num if (friend_num != num && dividers_sum(friend_num) == num)
  end
  sum
end

t1 = Time.new
puts main(10000)
t1 = Time.new - t1
puts("Spent time: #{t1}")
