def reduce(num, den)
  num.digits[1] * 1.0 / den.digits[0] if num.digits[0] == den.digits[1]
end

def gcd(a, b)
  return a if a == b
  a, b = b, a if b > a
  a -= b while a > b 
  gcd(b, a)
end

def main()
  numerator, denominator = 1, 1
  (10..99).each do |den|
    (10...den).each do |num|
      if reduce(num, den) == num * 1.0 / den
        numerator *= num
        denominator *= den
      end
    end
  end
  denominator / gcd(numerator, denominator)
end

t1 = Time.new
puts main
t1 = Time.new - t1
puts("Spent time: #{t1}")
