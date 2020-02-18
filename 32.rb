def pandigital(a, b, c)
  arr = a | b | c
  return true if arr.sort == (1..9).to_a && arr.size == (a + b + c).size
  false
end

def main()
  pandigitals = []
  (1..99).each do |a|
    limit = ('9' * (5 - a.digits.size)).to_i
    (123..limit).each do |b|
      c = a * b
      pandigitals << c if pandigital(a.digits, b.digits, c.digits)
    end
  end
  pandigitals.uniq.reduce(0, :+)
end

t1 = Time.new
puts main
t1 = Time.new - t1
puts("Spent time: #{t1}")
