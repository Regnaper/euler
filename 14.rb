def main(limit)
  counts_for_nums = [1, 1]
  (2...limit).each do |n|
    count = 1
    while n > 1
      n % 2 == 0 ? n /= 2 : n = 3*n + 1
      if counts_for_nums[n]
        count += counts_for_nums[n]
        break
      else
        count += 1
      end
    end
    counts_for_nums << count
  end
  counts_for_nums.index(counts_for_nums.max)
end

t1 = Time.new
puts main(1000000)
t1 = Time.new - t1
puts("Spent time: #{t1}")
