def check(num, den)
  return true if num.digits[0] == den.digits[1] && 
                 num.digits[1] * 1.0 / den.digits[0] == num * 1.0 / den
end

def main()
  numerator, denominator = 1, 1
  (10..99).each do |den|
    (10...den).each do |num|
      if check(num, den)
        numerator *= num
        denominator *= den
      end
    end
  end
  denominator / numerator
end

t1 = Time.new
puts main
t1 = Time.new - t1
puts("Spent time: #{t1}")
