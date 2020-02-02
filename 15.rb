def split_path(i)
  count = 0
  return $passed_pathes[i] if $passed_pathes[i]
  return 1 if i == $endpoint
  count += split_path(i + $size) unless i + $size > $endpoint 
  count += split_path(i + 1) unless i % $size == 0
  $passed_pathes[i] = count
  count
end

def main(size)
  $size = size + 1
  $endpoint = $size**2
  $passed_pathes = {}
  split_path(1)
end

t1 = Time.new
puts main 20
t1 = Time.new - t1
puts("Spent time: #{t1}")
