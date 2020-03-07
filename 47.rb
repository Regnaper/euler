require 'prime'

def main(size)
  nums = [0, 0, 0, 0]
  (2..).each do |num|
    if Prime.prime_division(num).to_h.keys.uniq.size == size
      nums << num
      nums.shift
      return nums[0] if nums[0] == nums[-1] - 3
    end
  end
end

t1 = Time.new
puts main(4)
puts("Spent time: #{Time.new - t1}")
