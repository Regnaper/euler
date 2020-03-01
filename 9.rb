def main
  (1..998).each do |a|
    (a..998).each do |b|
      return (a * b * (1000-a-b)) if Math.sqrt(a**2 + b**2) == 1000 - a - b
    end
  end
end

t1 = Time.new
puts main
t1 = Time.new - t1
puts("Spent time: #{t1}")
