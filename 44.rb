def pent?(p)
  n = (1 + Math.sqrt(1 + 24 * p)) / 6
  return true if n.floor == n
end

def main()
  diffs = []
  (1..).each do |k|
    p1 = (3 * k**2 - k) / 2
    (k-1).downto(1).each do |j|
      p2 = (3 * j**2 - j) / 2
      return p1 - p2 if pent?(p1 - p2) && pent?(p1 + p2)
    end
  end
end

t1 = Time.new
puts main
puts("Spent time: #{Time.new - t1}")
