def palindrome?(number)
  str_2 = number.to_s(2)
  str_10 = number.to_s
  str_2 == str_2.reverse && str_10 == str_10.reverse ? number : 0
end

def main(limit)
  (1...limit).inject(0) { |sum, num| sum + palindrome?(num) }
end

t1 = Time.new
puts main 1000000
t1 = Time.new - t1
puts("Spent time: #{t1}")
