def main()
  (286..).each do |n|
    tri = (n**2 + n) / 2
    pent_n = (1 + Math.sqrt(1 + 24 * tri)) / 6
    hex_n = (1 + Math.sqrt(1 + 8 * tri)) / 4
    return tri if pent_n.floor == pent_n && hex_n.floor == hex_n
  end
end

t1 = Time.new
puts main
puts("Spent time: #{Time.new - t1}")
