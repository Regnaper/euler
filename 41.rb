require 'prime'

def main()
  9.downto(2).each do |n|
    n.downto(1).to_a.permutation.to_a.each do |num| # перебираем все перестановки от n до 1
      return num.join.to_i if Prime.prime?(num.join.to_i)
    end
  end
end

t1 = Time.new
puts main
t1 = Time.new - t1
puts("Spent time: #{t1}")
