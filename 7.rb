require 'prime'

def main(limit)
  Prime.first(limit)[-1]
end

t1 = Time.new
puts main(10001)
t1 = Time.new - t1
puts("Spent time: #{t1}")
