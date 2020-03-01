def count_of_denominators(number)
  count = 0
  (1..Math.sqrt(number).floor).each { |num| count += 2 if number % num == 0 }
  Math.sqrt(number).floor == Math.sqrt(number) ? count - 1 : count
end

def main(limit)
  (1..).each do |n| # 1.. only Ruby 2.6 or higher
    number = n * (n+1) / 2
    return number if count_of_denominators(number) > 500
  end
end

t1 = Time.new
puts main(500)
t1 = Time.new - t1
puts("Spent time: #{t1}")
