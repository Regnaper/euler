require 'date'

def main()
  sunday_count = 0
  day = Date.new(1901, 01, 01)
  while day.year < 2001 do
    sunday_count += 1 if (day.mday == 1 && day.sunday?)
    day += 1
  end
  sunday_count
end

t1 = Time.new
puts main
t1 = Time.new - t1
puts("Spent time: #{t1}")
