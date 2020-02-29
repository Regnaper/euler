def palindrome?(number)
  return true if number == number.reverse
end

def main
  max = 0
  999.downto(100).each do |a|
    999.downto(100).each { |b| max = a * b if a * b > max && palindrome?((a * b).to_s) }
  end
  max
end

t1 = Time.new
puts main
t1 = Time.new - t1
puts("Spent time: #{t1}")
