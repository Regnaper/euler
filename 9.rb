def main
  (1..998).each do |a|
    (a..998).each do |b|
      c = Math.sqrt(a**2 + b**2)
      return (a*b*c).floor if a+b+c == 1000
    end
  end
end

t1 = Time.new
puts main
t1 = Time.new - t1
puts("Spent time: #{t1}")
