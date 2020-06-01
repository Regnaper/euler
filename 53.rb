def fact(number)
 return (1..number).reduce(1, :*)
end

def main()
  return (23..100).sum { |n| (1..n).count { |r| (fact(n) / fact(r) / fact(n-r)) > 1000000 } }
end

time = Time.new
puts main
print("Spent time: #{Time.new - time}")
