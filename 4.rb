def palindrome?(number)
  str = number.to_s
  return true if str == str.reverse
  false
end

def main
  max = 0
  (1..999).each do |a|
    (1..999).each do |b|
      c = a * b
      max = c if c > max && palindrome?(c)
    end
  end
  max
end

t1 = Time.new
puts main
t1 = Time.new - t1
puts("Spent time: #{t1}")
