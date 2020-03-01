require 'prime'

def main(limit)
  Prime.each(limit).inject(0, :+)
end

t1 = Time.new
puts main(2000000)
t1 = Time.new - t1
puts("Spent time: #{t1}")
