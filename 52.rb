def same?(number, x)
  multiple = (number * x).digits
  number = number.digits
  return true if number.sort == multiple.sort
end

def main()
  (1..).each do |number| # только в Ruby 2.6 и выше
    x = 2
    same?(number, x) ? x += 1 : break while x < 7
    return number if x == 7
  end
end

time = Time.new
puts main
print("Spent time: #{Time.new - time}")
