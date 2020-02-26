def pandigital(arr)
  arr_size = arr.inject(0) { |sum, num| sum + num.size }
  return false if arr_size != 9
  union_arr = arr.inject([]) { |un, arr| un | arr }
  return union_arr.join if union_arr.sort == (1..9).to_a && union_arr.size == arr_size
  false
end

def main(limit)
  pan_products = []
  (0..limit).each do |num|
    arr = []
    (1..5).each do |n|
      arr << (num * n).digits.reverse
      if pan = pandigital(arr)
        pan_products << pan
        break
      end
    end
  end
  pan_products.max
end

t1 = Time.new
puts main 9999
t1 = Time.new - t1
puts("Spent time: #{t1}")
