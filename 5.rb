def main(limit)
number = limit
div_range = (limit-1).downto(2)
  while true
    div_flag = true
    div_range.each do |num|
      unless number % num == 0
        div_flag = false
        break
      end
    end
    return number if div_flag
    number += limit
  end
end

t1 = Time.new
puts main(20)
t1 = Time.new - t1
puts("Spent time: #{t1}")
