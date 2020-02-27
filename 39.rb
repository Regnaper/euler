def main(limit)
  """
    Зная, что a^2 + b^2 = c^2 и p = a + b + c, получим формулу (1).
    Если найденный катет является целым числом, то треугольник прямоугольный.
  """
  counts = []
  (3..limit).each do |p|
    counts << (1..p/2).count do |a|
      b = (p**2 - 2.0*a*p)/(2*p - 2*a) # (1)
      b == b.ceil
    end
  end
  counts.index(counts.max) + 3
end

t1 = Time.new
puts main 1000
t1 = Time.new - t1
puts("Spent time: #{t1}")
