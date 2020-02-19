def fact_sum(num)
  num.digits.reduce(0) do |sum, digit|
    digit == 0 ? sum + 1 : sum + (1..digit).inject(1, :*)
  end
end

def main(limit)
  (10..limit).reduce(0) { |sum, num| fact_sum(num) == num ? sum + num : sum }
end

t1 = Time.new
puts main 100000
t1 = Time.new - t1
puts("Spent time: #{t1}")
