def main(limit)
  sequence = []
  (2..limit).each { |a| (2..limit).each { |b| sequence << a**b } }
  sequence.uniq.sort.size
end

t1 = Time.new
puts main(100)
t1 = Time.new - t1
puts("Spent time: #{t1}")
