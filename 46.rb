require 'prime'

def sum_of_prime_and_double_square?(num)
  """
  Проверка, возможности получения числа из суммы простого числа
  и удвоенного квадрата целого числа
  """
  Prime.each(num) do |prime|
    n = Math.sqrt((num - prime) / 2) # находим число, создающее удвоенный квадрат
    return true if n.floor == n # проверяем, что оно целое
  end
end

def main()
  (35..).each do |num|
    return num if num % 2 != 0 && !sum_of_prime_and_double_square?(num)
  end
end

t1 = Time.new
puts main
puts("Spent time: #{Time.new - t1}")
